# -*- coding: utf-8 -*-
import datetime
import xlrd
import BD as banco_dados
from Logger import *

logger = Logger(__name__)


class Arquivos(object):

    sequencia_arquivo = None
    nome_arquivo = None
    mimetype_arquivo = None
    charset_arquivo = None
    blob_arquivo = None
    dthr_importacao_arquivo = None
    usuario_importacao_arquivo = None

    def __init__(self):
        self.sequencia_arquivo = None
        self.nome_arquivo = None
        self.mimetype_arquivo = None
        self.charset_arquivo = None
        self.blob_arquivo = None
        self.dthr_importacao_arquivo = None
        self.usuario_importacao_arquivo = None

    def Selecionar(self, sequencia_arquivo):
        banco_dados.Conectar()

        try:
            variaveis_bind = { 'sequencia_arquivo' : sequencia_arquivo }
            comando_sql = 'SELECT ARG.SEQUENCIA_ARQUIVO \
                           ,      ARG.NOME_ARQUIVO \
                           ,      ARG.MIMETYPE_ARQUIVO \
                           ,      ARG.CHARSET_ARQUIVO \
                           ,      ARG.BLOB_ARQUIVO \
                           ,      ARG.DTHR_IMPORTACAO_ARQUIVO \
                           ,      ARG.USUARIO_IMPORTACAO_ARQUIVO \
                           FROM   CAS_ARQUIVOS_REC_GLOSAS ARG \
                           WHERE  ARG.SEQUENCIA_ARQUIVO             = :sequencia_arquivo \
                           AND    (ARG.STATUS_PROCESSAMENTO_ARQUIVO IS NULL OR \
                                   ARG.STATUS_PROCESSAMENTO_ARQUIVO = \'P\')'
            banco_dados.Executar(comando_sql,variaveis_bind)
            arquivo_recurso = banco_dados.BuscarUm()

            if arquivo_recurso != None:
                self.sequencia_arquivo = arquivo_recurso[0]
                self.nome_arquivo = arquivo_recurso[1]
                self.mimetype_arquivo = arquivo_recurso[2]
                self.charset_arquivo = arquivo_recurso[3]
                self.blob_arquivo = arquivo_recurso[4].read()
                self.dthr_importacao_arquivo = arquivo_recurso[5]
                self.usuario_importacao_arquivo = arquivo_recurso[6]

        except Exception as e:
            logger.error(e, exc_info=True)
            raise

        finally:
            banco_dados.Desconectar()

    def Processar(self):
        banco_dados.Conectar()

        try:
            arquivo_excel = xlrd.open_workbook(file_contents = self.blob_arquivo)
            planilha_excel = arquivo_excel.sheet_by_index(0)

            for numero_linha in range(1, planilha_excel.nrows):
                variaveis_bind_planilha = { 'numero_carta_remessa' : planilha_excel.cell(numero_linha, 0).value,
                                            'numero_guia'          : planilha_excel.cell(numero_linha, 1).value,
                                            'numero_autorizacao'   : planilha_excel.cell(numero_linha, 2).value,
                                            'numero_cupom_fiscal'  : planilha_excel.cell(numero_linha, 6).value,
                                            'data_atendimento'     : str(datetime.datetime(*xlrd.xldate_as_tuple(planilha_excel.cell(numero_linha, 7).value, arquivo_excel.datemode))),
                                            'ean_enviado'          : planilha_excel.cell(numero_linha, 10).value,
                                            'valor_apresentado'    : planilha_excel.cell(numero_linha, 13).value }

                comando_sql = 'SELECT RF.SEQ_RETORNO_FINANCEIRO \
                               FROM   CAS_RETORNOS_FINANCEIROS RF \
                               WHERE  RF.NUM_CARTA_REMESSA  = :numero_carta_remessa \
                               AND    RF.NUMERO_GUIA        = :numero_guia \
                               AND    RF.NUMERO_AUTORIZACAO = :numero_autorizacao \
                               AND    RF.NUMERO_CUPOM_SAIDA = :numero_cupom_fiscal \
                               AND    RF.DATA_ATENDIMENTO   = TRUNC(TO_DATE(:data_atendimento,\'YYYY-MM-DD HH24:MI:SS\')) \
                               AND    RF.CODIGO_EAN_ENVIADO = :ean_enviado \
                               AND    RF.VALOR_APRESENTADO  = :valor_apresentado'
                banco_dados.Executar(comando_sql,variaveis_bind_planilha)
                retorno_financeiro = banco_dados.BuscarUm()

                if retorno_financeiro == None:
                    variaveis_bind_log = variaveis_bind_planilha
                    variaveis_bind_log.update({ 'sequencia_arquivo'        : self.sequencia_arquivo,
                                                'numero_linha'             : numero_linha,
                                                'status_log_processamento' : 'E',
                                                'log_processamento'        : u'Não foi possível encontrar glosa equivalente aos parâmetros do arquivo de recursos!' })
                    comando_sql = 'INSERT INTO CAS_LOG_PROC_ARQ_REC_GLOSAS(SEQUENCIA_ARQUIVO \
                                   ,                                       NUMERO_LINHA \
                                   ,                                       NUMERO_CARTA_REMESSA \
                                   ,                                       NUMERO_GUIA \
                                   ,                                       NUMERO_AUTORIZACAO \
                                   ,                                       NUMERO_CUPOM_FISCAL \
                                   ,                                       DATA_ATENDIMENTO \
                                   ,                                       CODIGO_EAN_ENVIADO \
                                   ,                                       VALOR_APRESENTADO \
                                   ,                                       STATUS_LOG_PROCESSAMENTO \
                                   ,                                       LOG_PROCESSAMENTO) \
                                   VALUES                                 (:sequencia_arquivo \
                                   ,                                       :numero_linha \
                                   ,                                       :numero_carta_remessa \
                                   ,                                       :numero_guia \
                                   ,                                       :numero_autorizacao \
                                   ,                                       :numero_cupom_fiscal \
                                   ,                                       TRUNC(TO_DATE(:data_atendimento,\'YYYY-MM-DD HH24:MI:SS\')) \
                                   ,                                       :ean_enviado \
                                   ,                                       :valor_apresentado \
                                   ,                                       :status_log_processamento \
                                   ,                                       :log_processamento)'
                    banco_dados.Executar(comando_sql, variaveis_bind_log)

                else:
                    variaveis_bind_recurso = { 'seq_retorno_financeiro'   : retorno_financeiro[0] }
                    comando_sql = 'SELECT RG.SEQ_RECURSO_GLOSA \
                                   ,      RG.DESCRICAO_RECURSO \
                                   ,      RG.STATUS_RECURSO \
                                   FROM   CAS_RECURSOS_GLOSAS RG \
                                   WHERE  RG.SEQ_RETORNO_FINANCEIRO = :seq_retorno_financeiro \
                                   AND    RG.STATUS_RECURSO         <> \'E\''
                    banco_dados.Executar(comando_sql, variaveis_bind_recurso)
                    recurso_glosa = banco_dados.BuscarUm()

                    if recurso_glosa == None:
                        if planilha_excel.cell(numero_linha, 24).value in ['Sim', 'SIM', 'S', 's']:
                            variaveis_bind_recurso.update({ 'dthr_solicitacao_recurso'    : self.dthr_importacao_arquivo,
                                                            'usuario_solicitacao_recurso' : self.usuario_importacao_arquivo,
                                                            'descricao_recurso'           : planilha_excel.cell(numero_linha, 25).value,
                                                            'status_recurso'              : 'P' })
                            comando_sql = 'INSERT INTO CAS_RECURSOS_GLOSAS(SEQ_RETORNO_FINANCEIRO \
                                           ,                               DTHR_SOLICITACAO_RECURSO \
                                           ,                               USUARIO_SOLICITACAO_RECURSO \
                                           ,                               DESCRICAO_RECURSO \
                                           ,                               STATUS_RECURSO) \
                                           VALUES                         (:seq_retorno_financeiro \
                                           ,                               :dthr_solicitacao_recurso \
                                           ,                               :usuario_solicitacao_recurso \
                                           ,                               :descricao_recurso \
                                           ,                               :status_recurso)'
                            banco_dados.Executar(comando_sql, variaveis_bind_recurso)

                            variaveis_bind_log = variaveis_bind_planilha
                            variaveis_bind_log.update({ 'sequencia_arquivo'        : self.sequencia_arquivo,
                                                        'numero_linha'             : numero_linha,
                                                        'status_log_processamento' : 'I',
                                                        'log_processamento'        : u'Incluída nova solicitação de recurso!' })
                            comando_sql = 'INSERT INTO CAS_LOG_PROC_ARQ_REC_GLOSAS(SEQUENCIA_ARQUIVO \
                                           ,                                       NUMERO_LINHA \
                                           ,                                       NUMERO_CARTA_REMESSA \
                                           ,                                       NUMERO_GUIA \
                                           ,                                       NUMERO_AUTORIZACAO \
                                           ,                                       NUMERO_CUPOM_FISCAL \
                                           ,                                       DATA_ATENDIMENTO \
                                           ,                                       CODIGO_EAN_ENVIADO \
                                           ,                                       VALOR_APRESENTADO \
                                           ,                                       STATUS_LOG_PROCESSAMENTO \
                                           ,                                       LOG_PROCESSAMENTO) \
                                           VALUES                                 (:sequencia_arquivo \
                                           ,                                       :numero_linha \
                                           ,                                       :numero_carta_remessa \
                                           ,                                       :numero_guia \
                                           ,                                       :numero_autorizacao \
                                           ,                                       :numero_cupom_fiscal \
                                           ,                                       TRUNC(TO_DATE(:data_atendimento,\'YYYY-MM-DD HH24:MI:SS\')) \
                                           ,                                       :ean_enviado \
                                           ,                                       :valor_apresentado \
                                           ,                                       :status_log_processamento \
                                           ,                                       :log_processamento)'
                            banco_dados.Executar(comando_sql, variaveis_bind_log)

                    else:
                        if planilha_excel.cell(numero_linha, 24).value in ['Sim', 'SIM', 'S', 's']:
                            if recurso_glosa[1].decode('iso-8859-1') != planilha_excel.cell(numero_linha, 25).value:
                                if recurso_glosa[2] == 'P':
                                    variaveis_bind_recurso.update({ 'seq_recurso_glosa'           : recurso_glosa[0],
                                                                    'dthr_solicitacao_recurso'    : self.dthr_importacao_arquivo,
                                                                    'usuario_solicitacao_recurso' : self.usuario_importacao_arquivo,
                                                                    'descricao_recurso'           : planilha_excel.cell(numero_linha, 25).value,
                                                                    'status_recurso'              : 'P' })
                                    comando_sql = 'UPDATE CAS_RECURSOS_GLOSAS RG \
                                                   SET    RG.DTHR_SOLICITACAO_RECURSO    = :dthr_solicitacao_recurso \
                                                   ,      RG.USUARIO_SOLICITACAO_RECURSO = :usuario_solicitacao_recurso \
                                                   ,      RG.DESCRICAO_RECURSO           = :descricao_recurso \
                                                   WHERE  RG.SEQ_RETORNO_FINANCEIRO      = :seq_retorno_financeiro \
                                                   AND    RG.SEQ_RECURSO_GLOSA           = :seq_recurso_glosa \
                                                   AND    RG.STATUS_RECURSO              = :status_recurso'
                                    banco_dados.Executar(comando_sql, variaveis_bind_recurso)

                                    variaveis_bind_log = variaveis_bind_planilha
                                    variaveis_bind_log.update({ 'sequencia_arquivo'        : self.sequencia_arquivo,
                                                                'numero_linha'             : numero_linha,
                                                                'status_log_processamento' : 'I',
                                                                'log_processamento'        : u'Encontrado solicitação de recurso pendente de processamento. Motivo recurso atualizado!!' })
                                    comando_sql = 'INSERT INTO CAS_LOG_PROC_ARQ_REC_GLOSAS(SEQUENCIA_ARQUIVO \
                                                   ,                                       NUMERO_LINHA \
                                                   ,                                       NUMERO_CARTA_REMESSA \
                                                   ,                                       NUMERO_GUIA \
                                                   ,                                       NUMERO_AUTORIZACAO \
                                                   ,                                       NUMERO_CUPOM_FISCAL \
                                                   ,                                       DATA_ATENDIMENTO \
                                                   ,                                       CODIGO_EAN_ENVIADO \
                                                   ,                                       VALOR_APRESENTADO \
                                                   ,                                       STATUS_LOG_PROCESSAMENTO \
                                                   ,                                       LOG_PROCESSAMENTO) \
                                                   VALUES                                 (:sequencia_arquivo \
                                                   ,                                       :numero_linha \
                                                   ,                                       :numero_carta_remessa \
                                                   ,                                       :numero_guia \
                                                   ,                                       :numero_autorizacao \
                                                   ,                                       :numero_cupom_fiscal \
                                                   ,                                       TRUNC(TO_DATE(:data_atendimento,\'YYYY-MM-DD HH24:MI:SS\')) \
                                                   ,                                       :ean_enviado \
                                                   ,                                       :valor_apresentado \
                                                   ,                                       :status_log_processamento \
                                                   ,                                       :log_processamento)'
                                    banco_dados.Executar(comando_sql, variaveis_bind_log)

                                else:
                                    variaveis_bind_log = variaveis_bind_planilha
                                    variaveis_bind_log.update({ 'sequencia_arquivo'        : self.sequencia_arquivo,
                                                                'numero_linha'             : numero_linha,
                                                                'status_log_processamento' : 'A',
                                                                'log_processamento'        : u'Encontrado solicitação de recurso já processada e finalizada. Nova solicitação não permitida!' })
                                    comando_sql = 'INSERT INTO CAS_LOG_PROC_ARQ_REC_GLOSAS(SEQUENCIA_ARQUIVO \
                                                   ,                                       NUMERO_LINHA \
                                                   ,                                       NUMERO_CARTA_REMESSA \
                                                   ,                                       NUMERO_GUIA \
                                                   ,                                       NUMERO_AUTORIZACAO \
                                                   ,                                       NUMERO_CUPOM_FISCAL \
                                                   ,                                       DATA_ATENDIMENTO \
                                                   ,                                       CODIGO_EAN_ENVIADO \
                                                   ,                                       VALOR_APRESENTADO \
                                                   ,                                       STATUS_LOG_PROCESSAMENTO \
                                                   ,                                       LOG_PROCESSAMENTO) \
                                                   VALUES                                 (:sequencia_arquivo \
                                                   ,                                       :numero_linha \
                                                   ,                                       :numero_carta_remessa \
                                                   ,                                       :numero_guia \
                                                   ,                                       :numero_autorizacao \
                                                   ,                                       :numero_cupom_fiscal \
                                                   ,                                       TRUNC(TO_DATE(:data_atendimento,\'YYYY-MM-DD HH24:MI:SS\')) \
                                                   ,                                       :ean_enviado \
                                                   ,                                       :valor_apresentado \
                                                   ,                                       :status_log_processamento \
                                                   ,                                       :log_processamento)'
                                    banco_dados.Executar(comando_sql, variaveis_bind_log)

                        else:
                            if recurso_glosa[2] == 'P':
                                variaveis_bind_recurso.update({ 'seq_recurso_glosa'        : recurso_glosa[0] })
                                comando_sql = 'DELETE \
                                               FROM   CAS_RECURSOS_GLOSAS RG \
                                               WHERE  RG.SEQ_RETORNO_FINANCEIRO = :seq_retorno_financeiro \
                                               AND    RG.SEQ_RECURSO_GLOSA      = :seq_recurso_glosa'
                                banco_dados.Executar(comando_sql, variaveis_bind_recurso)

                                variaveis_bind_log = variaveis_bind_planilha
                                variaveis_bind_log.update({ 'sequencia_arquivo'        : self.sequencia_arquivo,
                                                            'numero_linha'             : numero_linha,
                                                            'status_log_processamento' : 'A',
                                                            'log_processamento'        : u'Excluída a solicitação de recurso!' })
                                comando_sql = 'INSERT INTO CAS_LOG_PROC_ARQ_REC_GLOSAS(SEQUENCIA_ARQUIVO \
                                               ,                                       NUMERO_LINHA \
                                               ,                                       NUMERO_CARTA_REMESSA \
                                               ,                                       NUMERO_GUIA \
                                               ,                                       NUMERO_AUTORIZACAO \
                                               ,                                       NUMERO_CUPOM_FISCAL \
                                               ,                                       DATA_ATENDIMENTO \
                                               ,                                       CODIGO_EAN_ENVIADO \
                                               ,                                       VALOR_APRESENTADO \
                                               ,                                       STATUS_LOG_PROCESSAMENTO \
                                               ,                                       LOG_PROCESSAMENTO) \
                                               VALUES                                 (:sequencia_arquivo \
                                               ,                                       :numero_linha \
                                               ,                                       :numero_carta_remessa \
                                               ,                                       :numero_guia \
                                               ,                                       :numero_autorizacao \
                                               ,                                       :numero_cupom_fiscal \
                                               ,                                       TRUNC(TO_DATE(:data_atendimento,\'YYYY-MM-DD HH24:MI:SS\')) \
                                               ,                                       :ean_enviado \
                                               ,                                       :valor_apresentado \
                                               ,                                       :status_log_processamento \
                                               ,                                       :log_processamento)'
                                banco_dados.Executar(comando_sql, variaveis_bind_log)

                            else:
                                variaveis_bind_log = variaveis_bind_planilha
                                variaveis_bind_log.update({ 'sequencia_arquivo'        : self.sequencia_arquivo,
                                                            'numero_linha'             : numero_linha,
                                                            'status_log_processamento' : 'E',
                                                            'log_processamento'        : u'Encontrado solicitação de recurso já processada e finalizada. Exclusão não permitida!' })
                                comando_sql = 'INSERT INTO CAS_LOG_PROC_ARQ_REC_GLOSAS(SEQUENCIA_ARQUIVO \
                                               ,                                       NUMERO_LINHA \
                                               ,                                       NUMERO_CARTA_REMESSA \
                                               ,                                       NUMERO_GUIA \
                                               ,                                       NUMERO_AUTORIZACAO \
                                               ,                                       NUMERO_CUPOM_FISCAL \
                                               ,                                       DATA_ATENDIMENTO \
                                               ,                                       CODIGO_EAN_ENVIADO \
                                               ,                                       VALOR_APRESENTADO \
                                               ,                                       STATUS_LOG_PROCESSAMENTO \
                                               ,                                       LOG_PROCESSAMENTO) \
                                               VALUES                                 (:sequencia_arquivo \
                                               ,                                       :numero_linha \
                                               ,                                       :numero_carta_remessa \
                                               ,                                       :numero_guia \
                                               ,                                       :numero_autorizacao \
                                               ,                                       :numero_cupom_fiscal \
                                               ,                                       TRUNC(TO_DATE(:data_atendimento,\'YYYY-MM-DD HH24:MI:SS\')) \
                                               ,                                       :ean_enviado \
                                               ,                                       :valor_apresentado \
                                               ,                                       :status_log_processamento \
                                               ,                                       :log_processamento)'
                                banco_dados.Executar(comando_sql, variaveis_bind_log)

            banco_dados.Comitar()

        except Exception as e:
            raise

        finally:
            banco_dados.Desconectar()
