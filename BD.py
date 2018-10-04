# -*- coding: utf-8 -*-
import cx_Oracle
import os
from wand.image import Image
from Logger import *

logger = Logger(__name__)


usuario = 'rglosas'
senha = 'cassi2017'
servidor = '128.0.1.102'
porta = '1522'
servico = 'corp'

conexao = None
cursor = None

def __DefineTipoRetorno__(tipo_dado_retorno):
    global cursor
    if tipo_dado_retorno == 'NUMBER':
        return cursor.var(cx_Oracle.NUMBER)
    if tipo_dado_retorno == 'VARCHAR2':
        return cursor.var(cx_Oracle.STRING)
    if tipo_dado_retorno == 'DATETIME':
        return cursor.var(cx_Oracle.DATETIME)
    if tipo_dado_retorno == 'DATE':
        return cursor.var(cx_Oracle.DATETIME)
    if tipo_dado_retorno == 'CHAR':
        return cursor.var(cx_Oracle.STRING)

def Conectar():
    global conexao
    global cursor
    if not isinstance(conexao, cx_Oracle.Connection):
        try:
            os.environ['NLS_LANG'] = 'BRAZILIAN PORTUGUESE.WE8ISO8859P1'
            dsn_tns = cx_Oracle.makedsn(servidor, porta, servico)
            conexao = cx_Oracle.connect(usuario, senha, dsn_tns)
            cursor = conexao.cursor()

        except cx_Oracle.DatabaseError as e:
            if cursor != None:
                cursor.close()
                cursor = None
            if conexao != None:
                conexao.rollback()
                conexao.close()
                conexao = None
            raise

def Executar(comando_sql, variaveis_bind=None, executa_commit=False):
    global cursor
    if variaveis_bind == None:
        cursor.execute(comando_sql)
    else:
        for chave, valor in variaveis_bind.items():
            if isinstance(valor, Image):
                variavel_binaria = cursor.var(cx_Oracle.BLOB)
                variavel_binaria.setvalue(0, valor.read())
                variaveis_blob = { chave : variavel_binaria }
                variaveis_bind.update(variaveis_blob)
                del(variavel_binaria)

        cursor.execute(comando_sql, variaveis_bind)

        for chave in variaveis_bind:
            if isinstance(variaveis_bind[chave], cx_Oracle.BLOB):
                variaveis_bind[chave] = None

        del(variaveis_bind)

    if executa_commit:
        Comitar()

def ExecutarComRetorno(comando_sql, variaveis_bind, coluna_retorno, tipo_dado_retorno, executa_commit=False):
    global cursor
    for chave, valor in variaveis_bind.items():
        if isinstance(valor, Image):
            variavel_binaria = cursor.var(cx_Oracle.BLOB)
            variavel_binaria.setvalue(0, valor.read())
            variaveis_blob = { chave : variavel_binaria }
            variaveis_bind.update(variaveis_blob)
            del(variavel_binaria)

    for chave in variaveis_bind:
        if chave == coluna_retorno:
            variaveis_bind[chave] = __DefineTipoRetorno__(tipo_dado_retorno)

    cursor.execute(comando_sql, variaveis_bind)

    for chave in variaveis_bind:
        if chave == coluna_retorno:
            valor_retorno = variaveis_bind[chave].getvalue()

    for chave in variaveis_bind:
        if isinstance(variaveis_bind[chave], cx_Oracle.BLOB):
            variaveis_bind[chave] = None

    del(variaveis_bind)

    if executa_commit:
        Comitar()

    return valor_retorno

def ExecutarFuncao(comando_sql, tipo_dado_retorno, variaveis_bind=None):
    global cursor
    tipo_retorno = __DefineTipoRetorno__(tipo_dado_retorno)

    return cursor.callfunc(comando_sql, tipo_retorno, variaveis_bind)

def Comitar():
    global cursor
    conexao.commit()

def BuscarUm():
    global cursor
    return cursor.fetchone()

def BuscarTodos():
    global cursor
    return cursor.fetchall()

def Desconectar():
    global conexao
    global cursor
    if cursor != None or cursor.isopen():
        cursor.close()
        cursor = None
    if conexao != None or conexao.isopen():
        conexao.rollback()
        conexao.close()
        conexao = None
