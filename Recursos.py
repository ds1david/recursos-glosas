# -*- coding: utf-8 -*-
import BD as banco_dados
from Emails import *
from PortalCassi import *
from Logger import *

logger = Logger(__name__)

class Recursar(object):

    def EfetuarRecursos(self):
        banco_dados.Conectar()

        try:
            comando_sql = 'SELECT DISTINCT RF.NUM_CARTA_REMESSA \
                           FROM   CAS_RECURSOS_GLOSAS RG \
                           ,      CAS_RETORNOS_FINANCEIROS RF \
                           WHERE  RG.SEQ_RETORNO_FINANCEIRO = RF.SEQ_RETORNO_FINANCEIRO \
                           AND    RG.STATUS_RECURSO         = \'P\''
            banco_dados.Executar(comando_sql)
            cartas_remessas = banco_dados.BuscarTodos()

            if len(cartas_remessas) != 0:
                portal_cassi = PortalCassi()

                try:
                    portal_cassi.Inicializar()
                    portal_cassi.Logar()

                    for carta_remessa in cartas_remessas:
                        variaveis_bind = { 'numero_carta_remessa' : carta_remessa[0] }
                        comando_sql = 'SELECT RF.SEQ_RETORNO_FINANCEIRO \
                                      ,      RG.SEQ_RECURSO_GLOSA \
                                      ,      RF.NUM_CARTA_REMESSA \
                                      ,      RF.NUMERO_CUPOM_SAIDA \
                                      ,      RF.CODIGO_EAN_ENVIADO \
                                      ,      RG.DESCRICAO_RECURSO \
                                      FROM   CAS_RECURSOS_GLOSAS RG \
                                      ,      CAS_RETORNOS_FINANCEIROS RF \
                                      WHERE  RG.SEQ_RETORNO_FINANCEIRO = RF.SEQ_RETORNO_FINANCEIRO \
                                      AND    RG.STATUS_RECURSO         = \'P\' \
                                      AND    RF.NUM_CARTA_REMESSA      = :numero_carta_remessa'
                        banco_dados.Executar(comando_sql, variaveis_bind)
                        recursos_glosas = banco_dados.BuscarTodos()

                        if len(recursos_glosas) != 0:
                            log_carta_remessa = portal_cassi.SelecionarCartaRemessa(numero_carta_remessa=carta_remessa[0])
                            if log_carta_remessa == None:
                                logs_recursos = []
                                for recurso_glosa in recursos_glosas:
                                    log_recurso = portal_cassi.Recursar(numero_cupom_fiscal=recurso_glosa[3], ean_enviado=recurso_glosa[4], descricao_recurso=recurso_glosa[5])

                                    log_recurso.update({ 'seq_retorno_financeiro' : recurso_glosa[0],
                                                         'seq_recurso_glosa'      : recurso_glosa[1] } )

                                    comando_sql = 'UPDATE CAS_RECURSOS_GLOSAS RG \
                                                   SET    RG.DTHR_RECURSO           = SYSDATE \
                                                   ,      RG.STATUS_RECURSO         = :status_recurso \
                                                   ,      RG.LOG_RECURSO            = :log_recurso \
                                                   ,      RG.PRINT_RECURSO          = :print_recurso \
                                                   WHERE  RG.SEQ_RETORNO_FINANCEIRO = :seq_retorno_financeiro \
                                                   AND    RG.SEQ_RECURSO_GLOSA      = :seq_recurso_glosa'
                                    banco_dados.Executar(comando_sql, log_recurso, True)
                                    logs_recursos.append(log_recurso)

                                if len(logs_recursos) != 0:
                                    log_protocolo = portal_cassi.FinalizarProtocolo(numero_carta_remessa=carta_remessa[0])

                                    if log_protocolo['status_protocolo'] == 'F':
                                        for log_recurso in logs_recursos:
                                            if log_recurso['status_recurso'] == 'F':
                                                variaveis_bind = { 'numero_protocolo'       : log_protocolo['numero_protocolo'],
                                                                   'seq_retorno_financeiro' : log_recurso['seq_retorno_financeiro'],
                                                                   'seq_recurso_glosa'      : log_recurso['seq_recurso_glosa'] }
                                                comando_sql = 'UPDATE CAS_RECURSOS_GLOSAS RG \
                                                               SET    RG.NUMERO_PROTOCOLO_RECURSO = :numero_protocolo \
                                                               WHERE  RG.SEQ_RETORNO_FINANCEIRO   = :seq_retorno_financeiro \
                                                               AND    RG.SEQ_RECURSO_GLOSA        = :seq_recurso_glosa'
                                                banco_dados.Executar(comando_sql, variaveis_bind, True)

                                    else:
                                        EnviarEmailERRO(log_protocolo['mensagem_protocolo'])

                            else:
                                if 'Protocolo prescrito' in log_carta_remessa:
                                    logs_recursos = []
                                    log_recurso = { 'status_recurso' : 'E',
                                                    'log_recurso'    : log_carta_remessa,
                                                    'print_recurso'  : None }
                                    for recurso_glosa in recursos_glosas:
                                        log_recurso.update({ 'seq_retorno_financeiro' : recurso_glosa[0],
                                                             'seq_recurso_glosa'      : recurso_glosa[1] } )

                                        comando_sql = 'UPDATE CAS_RECURSOS_GLOSAS RG \
                                                       SET    RG.DTHR_RECURSO           = SYSDATE \
                                                       ,      RG.STATUS_RECURSO         = :status_recurso \
                                                       ,      RG.LOG_RECURSO            = :log_recurso \
                                                       ,      RG.PRINT_RECURSO          = :print_recurso \
                                                       WHERE  RG.SEQ_RETORNO_FINANCEIRO = :seq_retorno_financeiro \
                                                       AND    RG.SEQ_RECURSO_GLOSA      = :seq_recurso_glosa'
                                        banco_dados.Executar(comando_sql, log_recurso, True)
                                        logs_recursos.append(log_recurso)

                                EnviarEmailERRO(log_carta_remessa)

                except Exception as e:
                    raise

                finally:
                    portal_cassi.Finalizar()

        except Exception as e:
            raise

        finally:
            banco_dados.Desconectar()


if __name__ == "__main__":
    try:
        app = Recursar()
        app.EfetuarRecursos()

    except Exception as e:
        logger.error(e, exc_info=True)
        EnviarEmailERRO(traceback.format_exc())
