# -*- coding: utf-8 -*-
import clipboard
import time
import os
import sys
from pyvirtualdisplay import Display
from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from base64 import b64decode
from wand.image import Image
from Logger import *
from Parametros import *

logger = Logger(__name__)
parametros = Parametros()

servidor_proxy = parametros.servidor_proxy
porta_servidor_proxy = parametros.porta_servidor_proxy
usuario_proxy = parametros.usuario_proxy
senha_usuario_proxy = parametros.senha_usuario_proxy

timeout_requisicoes = 15
url_site_login = parametros.url_site_login
url_site_recurso = parametros.url_site_recurso
usuario_site = parametros.usuario_site
senha_site = parametros.senha_site

reload(sys)
sys.setdefaultencoding('utf-8')

class PortalCassi(object):

    browser = None
    display = None

    def __RetornaNumeros(self, string):
        return int(''.join(i for i in string if i.isdigit()))

    def Inicializar(self):
        # if os.name == 'posix':
        #     self.display = Display(visible=0, size=(1440, 900))
        #     self.display.start()

        perfil_firefox = webdriver.FirefoxProfile()
        perfil_firefox.accept_untrusted_certs = True
        perfil_firefox.assume_untrusted_cert_issuer = False
        # perfil_firefox.set_preference('network.proxy.type', 1)
        # perfil_firefox.set_preference('network.proxy.http', servidor_proxy)
        # perfil_firefox.set_preference('network.proxy.http_port', int(porta_servidor_proxy))
        # perfil_firefox.set_preference('network.proxy.socks_username', usuario_proxy)
        # perfil_firefox.set_preference('network.proxy.socks_password', senha_usuario_proxy)
        # perfil_firefox.set_preference('signon.autologin.proxy', True)
        # perfil_firefox.set_preference("network.proxy.share_proxy_settings", True)
        # perfil_firefox.set_preference("network.http.use-cache", False)
        perfil_firefox.update_preferences()

        # if os.name == 'posix':
        #     self.browser = webdriver.Firefox(firefox_profile=perfil_firefox, log_path='log/geckodriver.log')
        # else:
        self.browser = webdriver.Chrome()
        #self.browser = webdriver.Firefox(firefox_profile=perfil_firefox, log_path='log/geckodriver.log')

        self.browser.maximize_window()

    def Finalizar(self):
        pass
        #self.browser.quit()

        # if os.name == 'posix':
        #     self.display.stop()

    def Logar(self):
        self.browser.get(url_site_login)
        self.browser.switch_to.frame('blockrandom')

        usuario = self.browser.find_element_by_xpath('//input[@id="MainContent_txtCPFCNPJ"]')
        usuario.clear()
        usuario.send_keys(usuario_site)

        senha = self.browser.find_element_by_xpath('//input[@id="MainContent_txtSenha"]')
        senha.clear()
        senha.send_keys(senha_site)

        self.browser.find_element_by_xpath('//input[@id="MainContent_buttonOk"]').click()

    def SelecionarCartaRemessa(self, numero_carta_remessa):
        try:
            self.browser.get(url_site_recurso)
            protocolo = self.browser.find_element_by_xpath('//input[@id="ProtocoloPagamento"]')
            protocolo.clear()
            protocolo.send_keys(numero_carta_remessa)
            self.browser.find_element_by_xpath('//button[@id="btnConsultar"]').click()

            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.CSS_SELECTOR, 'input.btn.btn-link')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.CSS_SELECTOR, 'input.btn.btn-link')))
            self.browser.find_element_by_css_selector('input.btn.btn-link').click()
        except TimeoutException as e:
            return 'Carta Remessa: ' + str(numero_carta_remessa) + u'. Mensagem: Não foi possível selecionar a carta remessa!'


        try:
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//button[@id="btnRecursar"]')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//button[@id="btnRecursar"]')))
            self.browser.find_element_by_xpath('//button[@id="btnRecursar"]').click()
        except TimeoutException as e:
            return 'Carta Remessa: ' + str(numero_carta_remessa) + u'. Mensagem: Não foi possível iniciar recursos da carta remessa!'

        try:
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="modalAutorizacao"]/div/div/div[2]/p')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="modalAutorizacao"]/div/div/div[2]/p')))

            mensagem_carta_remessa = self.browser.find_element_by_xpath('//*[@id="modalAutorizacao"]/div/div/div[2]/p').text
            return 'Carta Remessa: ' + str(numero_carta_remessa) + '. Mensagem: ' + mensagem_carta_remessa
        except TimeoutException as e:
            return None

        try:
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="ModalMensagemUsuario"]/div/div')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="ModalMensagemUsuario"]/div/div')))

            mensagem_carta_remessa = self.browser.find_element_by_xpath('//*[@id="ModalMensagemUsuario"]/div/div').text

            return 'Carta Remessa: ' + str(numero_carta_remessa) + '. Mensagem: ' + mensagem_carta_remessa
        except TimeoutException as e:
            return None

    def Recursar(self, numero_cupom_fiscal, ean_enviado, descricao_recurso):
        try:
            time.sleep(1)
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="edtNumeroGuia"]')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="edtNumeroGuia"]')))
            guia = self.browser.find_element_by_xpath('//*[@id="edtNumeroGuia"]')
            guia.clear()
            clipboard.copy(str(numero_cupom_fiscal).zfill(11).strip())
            guia.send_keys(Keys.CONTROL, 'v')

            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="divGuias"]/div/fieldset/div[1]/div/div/a')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="divGuias"]/div/fieldset/div[1]/div/div/a')))
            self.browser.find_element_by_xpath('//*[@id="divGuias"]/div/fieldset/div[1]/div/div/a').click()
        except TimeoutException as e:
            return { 'status_recurso' : 'E',
                     'log_recurso'    : u'Não foi possível informar Cupom Fiscal para recursar!',
                     'print_recurso'  : None }

        try:
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="tabelaGuia"]/tbody/tr/td[1]')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="tabelaGuia"]/tbody/tr/td[1]')))
            self.browser.find_element_by_xpath('//*[@id="tabelaGuia"]/tbody/tr/td[1]').click()
        except TimeoutException as e:
            return { 'status_recurso' : 'E',
                     'log_recurso'    : u'Cupom Fiscal não localizado para recursar!',
                     'print_recurso'  : None }

        try:
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="divEventos"]/div[2]/fieldset/div/table/tbody/tr')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="divEventos"]/div[2]/fieldset/div/table/tbody/tr')))
            linhas_tabela = self.browser.find_elements_by_xpath('//*[@id="divEventos"]/div[2]/fieldset/div/table/tbody/tr')
        except TimeoutException as e:
            return { 'status_recurso' : 'E',
                     'log_recurso'    : u'Cupom Fiscal não possui itens para recursar!',
                     'print_recurso'  : None }

        numero_linha = 1
        for linha_tabela in linhas_tabela:
            ean_linha = self.browser.find_element_by_xpath('//*[@id="divEventos"]/div[2]/fieldset/div/table/tbody/tr[' + str(numero_linha) + ']/td[1]').text

            if ean_linha == str(ean_enviado).zfill(13).strip():
                try:
                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="divEventos"]/div[2]/fieldset/div/table/tbody/tr[' + str(numero_linha) + ']/td[7]/a[2]')))
                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="divEventos"]/div[2]/fieldset/div/table/tbody/tr[' + str(numero_linha) + ']/td[7]/a[2]')))
                    self.browser.find_element_by_xpath('//*[@id="divEventos"]/div[2]/fieldset/div/table/tbody/tr[' + str(numero_linha) + ']/td[7]/a[2]').click()

                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_all_elements_located((By.XPATH, '//div[starts-with(@id,"heading")]/h4/a')))
                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//div[starts-with(@id,"heading")]/h4/a')))

                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//div[starts-with(@id,"heading")]/h4/a')))
                    glosas = self.browser.find_elements_by_xpath('//div[starts-with(@id,"heading")]/h4/a')
                except TimeoutException as e:
                    return { 'status_recurso' : 'E',
                             'log_recurso'    : u'Não foi possível encontrar motivos de glosas para recursar!',
                             'print_recurso'  : None }

                codigo_justificativa = None
                for glosa in glosas:
                    try:
                        if codigo_justificativa != glosa.get_attribute('href').replace(self.browser.current_url + 'justificativa', ''):
                            time.sleep(1)
                            codigo_justificativa = glosa.get_attribute('href').replace(self.browser.current_url + 'justificativa', '')
                            glosa.click()

                            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
                            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="myModal"]/div/div/div/div/div/button')))
                            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="myModal"]/div/div/div/div/div/button')))
                            self.browser.find_element_by_xpath('//*[@id="myModal"]/div/div/div/div/div/button').click()

                            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
                            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//textarea[@id="j' + codigo_justificativa + '"]')))
                            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//textarea[@id="j' + codigo_justificativa + '"]')))
                            justificativa = self.browser.find_element_by_xpath('//textarea[@id="j' + codigo_justificativa + '"]')
                            justificativa.clear()
                            justificativa.send_keys(unicode(descricao_recurso, 'iso-8859-1'))
                    except TimeoutException as e:
                        return { 'status_recurso' : 'E',
                                 'log_recurso'    : u'Não foi informar a justificativa para recursar!',
                                 'print_recurso'  : None }

                wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
                tela_recurso = self.browser.find_element_by_xpath('//div[@id="divJustificativaEvento"]/div/div')
                posicao = tela_recurso.location
                tamanho = tela_recurso.size
                print_screen = self.browser.get_screenshot_as_base64()
                print_screen = Image(blob=b64decode(print_screen))
                print_screen.crop(left=int(posicao["x"]), top=int(posicao["y"]), width=int(tamanho["width"]), height=int(tamanho["height"]))
                print_screen.make_blob()

                try:
                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="btnSalvarJustificativaEvento"]')))
                    wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="btnSalvarJustificativaEvento"]')))
                    self.browser.find_element_by_xpath('//*[@id="btnSalvarJustificativaEvento"]').click()
                except TimeoutException as e:
                    return { 'status_recurso' : 'E',
                             'log_recurso'    : u'Não possível confirmar o recurso!',
                             'print_recurso'  : None }

                wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
                wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="btnFecharJustificativaEvento"]')))
                wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="btnFecharJustificativaEvento"]')))
                self.browser.find_element_by_xpath('//*[@id="btnFecharJustificativaEvento"]').click()

                return { 'status_recurso' : 'F',
                         'log_recurso'    : u'Recurso efetuado com sucesso!',
                         'print_recurso'  : print_screen }

            numero_linha = numero_linha + 1

        return { 'status_recurso' : 'E',
                 'log_recurso'    : u'EAN enviado não encontrado para recursar!',
                 'print_recurso'  : None }

    def FinalizarProtocolo(self,numero_carta_remessa):
        try:
            time.sleep(1)
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//a[@href="#modalResumoSolicitacao"]')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//a[@href="#modalResumoSolicitacao"]')))
            self.browser.find_element_by_xpath('//a[@href="#modalResumoSolicitacao"]').click()

            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="modalResumoSolicitacao"]/div/div')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="modalResumoSolicitacao"]/div/div')))
            protocolo = self.browser.find_element_by_xpath('//*[@id="modalResumoSolicitacao"]/div/div')

            html_protocolo = self.browser.find_element_by_xpath('//*[@id="modalResumoSolicitacao"]/div/div/div[2]').text

            wait = WebDriverWait(self.browser, timeout_requisicoes).until(lambda browser: self.browser.execute_script('return jQuery.active == 0'))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.presence_of_element_located((By.XPATH, '//*[@id="modalResumoSolicitacao"]/div/div/div[3]/form/button')))
            wait = WebDriverWait(self.browser, timeout_requisicoes).until(EC.element_to_be_clickable((By.XPATH, '//*[@id="modalResumoSolicitacao"]/div/div/div[3]/form/button')))
            self.browser.find_element_by_xpath('//*[@id="modalResumoSolicitacao"]/div/div/div[3]/form/button').click()

            return { 'status_protocolo'   : 'F',
                     'numero_protocolo'   : self.__RetornaNumeros(html_protocolo.rsplit('\n', 2)[0]),
                     'valor_glosado'      : self.__RetornaNumeros(html_protocolo.rsplit('\n', 2)[1])/100,
                     'valor_recursado'    : self.__RetornaNumeros(html_protocolo.rsplit('\n', 2)[2])/100 }

        except TimeoutException as e:
            return { 'status_protocolo'   : 'E',
                     'mensagem_protocolo' : 'Carta Remessa: ' + str(numero_carta_remessa) + u'. Mensagem: Não foi salvar o protocolo de recursos carta remessa!' }
