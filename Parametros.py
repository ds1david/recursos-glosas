# -*- coding: utf-8 -*-
import BD as banco_dados
from Logger import *

logger = Logger(__name__)


class Parametros(object):

    servidor_proxy = None
    porta_servidor_proxy = None
    usuario_proxy = None
    senha_usuario_proxy = None
    url_site_login = None
    url_site_recurso = None
    usuario_site = None
    senha_site = None

    def __init__(self):
        banco_dados.Conectar()

        try:
            comando_sql = 'SELECT PR.EMAIL_ADMINISTRADOR \
                           ,      PR.URL_PROXY \
                           ,      PR.USUARIO_PROXY \
                           ,      PR.SENHA_PROXY \
                           ,      PR.URL_LOGIN_SITE_RECURSOS \
                           ,      PR.URL_SITE_RECURSOS \
                           ,      PR.USUARIO_SITE_RECURSOS \
                           ,      PR.SENHA_SITE_RECURSOS \
                           FROM   CAS_PARAMETROS_RECURSOS PR'
            banco_dados.Executar(comando_sql)
            parametros = banco_dados.BuscarUm()

            self.servidor_proxy = str(parametros[1]).rsplit(':', 1)[0]
            self.porta_servidor_proxy = str(parametros[1]).rsplit(':', 1)[1]
            self.usuario_proxy = parametros[2]
            self.senha_usuario_proxy = parametros[3]
            self.url_site_login = parametros[4]
            self.url_site_recurso = parametros[5]
            self.usuario_site = parametros[6]
            self.senha_site = parametros[7]
        except Exception as e:
            raise

        finally:
            banco_dados.Desconectar()
