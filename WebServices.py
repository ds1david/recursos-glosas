# -*- coding: utf-8 -*-
import cherrypy
import bottle
from cherrypy.wsgiserver import *
from Arquivos import *
from Logger import *

logger = Logger(__name__)


app = application = bottle.default_app()

@bottle.route('/recursos_glosas/processar_arquivo/<sequencia_arquivo>', method='POST')
def importa_arquivo_recursos(sequencia_arquivo=None):
    if sequencia_arquivo == None:
        return { 'Status'   : False,
                 'Tipo'     : 'Exceção',
                 'Mensagem' : 'Chamada sem sequencia de arquivo para processamento!'}

    else:
        arquivo = Arquivos();
        try:
            arquivo.Selecionar(sequencia_arquivo)

        except Exception as e:
            logger.error(e, exc_info=True)
            return { 'Status'   : False,
                     'Tipo'     : 'Erro',
                     'Mensagem' : str(e).decode('iso-8859-1')}

        else:
            if arquivo.sequencia_arquivo == None:
                return { 'Status'   : False,
                         'Tipo'     : 'Processo',
                         'Mensagem' : 'Arquivo com a sequência ' + str(sequencia_arquivo) + ' não localizado!'}

            try:
                arquivo.Processar();

            except Exception as e:
                logger.error(e, exc_info=True)
                return { 'Status'   : False,
                         'Tipo'     : 'Erro',
                         'Mensagem' : str(e).decode('iso-8859-1')}

            else:
                return { 'Status'  : True,
                         'Tipo'    : 'Processo',
                         'Mensagem': 'Arquivo sequencia ' + str(sequencia_arquivo) + ' processado com sucesso!'}


if __name__ == '__main__':
    server = CherryPyWSGIServer(('0.0.0.0', 8000), app, numthreads=30)
    try:
        server.start()

    except KeyboardInterrupt:
        server.stop()
