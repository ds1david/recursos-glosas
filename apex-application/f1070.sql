set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.4.00.12'
,p_default_workspace_id=>2900528032647089
,p_default_application_id=>1070
,p_default_owner=>'PROCAS'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 1070 - Recursos Glosas CASSI
--
-- Application Export:
--   Application:     1070
--   Name:            Recursos Glosas CASSI
--   Date and Time:   17:30 Thursday October 4, 2018
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.4.00.12
--   Instance ID:     108846161100147
--

-- Application Statistics:
--   Pages:                     11
--     Items:                   26
--     Computations:             2
--     Validations:              1
--     Processes:               13
--     Regions:                 20
--     Buttons:                 11
--     Dynamic Actions:         10
--   Shared Components:
--     Logic:
--       Processes:              1
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              6
--     Security:
--       Authentication:         1
--       Authorization:          1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       LOVs:                   2
--       Shortcuts:              1
--       Plug-ins:               3
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,1070)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'PROCAS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Recursos Glosas CASSI')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'RECGLOSAS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'0A38DFB1DF81050F588B9A4FDAE4BDAB5D80D8958A55F605FF526692AD1D691A'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'pt-br'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD/MM/YYYY'
,p_date_time_format=>'DD/MM/YYYY HH24:MI:SS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(35957223533060322)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Recursos Glosas CASSI'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180717135347'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(35914634166060308)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(35958401438060323)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN PCK_WKF_ENGINE.FNC_VALIDA_ACESSO(V(''APP_ID'')',
'                                         ,1);',
'END;'))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24190036080233481)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Arquivos de Recursos'
,p_list_item_link_target=>'f?p=&APP_ID.:1020:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text-o'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN PCK_WKF_ENGINE.FNC_VALIDA_ACESSO(V(''APP_ID'')',
'                                         ,1020);',
'END;'))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1020'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12301067171550727)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Glosas Recebidas'
,p_list_item_link_target=>'f?p=&APP_ID.:1050:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-unlink'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN PCK_WKF_ENGINE.FNC_VALIDA_ACESSO(V(''APP_ID'')',
'                                         ,1050);',
'END;'))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1050'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12477143169838202)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Recursos Registrados'
,p_list_item_link_target=>'f?p=&APP_ID.:1060:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-link'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN PCK_WKF_ENGINE.FNC_VALIDA_ACESSO(V(''APP_ID'')',
'                                         ,1060);',
'END;'))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1060'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12207429497227329)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Parâmetros Aplicação'
,p_list_item_link_target=>'f?p=&APP_ID.:1040:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cogs'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN PCK_WKF_ENGINE.FNC_VALIDA_ACESSO(V(''APP_ID'')',
'                                         ,1040);',
'END;'))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1040'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(35956880195060322)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(35961167715162058)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_icon=>'a-Icon icon-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18711285937876717)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Menu de Aplicações'
,p_list_item_link_target=>'http://apexdimed:8080/apex/f?p=1000:1:&APP_SESSION.:::::'
,p_parent_list_item_id=>wwv_flow_api.id(35961167715162058)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(35957126787060322)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_parent_list_item_id=>wwv_flow_api.id(35961167715162058)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(35914312255060308)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(35914414802060308)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(35914527215060308)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(19325279291421142)
,p_name=>'Controle de Acessos'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'  RETURN PCK_WKF_ENGINE.FNC_VALIDA_ACESSO(V(''APP_ID'')',
'                                         ,V(''APP_PAGE_ID''));',
'END;'))
,p_error_message=>'Usuário sem permissão de acesso à pagina solicitada (&APP_ID.-&APP_PAGE_ID.).'
,p_caching=>'NOCACHE'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(13298221987325601)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remover Link Screen Reader'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_MSG VARCHAR2(200);',
'BEGIN',
'  V_MSG := APEX_UTIL.GET_SCREEN_READER_MODE_TOGGLE('' '','' '');',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'END;'))
);
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(24138039016115325)
,p_lov_name=>'P1000_Report Row Per Page'
,p_lov_query=>'.'||wwv_flow_api.id(24138039016115325)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24138386589115326)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24138723048115328)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'15'
,p_lov_return_value=>'15'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24139122768115328)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24139559355115328)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'30'
,p_lov_return_value=>'30'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24139944849115328)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24140311398115328)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24140762721115328)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24141125260115328)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24141577375115329)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(24141920810115329)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'5000'
,p_lov_return_value=>'5000'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12341152393121226)
,p_lov_name=>'P7_Report Row Per Page'
,p_lov_query=>'.'||wwv_flow_api.id(12341152393121226)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12341549185121229)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12341878326121234)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'15'
,p_lov_return_value=>'15'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12342295798121234)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12342687104121234)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'30'
,p_lov_return_value=>'30'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12343041875121234)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12343441468121234)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12343818348121234)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12344238518121234)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12344605144121235)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12345032942121235)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'5000'
,p_lov_return_value=>'5000'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(35958251496060323)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12221286961290553)
,p_short_name=>'Parâmetros Aplicação'
,p_link=>'f?p=&FLOW_ID.:1040:&SESSION.'
,p_page_id=>1040
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12301934164550749)
,p_parent_id=>0
,p_short_name=>'Glosas Recebidas'
,p_link=>'f?p=&APP_ID.:1050:&SESSION.::&DEBUG.:::'
,p_page_id=>1050
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12478074311838233)
,p_parent_id=>0
,p_short_name=>'Recursos Registrados'
,p_link=>'f?p=&APP_ID.:1060:&SESSION.::&DEBUG.:::'
,p_page_id=>1060
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24198642676233488)
,p_parent_id=>0
,p_short_name=>'Arquivos de Recursos'
,p_link=>'f?p=&APP_ID.:1020:&SESSION.::&DEBUG.:::'
,p_page_id=>1020
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24265735925333490)
,p_parent_id=>wwv_flow_api.id(24198642676233488)
,p_short_name=>'Detalhes Arquivo de Recurso'
,p_link=>'f?p=&APP_ID.:1030:&SESSION.'
,p_page_id=>1030
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(35958662433060323)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35914686425060308)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35914771599060309)
,p_page_template_id=>wwv_flow_api.id(35914686425060308)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35914864255060309)
,p_page_template_id=>wwv_flow_api.id(35914686425060308)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35914979977060309)
,p_page_template_id=>wwv_flow_api.id(35914686425060308)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35915107067060309)
,p_page_template_id=>wwv_flow_api.id(35914686425060308)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35915171132060309)
,p_page_template_id=>wwv_flow_api.id(35914686425060308)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35915248161060309)
,p_page_template_id=>wwv_flow_api.id(35914686425060308)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35915428763060309)
,p_page_template_id=>wwv_flow_api.id(35914686425060308)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35915498189060309)
,p_page_template_id=>wwv_flow_api.id(35914686425060308)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35915570329060309)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35915640600060309)
,p_page_template_id=>wwv_flow_api.id(35915570329060309)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35915805689060309)
,p_page_template_id=>wwv_flow_api.id(35915570329060309)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35915862064060309)
,p_page_template_id=>wwv_flow_api.id(35915570329060309)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35916020662060309)
,p_page_template_id=>wwv_flow_api.id(35915570329060309)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35916056595060309)
,p_page_template_id=>wwv_flow_api.id(35915570329060309)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35916228245060309)
,p_page_template_id=>wwv_flow_api.id(35915570329060309)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35916302188060309)
,p_page_template_id=>wwv_flow_api.id(35915570329060309)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35916416206060309)
,p_page_template_id=>wwv_flow_api.id(35915570329060309)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35916471268060309)
,p_page_template_id=>wwv_flow_api.id(35915570329060309)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35916556687060309)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35916674626060309)
,p_page_template_id=>wwv_flow_api.id(35916556687060309)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35916832465060309)
,p_page_template_id=>wwv_flow_api.id(35916556687060309)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35916908427060309)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35916976375060309)
,p_page_template_id=>wwv_flow_api.id(35916908427060309)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35917039004060309)
,p_page_template_id=>wwv_flow_api.id(35916908427060309)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35917174400060309)
,p_page_template_id=>wwv_flow_api.id(35916908427060309)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35917314711060309)
,p_page_template_id=>wwv_flow_api.id(35916908427060309)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35917386982060309)
,p_page_template_id=>wwv_flow_api.id(35916908427060309)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35917506943060309)
,p_page_template_id=>wwv_flow_api.id(35916908427060309)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35917635804060309)
,p_page_template_id=>wwv_flow_api.id(35916908427060309)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35917650772060309)
,p_page_template_id=>wwv_flow_api.id(35916908427060309)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35917746948060309)
,p_page_template_id=>wwv_flow_api.id(35916908427060309)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35917910052060309)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35917980380060310)
,p_page_template_id=>wwv_flow_api.id(35917910052060309)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35918119716060310)
,p_page_template_id=>wwv_flow_api.id(35917910052060309)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35918142447060310)
,p_page_template_id=>wwv_flow_api.id(35917910052060309)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35918276898060310)
,p_page_template_id=>wwv_flow_api.id(35917910052060309)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35918400855060310)
,p_page_template_id=>wwv_flow_api.id(35917910052060309)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35918470523060310)
,p_page_template_id=>wwv_flow_api.id(35917910052060309)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35918563278060310)
,p_page_template_id=>wwv_flow_api.id(35917910052060309)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35918705260060310)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35918836757060310)
,p_page_template_id=>wwv_flow_api.id(35918705260060310)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35918839448060310)
,p_page_template_id=>wwv_flow_api.id(35918705260060310)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35919032803060310)
,p_page_template_id=>wwv_flow_api.id(35918705260060310)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35919119863060310)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35919189239060310)
,p_page_template_id=>wwv_flow_api.id(35919119863060310)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35919275899060310)
,p_page_template_id=>wwv_flow_api.id(35919119863060310)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35919359992060310)
,p_page_template_id=>wwv_flow_api.id(35919119863060310)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35919509480060310)
,p_page_template_id=>wwv_flow_api.id(35919119863060310)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35919582039060310)
,p_page_template_id=>wwv_flow_api.id(35919119863060310)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35919677521060310)
,p_page_template_id=>wwv_flow_api.id(35919119863060310)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35919769548060310)
,p_page_template_id=>wwv_flow_api.id(35919119863060310)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35919936727060310)
,p_page_template_id=>wwv_flow_api.id(35919119863060310)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35920031282060310)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35920068643060310)
,p_page_template_id=>wwv_flow_api.id(35920031282060310)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35920143846060310)
,p_page_template_id=>wwv_flow_api.id(35920031282060310)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35920329879060310)
,p_page_template_id=>wwv_flow_api.id(35920031282060310)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35920407899060310)
,p_page_template_id=>wwv_flow_api.id(35920031282060310)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35920487375060310)
,p_page_template_id=>wwv_flow_api.id(35920031282060310)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35920595574060310)
,p_page_template_id=>wwv_flow_api.id(35920031282060310)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35920707812060310)
,p_page_template_id=>wwv_flow_api.id(35920031282060310)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35920813483060310)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35920879719060310)
,p_page_template_id=>wwv_flow_api.id(35920813483060310)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35921028408060310)
,p_page_template_id=>wwv_flow_api.id(35920813483060310)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(35921105961060310)
,p_page_template_id=>wwv_flow_api.id(35920813483060310)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35951737312060320)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35951830129060320)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35951910870060320)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35921227018060310)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35921299484060310)
,p_plug_template_id=>wwv_flow_api.id(35921227018060310)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35922666652060311)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35922807767060311)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35922907279060311)
,p_plug_template_id=>wwv_flow_api.id(35922807767060311)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35923037935060311)
,p_plug_template_id=>wwv_flow_api.id(35922807767060311)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35923713940060311)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35923791312060311)
,p_plug_template_id=>wwv_flow_api.id(35923713940060311)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35923925622060311)
,p_plug_template_id=>wwv_flow_api.id(35923713940060311)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35927076557060312)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35927219265060312)
,p_plug_template_id=>wwv_flow_api.id(35927076557060312)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35927310464060312)
,p_plug_template_id=>wwv_flow_api.id(35927076557060312)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35929207031060313)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35929309956060313)
,p_plug_template_id=>wwv_flow_api.id(35929207031060313)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35929434679060313)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35929517723060313)
,p_plug_template_id=>wwv_flow_api.id(35929434679060313)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35930276739060313)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35930551252060313)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35930689085060313)
,p_plug_template_id=>wwv_flow_api.id(35930551252060313)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35930763326060313)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35930907775060313)
,p_plug_template_id=>wwv_flow_api.id(35930763326060313)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35930950864060313)
,p_plug_template_id=>wwv_flow_api.id(35930763326060313)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35932857103060314)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35933029096060314)
,p_plug_template_id=>wwv_flow_api.id(35932857103060314)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35933055473060314)
,p_plug_template_id=>wwv_flow_api.id(35932857103060314)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35934079535060314)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35934634083060314)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(35934706176060314)
,p_plug_template_id=>wwv_flow_api.id(35934634083060314)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35942995880060317)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35944737443060318)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35946804077060318)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35947574489060318)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35948485234060319)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35948965378060319)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35949071411060319)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35949230648060319)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35949264223060319)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35950235613060319)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35950706152060320)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35935146897060314)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35935320557060314)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35936985466060315)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35939109422060316)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35939510706060316)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35939576583060316)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35939576583060316)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35940839132060316)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35941090993060316)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35942053725060316)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35951161645060320)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35951286886060320)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35951433123060320)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35951523944060320)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35951558647060320)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(35952332289060320)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(35952442730060320)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(35952367678060320)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(35952874844060321)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(35920031282060310)
,p_default_dialog_template=>wwv_flow_api.id(35918705260060310)
,p_error_template=>wwv_flow_api.id(35916556687060309)
,p_printer_friendly_template=>wwv_flow_api.id(35920031282060310)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(35916556687060309)
,p_default_button_template=>wwv_flow_api.id(35951830129060320)
,p_default_region_template=>wwv_flow_api.id(35930763326060313)
,p_default_chart_template=>wwv_flow_api.id(35930763326060313)
,p_default_form_template=>wwv_flow_api.id(35930763326060313)
,p_default_reportr_template=>wwv_flow_api.id(35930763326060313)
,p_default_tabform_template=>wwv_flow_api.id(35930763326060313)
,p_default_wizard_template=>wwv_flow_api.id(35930763326060313)
,p_default_menur_template=>wwv_flow_api.id(35934079535060314)
,p_default_listr_template=>wwv_flow_api.id(35930763326060313)
,p_default_irr_template=>wwv_flow_api.id(35930276739060313)
,p_default_report_template=>wwv_flow_api.id(35939576583060316)
,p_default_label_template=>wwv_flow_api.id(35951286886060320)
,p_default_menu_template=>wwv_flow_api.id(35952332289060320)
,p_default_calendar_template=>wwv_flow_api.id(35952367678060320)
,p_default_list_template=>wwv_flow_api.id(35946804077060318)
,p_default_nav_list_template=>wwv_flow_api.id(35950235613060319)
,p_default_top_nav_list_temp=>wwv_flow_api.id(35950235613060319)
,p_default_side_nav_list_temp=>wwv_flow_api.id(35949230648060319)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(35922807767060311)
,p_default_dialogr_template=>wwv_flow_api.id(35922666652060311)
,p_default_option_label=>wwv_flow_api.id(35951286886060320)
,p_default_required_label=>wwv_flow_api.id(35951523944060320)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(35949071411060319)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(35952606495060320)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(35952735333060320)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(35952767301060320)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35921475120060310)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35921679375060310)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35921934848060310)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35923105702060311)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35923333641060311)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35923986047060311)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35924398066060311)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35924983694060312)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35925634340060312)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35925780816060312)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35926649946060312)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35928264999060312)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35929650732060313)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35933220623060314)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35933413038060314)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35933793841060314)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35934218204060314)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35934825996060314)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35935338907060314)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35935606029060315)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35937199981060315)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35937929540060315)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35938174114060316)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35938845726060316)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35939167039060316)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35939666582060316)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35939990419060316)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35940230408060316)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35941175662060316)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35943112129060317)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35943934980060317)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35944898213060318)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35945602846060318)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35945931099060318)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35946540844060318)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35947280064060318)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35949704960060319)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35950825924060320)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35951992154060320)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35952966038060321)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35953196759060321)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35953342220060321)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35953608533060321)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35953823814060321)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35954147029060321)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35954877910060321)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35955301853060322)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35955471531060322)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35955726498060322)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35955906735060322)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35956180001060322)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(35956450439060322)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35921372500060310)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(35921227018060310)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35921556092060310)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35921227018060310)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(35921475120060310)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35921752660060310)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35921227018060310)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(35921679375060310)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35922018261060310)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35921227018060310)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(35921934848060310)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35922087529060310)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35921227018060310)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(35921475120060310)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35922166788060311)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35921227018060310)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(35921679375060310)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35922322419060311)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(35921227018060310)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(35921475120060310)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35922409234060311)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35921227018060310)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(35921679375060310)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35922474415060311)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35921227018060310)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(35921475120060310)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35922581185060311)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35921227018060310)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(35921934848060310)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35923228079060311)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(35922807767060311)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(35923105702060311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35923406452060311)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(35922807767060311)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(35923333641060311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35923501661060311)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(35922807767060311)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(35923105702060311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35923575984060311)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(35922807767060311)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(35923333641060311)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35924083683060311)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(35923986047060311)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35924139848060311)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(35923986047060311)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35924316284060311)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(35923986047060311)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35924468344060311)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35924579570060311)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35924668246060311)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35924835958060311)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(35923986047060311)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35924921624060311)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35925078027060312)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35925181198060312)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35925275973060312)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35925433159060312)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35925451571060312)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35925646442060312)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(35925634340060312)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35925901166060312)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(35925780816060312)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35925971610060312)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(35925634340060312)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35926062158060312)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35926162295060312)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(35923105702060311)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35926319024060312)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35926429645060312)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(35925780816060312)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35926495184060312)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35926600224060312)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35926756004060312)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(35926649946060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35926893107060312)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(35926649946060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35926943795060312)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35923713940060311)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(35923105702060311)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35927350013060312)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35927455320060312)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35927584541060312)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35927691712060312)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35927807627060312)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35927928086060312)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35928022215060312)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35928055708060312)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35928203995060312)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35928412190060312)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(35928264999060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35928493703060312)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(35928264999060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35928557212060312)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(35925780816060312)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35928668442060312)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35928807644060312)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(35923105702060311)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35928893942060312)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(35923105702060311)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35928947336060312)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(35925780816060312)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35929075025060313)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35927076557060312)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(35923105702060311)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35929563827060313)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35929434679060313)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35929762174060313)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35929434679060313)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(35929650732060313)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35929855977060313)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35929434679060313)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(35929650732060313)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35929987306060313)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35929434679060313)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35930044795060313)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35929434679060313)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35930229624060313)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35929434679060313)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(35929650732060313)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35930367147060313)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35930276739060313)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35930483379060313)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35930276739060313)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35931112342060313)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35931219186060313)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35931273888060313)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35931360077060313)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(35924398066060311)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35931439978060313)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35931558707060313)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35931673433060314)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35931814154060314)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35931847914060314)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(35924983694060312)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35931980594060314)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(35925634340060312)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35932131819060314)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(35925780816060312)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35932211872060314)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(35925634340060312)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35932303908060314)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35932397213060314)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(35923105702060311)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35932495392060314)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(35923105702060311)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35932562729060314)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(35925780816060312)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35932738672060314)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35932811921060314)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35930763326060313)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(35923105702060311)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35933267738060314)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35932857103060314)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(35933220623060314)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35933529554060314)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35932857103060314)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(35933413038060314)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35933622133060314)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35932857103060314)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35933668552060314)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35932857103060314)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(35933413038060314)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35933894863060314)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35932857103060314)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(35933793841060314)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35933959689060314)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35932857103060314)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(35933793841060314)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35934289081060314)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(35934079535060314)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(35934218204060314)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35934426450060314)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(35934079535060314)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35934475221060314)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(35934079535060314)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(35934218204060314)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35934928458060314)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(35934634083060314)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(35934825996060314)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35934949426060314)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35934634083060314)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(35934825996060314)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35935136837060314)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(35934634083060314)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35935525469060314)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(35935338907060314)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35935673772060315)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35935837651060315)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(35935338907060314)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35935914610060315)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35936001392060315)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(35935338907060314)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35936117424060315)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35936208785060315)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35936295945060315)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(35935338907060314)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35936407785060315)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(35935338907060314)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35936493463060315)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35936617931060315)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35936690186060315)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35936832206060315)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35936898562060315)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35935320557060314)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35937134306060315)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35937260006060315)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(35937199981060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35937387116060315)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35937523137060315)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(35937199981060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35937592444060315)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35937645796060315)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(35937199981060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35937758481060315)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35937991215060315)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(35937929540060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35938053642060315)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(35937929540060315)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35938252841060316)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(35938174114060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35938434322060316)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(35938174114060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35938469324060316)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(35937929540060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35938586355060316)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35938703299060316)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(35937199981060315)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35938814313060316)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35939017895060316)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35936985466060315)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(35938845726060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35939266198060316)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35939109422060316)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(35939167039060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35939353813060316)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35939109422060316)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(35939167039060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35939770853060316)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35939576583060316)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(35939666582060316)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35939926787060316)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35939576583060316)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(35939666582060316)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35940117796060316)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35939576583060316)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(35939990419060316)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35940338528060316)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35939576583060316)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(35940230408060316)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35940365132060316)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(35939576583060316)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(35940230408060316)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35940458154060316)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(35939576583060316)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(35940230408060316)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35940541388060316)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35939576583060316)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(35939990419060316)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35940644096060316)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35939576583060316)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35940821236060316)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35939576583060316)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(35940230408060316)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35940944760060316)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(35940839132060316)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(35937929540060315)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35941246067060316)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(35941090993060316)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35941396746060316)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35941090993060316)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35941523467060316)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35941090993060316)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35941633101060316)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35941090993060316)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35941646359060316)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35941090993060316)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35941832868060316)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(35941090993060316)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35941931620060316)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(35941090993060316)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35941989337060316)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(35941090993060316)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35942223604060317)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(35942053725060316)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35942257736060317)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35942053725060316)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35942384178060317)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35942053725060316)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35942455147060317)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(35942053725060316)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35942567481060317)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(35942053725060316)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(35935606029060315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35942661655060317)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(35942053725060316)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35942805368060317)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(35942053725060316)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35942931637060317)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(35942053725060316)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(35941175662060316)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35943144475060317)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35943333680060317)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35943427577060317)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35943453194060317)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35943609623060317)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35943659019060317)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35943780493060317)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35944028451060317)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(35943934980060317)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35944056978060317)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(35943934980060317)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35944230214060317)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35944293644060317)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(35943934980060317)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35944367112060317)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35944494600060317)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(35943934980060317)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35944635674060318)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(35942995880060317)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(35943934980060317)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35944833677060318)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35944980074060318)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(35944898213060318)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35945133747060318)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35945231461060318)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(35944898213060318)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35945283468060318)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35945378927060318)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(35944898213060318)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35945497431060318)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35945682678060318)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(35945602846060318)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35945769224060318)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(35945602846060318)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35945987353060318)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(35945931099060318)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35946069948060318)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(35945931099060318)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35946166532060318)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(35945602846060318)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35946309493060318)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35946437877060318)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(35944898213060318)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35946476036060318)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35946707200060318)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35944737443060318)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(35946540844060318)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35946886994060318)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35946804077060318)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(35945602846060318)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35946980981060318)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(35946804077060318)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35947085883060318)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35946804077060318)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35947189825060318)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35946804077060318)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35947389802060318)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35946804077060318)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(35947280064060318)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35947455095060318)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35946804077060318)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(35947280064060318)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35947691345060318)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35947574489060318)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35947810318060318)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35947574489060318)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35947880839060318)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(35947574489060318)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35947994409060318)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(35947574489060318)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35948077782060318)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(35947574489060318)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35948231364060319)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35947574489060318)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35948261403060319)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35947574489060318)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35948364571060319)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(35947574489060318)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35948614017060319)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(35948485234060319)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35948718202060319)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35948485234060319)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35948802098060319)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35948485234060319)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35948917919060319)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(35948485234060319)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35949396745060319)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35949264223060319)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(35945931099060318)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35949516585060319)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(35949264223060319)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(35943112129060317)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35949555437060319)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35949264223060319)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(35945931099060318)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35949772147060319)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35949264223060319)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(35949704960060319)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35949852330060319)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35949264223060319)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(35945602846060318)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35949959672060319)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35949264223060319)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(35945602846060318)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35950094161060319)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(35949264223060319)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(35949704960060319)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35950280514060319)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(35950235613060319)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35950353950060319)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(35950235613060319)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35950472262060320)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(35950235613060319)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35950618843060320)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(35950235613060319)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35950865471060320)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(35950706152060320)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(35950825924060320)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35950968920060320)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(35950706152060320)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(35950825924060320)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35951117707060320)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(35950706152060320)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(35950825924060320)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35952137335060320)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(35951910870060320)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(35951992154060320)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35952157096060320)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(35951910870060320)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(35951992154060320)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35953126082060321)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(35952966038060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35953291716060321)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(35953196759060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35953454765060321)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(35953342220060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35953656343060321)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(35953608533060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35953911997060321)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(35953823814060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35953981411060321)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(35953196759060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35954052965060321)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(35953342220060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35954271808060321)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(35954147029060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35954385951060321)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(35954147029060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35954472461060321)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(35954147029060321)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35954629464060321)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(35952966038060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35954702295060321)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(35953823814060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35954740949060321)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(35953608533060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35954987905060321)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(35954877910060321)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35955083551060322)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(35952966038060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35955185095060322)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(35952966038060321)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35955403260060322)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(35955301853060322)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35955593624060322)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(35955471531060322)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35955740293060322)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(35955726498060322)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35955992511060322)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(35955906735060322)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35956065120060322)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(35955906735060322)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35956289534060322)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(35956180001060322)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35956355538060322)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(35955471531060322)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35956561795060322)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(35956450439060322)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35956690752060322)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(35956792686060322)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(35956450439060322)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(24118630965999744)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(35957223533060322)
,p_name=>'Database Account'
,p_scheme_type=>'NATIVE_DB_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_cookie_name=>'APEX_ORACLE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/apex_material_cards
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(25154239159342583)
,p_plugin_type=>'REGION TYPE'
,p_name=>'APEX.MATERIAL.CARDS'
,p_display_name=>'Apex Material Cards'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','APEX.MATERIAL.CARDS'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'FUNCTION F_AJAX (',
'    P_REGION   IN APEX_PLUGIN.T_REGION,',
'    P_PLUGIN   IN APEX_PLUGIN.T_PLUGIN',
') RETURN APEX_PLUGIN.T_REGION_AJAX_RESULT',
'    IS',
'BEGIN',
'    APEX_UTIL.JSON_FROM_SQL(',
'        SQLQ   => P_REGION.SOURCE',
'    );',
'    RETURN NULL;',
'END;',
'',
'FUNCTION F_RENDER (',
'    P_REGION                IN APEX_PLUGIN.T_REGION,',
'    P_PLUGIN                IN APEX_PLUGIN.T_PLUGIN,',
'    P_IS_PRINTER_FRIENDLY   IN BOOLEAN',
') RETURN APEX_PLUGIN.T_REGION_RENDER_RESULT IS',
'',
'    V_CONF_JSON      APEX_APPLICATION_PAGE_REGIONS.ATTRIBUTE_01%TYPE := P_REGION.ATTRIBUTE_01;',
'    V_ITEMS2SUBMIT   APEX_APPLICATION_PAGE_REGIONS.AJAX_ITEMS_TO_SUBMIT%TYPE := P_REGION.AJAX_ITEMS_TO_SUBMIT;',
'    V_REGION_ID      VARCHAR2(200) := ''mc-'' || P_REGION.STATIC_ID;',
'BEGIN',
'    APEX_CSS.ADD_FILE(',
'        P_NAME        => ''chartist.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''chartiststylesource''',
'    );',
'',
'    APEX_CSS.ADD_FILE(',
'        P_NAME        => ''responsive-grid.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''responsivegridstylesource''',
'    );',
'',
'    APEX_CSS.ADD_FILE(',
'        P_NAME        => ''style.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''materialcardsstylesource''',
'    );',
'',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME        => ''chartist.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''chartistsource''',
'    );',
'',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME        => ''script.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''materialcardssource''',
'    );',
'',
'    SYS.HTP.P( ''<div id="''',
'     || APEX_PLUGIN_UTIL.ESCAPE( V_REGION_ID, TRUE )',
'     || ''"></div>'' );',
'',
'    APEX_JAVASCRIPT.ADD_ONLOAD_CODE( ''materialCards.initialize(''',
'     || APEX_JAVASCRIPT.ADD_VALUE( V_REGION_ID, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( APEX_PLUGIN.GET_AJAX_IDENTIFIER, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( P_REGION.NO_DATA_FOUND_MESSAGE, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( V_CONF_JSON, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( V_ITEMS2SUBMIT, TRUE )',
'     || APEX_JAVASCRIPT.ADD_VALUE( P_REGION.STATIC_ID, FALSE )                                    ',
'     || '');'' );',
'',
'    RETURN NULL;',
'END;'))
,p_render_function=>'F_RENDER'
,p_ajax_function=>'F_AJAX'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE'
,p_sql_min_column_count=>1
,p_sql_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>',
'SELECT ',
'       /* defines the type of the chart => icon, chart-bar, chart-line, chart-pie */',
'       ''icon'' AS CARD_TYPE,',
'       /* defines the font-apex or fon-awesome icons that should used */',
'       DECODE(ROWNUM, 1, ''fa-globe'', 2, ''fa-gear'', ''fa-user'') AS CARD_ICON,',
'       /* defines the color of the icon e.g white or #ffffff */',
'       NULL AS CARD_ICON_COLOR,',
'       /* defines the style of the header this could be just a background or maybe a nice gradient */',
'       NULL AS CARD_HEADER_STYLE,',
'       /* defines the title that should be shown */',
'       ''Material Card'' AS CARD_TITLE,',
'       /* defines the value that should be shown */',
'       ROWNUM || ''%'' AS CARD_VALUE,',
'       /* defines the subtext that should be shown */',
'       ''This is a Material Card that shows an icon and links to ValueTech'' AS CARD_FOOTER,',
'       /* defines the link when click on the card */',
'       ''https://www.valuetech.de/'' AS CARD_LINK,',
'       /* defines json data json for more information take a look for the examples in that statement or on https://gionkunz.github.io/chartist-js/ */',
'       '' '' AS CARD_CHART_DATA,',
'       /* defines the chart configuration for more information take a look on https://gionkunz.github.io/chartist-js/ . ',
'          The standard CHartist.js API has been extended: When you draw a Donut you can set "sliceWidth": number ',
'          and when you draw a horizontal bar than you can set the "strokeWidth": number for example look into examples*/',
'       NULL AS CARD_CHART_CONFIG',
'FROM   DUAL',
'CONNECT BY ROWNUM <= 3',
'',
'UNION ALL',
'',
'SELECT ''chart-bar'' AS CARD_TYPE,',
'       ''fa-bar-chart'' AS CARD_ICON,',
'       NULL AS CARD_ICON_COLOR,',
'       NULL AS CARD_HEADER_STYLE,',
'       ''Material Card with bar chart'' AS CARD_TITLE,',
'       ''100%'' AS CARD_VALUE,',
'       ''This is a Material Card that shows a bar chart and links to ValueTech'' AS CARD_FOOTER,',
'       ''https://www.valuetech.de/'' AS CARD_LINK,',
'       ''{',
'          "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'          "series": [[12, 9, 7, 8, 5], [2, 1, 3.5, 7, 3], [1, 3, 4, 5, 6]]',
'        }'' AS CARD_CHART_DATA,',
'       NULL AS CARD_CHART_CONFIG',
'FROM   DUAL',
'',
'UNION ALL',
'',
'SELECT ''chart-line'' AS CARD_TYPE,',
'       ''fa-line-chart'' AS CARD_ICON,',
'       NULL AS CARD_ICON_COLOR,',
'       NULL AS CARD_HEADER_STYLE,',
'       ''Material Card with line chart'' AS CARD_TITLE,',
'       ''100%'' AS CARD_VALUE,',
'       ''This is a Material Card that shows a line chart and links to ValueTech'' AS CARD_FOOTER,',
'       ''https://www.valuetech.de/'' AS CARD_LINK,',
'       ''{',
'          "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'          "series": [[12, 9, 7, 8, 5]]',
'        }'' AS CARD_CHART_DATA,',
'       ''{',
'            "low": 0,',
'            "showArea": true',
'        }'' AS CARD_CHART_CONFIG',
'FROM   DUAL',
'',
'UNION ALL',
'',
'SELECT ''chart-pie'' AS CARD_TYPE,',
'       ''fa-pie-chart'' AS CARD_ICON,',
'       NULL AS CARD_ICON_COLOR,',
'       NULL AS CARD_HEADER_STYLE,',
'       ''Material Card with pie chart'' AS CARD_TITLE,',
'       ''100%'' AS CARD_VALUE,',
'       ''This is a Material Card that shows a pie chart and links to ValueTech'' AS CARD_FOOTER,',
'       ''https://www.valuetech.de/'' AS CARD_LINK,',
'       ''{             ',
'          "labels": ["Mo", "Tue", "Wed", "Th", "Fr"],',
'          "series": [12, 9, 7, 8, 5]',
'        }'' AS CARD_CHART_DATA,',
'       NULL AS CARD_CHART_CONFIG',
'FROM   DUAL ',
'</pre>'))
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>'This Plug-in is used to draw some nice material design cards in apex. Just add this region plug-in on your page and look into the help tab to learn about what you have to todo in sql statement. Normally when you add this Plug-in to your page the Defa'
||'ult SQL Statement will be set automatically to your Region SQL Source so you can have a look at your finished page to see that everything works. The Cards can just show an icon or some nice responsive charts. The Cards itself are also responsive with'
||' tehir own responsive grid so you can use them also in a not responsive theme. For licenses please take a look at the comments.'
,p_version_identifier=>'1.1'
,p_about_url=>'https://github.com/RonnyWeiss/Material-Dashboard-Cards-as-HTML-or-for-Apex'
,p_plugin_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Licenses:',
'',
'Charts:',
'',
'https://gionkunz.github.io/chartist-js/:',
'',
'Copyright (c) 2013 Gion Kunz <gion.kunz@gmail.com>',
'',
'Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modi'
||'fy, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:',
'',
'The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.',
'',
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDE'
||'RS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.',
'',
'Cards Css:',
'',
'https://github.com/creativetimofficial/material-dashboard:',
'',
'MIT License',
'',
'Copyright (c) 2017 Creative Tim',
'',
'Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modi'
||'fy, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:',
'',
'The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.',
'',
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDE'
||'RS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.'))
,p_files_version=>17
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(25165403881365800)
,p_plugin_id=>wwv_flow_api.id(25154239159342583)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'ConfigJSON'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_default_value=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'{',
'  "cardWidth": 4,',
'  "refresh": 10',
'}'))
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>',
'{',
'  "cardWidth": 4,',
'  "refresh": 0',
'}',
'</pre>',
'<br>',
'<h3>Explanation:</h3>',
'  <dl>',
'  <dt>cardWidth (number)</dt>',
'  <dd>width per card between 1 and 12</dd>',
'  <dl>',
'  <dt>refresh (number)</dt>',
'  <dd>wrefresh time of cards in seconds if 0 then no refresh will be set</dd>'))
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '5468697320736F667477617265206973206C6963656E73656420756E6465723A0D0A0D0A4D4954204C6963656E73650D0A0D0A5065726D697373696F6E20697320686572656279206772616E7465642C2066726565206F66206368617267652C20746F20';
wwv_flow_api.g_varchar2_table(2) := '616E7920706572736F6E206F627461696E696E67206120636F7079206F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E746174696F6E2066696C657320287468652022536F66747761726522292C20746F';
wwv_flow_api.g_varchar2_table(3) := '206465616C20696E2074686520536F66747761726520776974686F7574207265737472696374696F6E2C20696E636C7564696E6720776974686F7574206C696D69746174696F6E207468652072696768747320746F207573652C20636F70792C206D6F64';
wwv_flow_api.g_varchar2_table(4) := '6966792C206D657267652C207075626C6973682C20646973747269627574652C207375626C6963656E73652C20616E642F6F722073656C6C20636F70696573206F662074686520536F6674776172652C20616E6420746F207065726D697420706572736F';
wwv_flow_api.g_varchar2_table(5) := '6E7320746F2077686F6D2074686520536F667477617265206973206675726E697368656420746F20646F20736F2C207375626A65637420746F2074686520666F6C6C6F77696E6720636F6E646974696F6E733A0D0A0D0A5468652061626F766520636F70';
wwv_flow_api.g_varchar2_table(6) := '797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C20626520696E636C7564656420696E20616C6C20636F70696573206F72207375627374616E7469616C20706F7274696F6E73206F6620';
wwv_flow_api.g_varchar2_table(7) := '74686520536F6674776172652E0D0A0D0A54484520534F4654574152452049532050524F564944454420224153204953222C20574954484F55542057415252414E5459204F4620414E59204B494E442C2045585052455353204F5220494D504C4945442C';
wwv_flow_api.g_varchar2_table(8) := '20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E54494553204F46204D45524348414E544142494C4954592C204649544E45535320464F52204120504152544943554C415220505552504F534520414E';
wwv_flow_api.g_varchar2_table(9) := '44204E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C4C2054484520415554484F5253204F5220434F5059524947485420484F4C44455253204245204C4941424C4520464F5220414E5920434C41494D2C2044414D4147';
wwv_flow_api.g_varchar2_table(10) := '4553204F52204F54484552204C494142494C4954592C205748455448455220494E20414E20414354494F4E204F4620434F4E54524143542C20544F5254204F52204F54484552574953452C2041524953494E472046524F4D2C204F5554204F46204F5220';
wwv_flow_api.g_varchar2_table(11) := '494E20434F4E4E454354494F4E20574954482054484520534F465457415245204F522054484520555345204F52204F54484552204445414C494E475320494E2054484520534F4654574152452E0D0A0D0A616E6420757365732074686520666F6C6C6F77';
wwv_flow_api.g_varchar2_table(12) := '696E67206C696261726965733A0D0A0D0A4C6963656E7365733A0D0A0D0A4368617274733A0D0A0D0A68747470733A2F2F67696F6E6B756E7A2E6769746875622E696F2F63686172746973742D6A732F3A0D0A0D0A4D4954204C6963656E73650D0A0D0A';
wwv_flow_api.g_varchar2_table(13) := '436F707972696768742028632920323031332047696F6E204B756E7A203C67696F6E2E6B756E7A40676D61696C2E636F6D3E0D0A0D0A5065726D697373696F6E20697320686572656279206772616E7465642C2066726565206F66206368617267652C20';
wwv_flow_api.g_varchar2_table(14) := '746F20616E7920706572736F6E206F627461696E696E67206120636F7079206F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E746174696F6E2066696C657320287468652022536F66747761726522292C';
wwv_flow_api.g_varchar2_table(15) := '20746F206465616C20696E2074686520536F66747761726520776974686F7574207265737472696374696F6E2C20696E636C7564696E6720776974686F7574206C696D69746174696F6E207468652072696768747320746F207573652C20636F70792C20';
wwv_flow_api.g_varchar2_table(16) := '6D6F646966792C206D657267652C207075626C6973682C20646973747269627574652C207375626C6963656E73652C20616E642F6F722073656C6C20636F70696573206F662074686520536F6674776172652C20616E6420746F207065726D6974207065';
wwv_flow_api.g_varchar2_table(17) := '72736F6E7320746F2077686F6D2074686520536F667477617265206973206675726E697368656420746F20646F20736F2C207375626A65637420746F2074686520666F6C6C6F77696E6720636F6E646974696F6E733A0D0A0D0A5468652061626F766520';
wwv_flow_api.g_varchar2_table(18) := '636F70797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C20626520696E636C7564656420696E20616C6C20636F70696573206F72207375627374616E7469616C20706F7274696F6E7320';
wwv_flow_api.g_varchar2_table(19) := '6F662074686520536F6674776172652E0D0A0D0A54484520534F4654574152452049532050524F564944454420224153204953222C20574954484F55542057415252414E5459204F4620414E59204B494E442C2045585052455353204F5220494D504C49';
wwv_flow_api.g_varchar2_table(20) := '45442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E54494553204F46204D45524348414E544142494C4954592C204649544E45535320464F52204120504152544943554C415220505552504F5345';
wwv_flow_api.g_varchar2_table(21) := '20414E44204E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C4C2054484520415554484F5253204F5220434F5059524947485420484F4C44455253204245204C4941424C4520464F5220414E5920434C41494D2C204441';
wwv_flow_api.g_varchar2_table(22) := '4D41474553204F52204F54484552204C494142494C4954592C205748455448455220494E20414E20414354494F4E204F4620434F4E54524143542C20544F5254204F52204F54484552574953452C2041524953494E472046524F4D2C204F5554204F4620';
wwv_flow_api.g_varchar2_table(23) := '4F5220494E20434F4E4E454354494F4E20574954482054484520534F465457415245204F522054484520555345204F52204F54484552204445414C494E475320494E2054484520534F4654574152452E0D0A0D0A4361726473204373733A0D0A0D0A6874';
wwv_flow_api.g_varchar2_table(24) := '7470733A2F2F6769746875622E636F6D2F637265617469766574696D6F6666696369616C2F6D6174657269616C2D64617368626F6172643A0D0A0D0A4D4954204C6963656E73650D0A0D0A436F7079726967687420286329203230313720437265617469';
wwv_flow_api.g_varchar2_table(25) := '76652054696D0D0A0D0A5065726D697373696F6E20697320686572656279206772616E7465642C2066726565206F66206368617267652C20746F20616E7920706572736F6E206F627461696E696E67206120636F7079206F66207468697320736F667477';
wwv_flow_api.g_varchar2_table(26) := '61726520616E64206173736F63696174656420646F63756D656E746174696F6E2066696C657320287468652022536F66747761726522292C20746F206465616C20696E2074686520536F66747761726520776974686F7574207265737472696374696F6E';
wwv_flow_api.g_varchar2_table(27) := '2C20696E636C7564696E6720776974686F7574206C696D69746174696F6E207468652072696768747320746F207573652C20636F70792C206D6F646966792C206D657267652C207075626C6973682C20646973747269627574652C207375626C6963656E';
wwv_flow_api.g_varchar2_table(28) := '73652C20616E642F6F722073656C6C20636F70696573206F662074686520536F6674776172652C20616E6420746F207065726D697420706572736F6E7320746F2077686F6D2074686520536F667477617265206973206675726E697368656420746F2064';
wwv_flow_api.g_varchar2_table(29) := '6F20736F2C207375626A65637420746F2074686520666F6C6C6F77696E6720636F6E646974696F6E733A0D0A0D0A5468652061626F766520636F70797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F7469636520';
wwv_flow_api.g_varchar2_table(30) := '7368616C6C20626520696E636C7564656420696E20616C6C20636F70696573206F72207375627374616E7469616C20706F7274696F6E73206F662074686520536F6674776172652E0D0A0D0A54484520534F4654574152452049532050524F5649444544';
wwv_flow_api.g_varchar2_table(31) := '20224153204953222C20574954484F55542057415252414E5459204F4620414E59204B494E442C2045585052455353204F5220494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E54';
wwv_flow_api.g_varchar2_table(32) := '494553204F46204D45524348414E544142494C4954592C204649544E45535320464F52204120504152544943554C415220505552504F534520414E44204E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C4C2054484520';
wwv_flow_api.g_varchar2_table(33) := '415554484F5253204F5220434F5059524947485420484F4C44455253204245204C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F54484552204C494142494C4954592C205748455448455220494E20414E2041435449';
wwv_flow_api.g_varchar2_table(34) := '4F4E204F4620434F4E54524143542C20544F5254204F52204F54484552574953452C2041524953494E472046524F4D2C204F5554204F46204F5220494E20434F4E4E454354494F4E20574954482054484520534F465457415245204F5220544845205553';
wwv_flow_api.g_varchar2_table(35) := '45204F52204F54484552204445414C494E475320494E2054484520534F4654574152452E0D0A0D0A6A51756572793A0D0A0D0A68747470733A2F2F6769746875622E636F6D2F6A71756572792F6A71756572790D0A0D0A436F70797269676874204A5320';
wwv_flow_api.g_varchar2_table(36) := '466F756E646174696F6E20616E64206F7468657220636F6E7472696275746F72732C2068747470733A2F2F6A732E666F756E646174696F6E2F0D0A0D0A5468697320736F66747761726520636F6E7369737473206F6620766F6C756E7461727920636F6E';
wwv_flow_api.g_varchar2_table(37) := '747269627574696F6E73206D616465206279206D616E790D0A696E646976696475616C732E20466F7220657861637420636F6E747269627574696F6E20686973746F72792C2073656520746865207265766973696F6E20686973746F72790D0A61766169';
wwv_flow_api.g_varchar2_table(38) := '6C61626C652061742068747470733A2F2F6769746875622E636F6D2F6A71756572792F6A71756572790D0A0D0A54686520666F6C6C6F77696E67206C6963656E7365206170706C69657320746F20616C6C207061727473206F66207468697320736F6674';
wwv_flow_api.g_varchar2_table(39) := '77617265206578636570742061730D0A646F63756D656E7465642062656C6F773A0D0A0D0A3D3D3D3D0D0A0D0A5065726D697373696F6E20697320686572656279206772616E7465642C2066726565206F66206368617267652C20746F20616E79207065';
wwv_flow_api.g_varchar2_table(40) := '72736F6E206F627461696E696E670D0A6120636F7079206F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E746174696F6E2066696C657320287468650D0A22536F66747761726522292C20746F20646561';
wwv_flow_api.g_varchar2_table(41) := '6C20696E2074686520536F66747761726520776974686F7574207265737472696374696F6E2C20696E636C7564696E670D0A776974686F7574206C696D69746174696F6E207468652072696768747320746F207573652C20636F70792C206D6F64696679';
wwv_flow_api.g_varchar2_table(42) := '2C206D657267652C207075626C6973682C0D0A646973747269627574652C207375626C6963656E73652C20616E642F6F722073656C6C20636F70696573206F662074686520536F6674776172652C20616E6420746F0D0A7065726D697420706572736F6E';
wwv_flow_api.g_varchar2_table(43) := '7320746F2077686F6D2074686520536F667477617265206973206675726E697368656420746F20646F20736F2C207375626A65637420746F0D0A74686520666F6C6C6F77696E6720636F6E646974696F6E733A0D0A0D0A5468652061626F766520636F70';
wwv_flow_api.g_varchar2_table(44) := '797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C2062650D0A696E636C7564656420696E20616C6C20636F70696573206F72207375627374616E7469616C20706F7274696F6E73206F66';
wwv_flow_api.g_varchar2_table(45) := '2074686520536F6674776172652E0D0A0D0A54484520534F4654574152452049532050524F564944454420224153204953222C20574954484F55542057415252414E5459204F4620414E59204B494E442C0D0A45585052455353204F5220494D504C4945';
wwv_flow_api.g_varchar2_table(46) := '442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E54494553204F460D0A4D45524348414E544142494C4954592C204649544E45535320464F52204120504152544943554C415220505552504F5345';
wwv_flow_api.g_varchar2_table(47) := '20414E440D0A4E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C4C2054484520415554484F5253204F5220434F5059524947485420484F4C444552532042450D0A4C4941424C4520464F5220414E5920434C41494D2C20';
wwv_flow_api.g_varchar2_table(48) := '44414D41474553204F52204F54484552204C494142494C4954592C205748455448455220494E20414E20414354494F4E0D0A4F4620434F4E54524143542C20544F5254204F52204F54484552574953452C2041524953494E472046524F4D2C204F555420';
wwv_flow_api.g_varchar2_table(49) := '4F46204F5220494E20434F4E4E454354494F4E0D0A574954482054484520534F465457415245204F522054484520555345204F52204F54484552204445414C494E475320494E2054484520534F4654574152452E0D0A0D0A3D3D3D3D0D0A0D0A416C6C20';
wwv_flow_api.g_varchar2_table(50) := '66696C6573206C6F636174656420696E20746865206E6F64655F6D6F64756C657320616E642065787465726E616C206469726563746F72696573206172650D0A65787465726E616C6C79206D61696E7461696E6564206C69627261726965732075736564';
wwv_flow_api.g_varchar2_table(51) := '206279207468697320736F66747761726520776869636820686176652074686569720D0A6F776E206C6963656E7365733B207765207265636F6D6D656E6420796F752072656164207468656D2C206173207468656972207465726D73206D617920646966';
wwv_flow_api.g_varchar2_table(52) := '6665722066726F6D0D0A746865207465726D732061626F76652E0D0A0D0A626F6F7473747261703A0D0A0D0A68747470733A2F2F6769746875622E636F6D2F747762732F626F6F7473747261700D0A0D0A546865204D4954204C6963656E736520284D49';
wwv_flow_api.g_varchar2_table(53) := '54290D0A0D0A436F707972696768742028632920323031312D3230313720547769747465722C20496E632E0D0A436F707972696768742028632920323031312D323031372054686520426F6F74737472617020417574686F72730D0A0D0A5065726D6973';
wwv_flow_api.g_varchar2_table(54) := '73696F6E20697320686572656279206772616E7465642C2066726565206F66206368617267652C20746F20616E7920706572736F6E206F627461696E696E67206120636F70790D0A6F66207468697320736F66747761726520616E64206173736F636961';
wwv_flow_api.g_varchar2_table(55) := '74656420646F63756D656E746174696F6E2066696C657320287468652022536F66747761726522292C20746F206465616C0D0A696E2074686520536F66747761726520776974686F7574207265737472696374696F6E2C20696E636C7564696E67207769';
wwv_flow_api.g_varchar2_table(56) := '74686F7574206C696D69746174696F6E20746865207269676874730D0A746F207573652C20636F70792C206D6F646966792C206D657267652C207075626C6973682C20646973747269627574652C207375626C6963656E73652C20616E642F6F72207365';
wwv_flow_api.g_varchar2_table(57) := '6C6C0D0A636F70696573206F662074686520536F6674776172652C20616E6420746F207065726D697420706572736F6E7320746F2077686F6D2074686520536F6674776172652069730D0A6675726E697368656420746F20646F20736F2C207375626A65';
wwv_flow_api.g_varchar2_table(58) := '637420746F2074686520666F6C6C6F77696E6720636F6E646974696F6E733A0D0A0D0A5468652061626F766520636F70797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C20626520696E';
wwv_flow_api.g_varchar2_table(59) := '636C7564656420696E0D0A616C6C20636F70696573206F72207375627374616E7469616C20706F7274696F6E73206F662074686520536F6674776172652E0D0A0D0A54484520534F4654574152452049532050524F564944454420224153204953222C20';
wwv_flow_api.g_varchar2_table(60) := '574954484F55542057415252414E5459204F4620414E59204B494E442C2045585052455353204F520D0A494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E54494553204F46204D45';
wwv_flow_api.g_varchar2_table(61) := '524348414E544142494C4954592C0D0A4649544E45535320464F52204120504152544943554C415220505552504F534520414E44204E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C4C205448450D0A415554484F5253';
wwv_flow_api.g_varchar2_table(62) := '204F5220434F5059524947485420484F4C44455253204245204C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F544845520D0A4C494142494C4954592C205748455448455220494E20414E20414354494F4E204F4620';
wwv_flow_api.g_varchar2_table(63) := '434F4E54524143542C20544F5254204F52204F54484552574953452C2041524953494E472046524F4D2C0D0A4F5554204F46204F5220494E20434F4E4E454354494F4E20574954482054484520534F465457415245204F522054484520555345204F5220';
wwv_flow_api.g_varchar2_table(64) := '4F54484552204445414C494E475320494E0D0A54484520534F4654574152452E';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(25155338131341165)
,p_plugin_id=>wwv_flow_api.id(25154239159342583)
,p_file_name=>'LICENSE'
,p_mime_type=>'application/octet-stream'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E63742D646F75626C652D6F63746176653A61667465722C2E63742D6D616A6F722D656C6576656E74683A61667465722C2E63742D6D616A6F722D7365636F6E643A61667465722C2E63742D6D616A6F722D736576656E74683A61667465722C2E63742D';
wwv_flow_api.g_varchar2_table(2) := '6D616A6F722D73697874683A61667465722C2E63742D6D616A6F722D74656E74683A61667465722C2E63742D6D616A6F722D74686972643A61667465722C2E63742D6D616A6F722D7477656C6674683A61667465722C2E63742D6D696E6F722D7365636F';
wwv_flow_api.g_varchar2_table(3) := '6E643A61667465722C2E63742D6D696E6F722D736576656E74683A61667465722C2E63742D6D696E6F722D73697874683A61667465722C2E63742D6D696E6F722D74686972643A61667465722C2E63742D6F63746176653A61667465722C2E63742D7065';
wwv_flow_api.g_varchar2_table(4) := '72666563742D66696674683A61667465722C2E63742D706572666563742D666F757274683A61667465722C2E63742D7371756172653A61667465727B636F6E74656E743A22223B636C6561723A626F74687D2E63742D6C6162656C7B66696C6C3A726762';
wwv_flow_api.g_varchar2_table(5) := '6128302C302C302C2E34293B636F6C6F723A7267626128302C302C302C2E34293B666F6E742D73697A653A2E373572656D3B6C696E652D6865696768743A317D2E63742D677269642D6261636B67726F756E642C2E63742D6C696E657B66696C6C3A6E6F';
wwv_flow_api.g_varchar2_table(6) := '6E657D2E63742D63686172742D626172202E63742D6C6162656C2C2E63742D63686172742D6C696E65202E63742D6C6162656C7B646973706C61793A626C6F636B3B646973706C61793A2D7765626B69742D626F783B646973706C61793A2D6D6F7A2D62';
wwv_flow_api.g_varchar2_table(7) := '6F783B646973706C61793A2D6D732D666C6578626F783B646973706C61793A2D7765626B69742D666C65783B646973706C61793A666C65787D2E63742D63686172742D646F6E7574202E63742D6C6162656C2C2E63742D63686172742D706965202E6374';
wwv_flow_api.g_varchar2_table(8) := '2D6C6162656C7B646F6D696E616E742D626173656C696E653A63656E7472616C7D2E63742D6C6162656C2E63742D686F72697A6F6E74616C2E63742D73746172747B2D7765626B69742D626F782D616C69676E3A666C65782D656E643B2D7765626B6974';
wwv_flow_api.g_varchar2_table(9) := '2D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A666C65782D656E643B616C69676E2D6974656D733A666C65782D656E643B2D7765626B69742D626F782D7061636B3A666C65782D73746172743B2D7765626B';
wwv_flow_api.g_varchar2_table(10) := '69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D73746172743B6A7573746966792D636F6E74656E743A666C65782D73746172743B746578742D616C69676E3A6C6566743B7465';
wwv_flow_api.g_varchar2_table(11) := '78742D616E63686F723A73746172747D2E63742D6C6162656C2E63742D686F72697A6F6E74616C2E63742D656E647B2D7765626B69742D626F782D616C69676E3A666C65782D73746172743B2D7765626B69742D616C69676E2D6974656D733A666C6578';
wwv_flow_api.g_varchar2_table(12) := '2D73746172743B2D6D732D666C65782D616C69676E3A666C65782D73746172743B616C69676E2D6974656D733A666C65782D73746172743B2D7765626B69742D626F782D7061636B3A666C65782D73746172743B2D7765626B69742D6A7573746966792D';
wwv_flow_api.g_varchar2_table(13) := '636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D73746172743B6A7573746966792D636F6E74656E743A666C65782D73746172743B746578742D616C69676E3A6C6566743B746578742D616E63686F723A73';
wwv_flow_api.g_varchar2_table(14) := '746172747D2E63742D6C6162656C2E63742D766572746963616C2E63742D73746172747B2D7765626B69742D626F782D616C69676E3A666C65782D656E643B2D7765626B69742D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C6578';
wwv_flow_api.g_varchar2_table(15) := '2D616C69676E3A666C65782D656E643B616C69676E2D6974656D733A666C65782D656E643B2D7765626B69742D626F782D7061636B3A666C65782D656E643B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D656E643B2D6D732D';
wwv_flow_api.g_varchar2_table(16) := '666C65782D7061636B3A666C65782D656E643B6A7573746966792D636F6E74656E743A666C65782D656E643B746578742D616C69676E3A72696768743B746578742D616E63686F723A656E647D2E63742D6C6162656C2E63742D766572746963616C2E63';
wwv_flow_api.g_varchar2_table(17) := '742D656E647B2D7765626B69742D626F782D616C69676E3A666C65782D656E643B2D7765626B69742D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A666C65782D656E643B616C69676E2D6974656D733A666C';
wwv_flow_api.g_varchar2_table(18) := '65782D656E643B2D7765626B69742D626F782D7061636B3A666C65782D73746172743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D73746172743B6A75737469';
wwv_flow_api.g_varchar2_table(19) := '66792D636F6E74656E743A666C65782D73746172743B746578742D616C69676E3A6C6566743B746578742D616E63686F723A73746172747D2E63742D63686172742D626172202E63742D6C6162656C2E63742D686F72697A6F6E74616C2E63742D737461';
wwv_flow_api.g_varchar2_table(20) := '72747B2D7765626B69742D626F782D616C69676E3A666C65782D656E643B2D7765626B69742D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A666C65782D656E643B616C69676E2D6974656D733A666C65782D';
wwv_flow_api.g_varchar2_table(21) := '656E643B2D7765626B69742D626F782D7061636B3A63656E7465723B2D7765626B69742D6A7573746966792D636F6E74656E743A63656E7465723B2D6D732D666C65782D7061636B3A63656E7465723B6A7573746966792D636F6E74656E743A63656E74';
wwv_flow_api.g_varchar2_table(22) := '65723B746578742D616C69676E3A63656E7465723B746578742D616E63686F723A73746172747D2E63742D63686172742D626172202E63742D6C6162656C2E63742D686F72697A6F6E74616C2E63742D656E647B2D7765626B69742D626F782D616C6967';
wwv_flow_api.g_varchar2_table(23) := '6E3A666C65782D73746172743B2D7765626B69742D616C69676E2D6974656D733A666C65782D73746172743B2D6D732D666C65782D616C69676E3A666C65782D73746172743B616C69676E2D6974656D733A666C65782D73746172743B2D7765626B6974';
wwv_flow_api.g_varchar2_table(24) := '2D626F782D7061636B3A63656E7465723B2D7765626B69742D6A7573746966792D636F6E74656E743A63656E7465723B2D6D732D666C65782D7061636B3A63656E7465723B6A7573746966792D636F6E74656E743A63656E7465723B746578742D616C69';
wwv_flow_api.g_varchar2_table(25) := '676E3A63656E7465723B746578742D616E63686F723A73746172747D2E63742D63686172742D6261722E63742D686F72697A6F6E74616C2D62617273202E63742D6C6162656C2E63742D686F72697A6F6E74616C2E63742D73746172747B2D7765626B69';
wwv_flow_api.g_varchar2_table(26) := '742D626F782D616C69676E3A666C65782D656E643B2D7765626B69742D616C69676E2D6974656D733A666C65782D656E643B2D6D732D666C65782D616C69676E3A666C65782D656E643B616C69676E2D6974656D733A666C65782D656E643B2D7765626B';
wwv_flow_api.g_varchar2_table(27) := '69742D626F782D7061636B3A666C65782D73746172743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D73746172743B6A7573746966792D636F6E74656E743A66';
wwv_flow_api.g_varchar2_table(28) := '6C65782D73746172743B746578742D616C69676E3A6C6566743B746578742D616E63686F723A73746172747D2E63742D63686172742D6261722E63742D686F72697A6F6E74616C2D62617273202E63742D6C6162656C2E63742D686F72697A6F6E74616C';
wwv_flow_api.g_varchar2_table(29) := '2E63742D656E647B2D7765626B69742D626F782D616C69676E3A666C65782D73746172743B2D7765626B69742D616C69676E2D6974656D733A666C65782D73746172743B2D6D732D666C65782D616C69676E3A666C65782D73746172743B616C69676E2D';
wwv_flow_api.g_varchar2_table(30) := '6974656D733A666C65782D73746172743B2D7765626B69742D626F782D7061636B3A666C65782D73746172743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D73';
wwv_flow_api.g_varchar2_table(31) := '746172743B6A7573746966792D636F6E74656E743A666C65782D73746172743B746578742D616C69676E3A6C6566743B746578742D616E63686F723A73746172747D2E63742D63686172742D6261722E63742D686F72697A6F6E74616C2D62617273202E';
wwv_flow_api.g_varchar2_table(32) := '63742D6C6162656C2E63742D766572746963616C2E63742D73746172747B2D7765626B69742D626F782D616C69676E3A63656E7465723B2D7765626B69742D616C69676E2D6974656D733A63656E7465723B2D6D732D666C65782D616C69676E3A63656E';
wwv_flow_api.g_varchar2_table(33) := '7465723B616C69676E2D6974656D733A63656E7465723B2D7765626B69742D626F782D7061636B3A666C65782D656E643B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D656E643B2D6D732D666C65782D7061636B3A666C6578';
wwv_flow_api.g_varchar2_table(34) := '2D656E643B6A7573746966792D636F6E74656E743A666C65782D656E643B746578742D616C69676E3A72696768743B746578742D616E63686F723A656E647D2E63742D63686172742D6261722E63742D686F72697A6F6E74616C2D62617273202E63742D';
wwv_flow_api.g_varchar2_table(35) := '6C6162656C2E63742D766572746963616C2E63742D656E647B2D7765626B69742D626F782D616C69676E3A63656E7465723B2D7765626B69742D616C69676E2D6974656D733A63656E7465723B2D6D732D666C65782D616C69676E3A63656E7465723B61';
wwv_flow_api.g_varchar2_table(36) := '6C69676E2D6974656D733A63656E7465723B2D7765626B69742D626F782D7061636B3A666C65782D73746172743B2D7765626B69742D6A7573746966792D636F6E74656E743A666C65782D73746172743B2D6D732D666C65782D7061636B3A666C65782D';
wwv_flow_api.g_varchar2_table(37) := '73746172743B6A7573746966792D636F6E74656E743A666C65782D73746172743B746578742D616C69676E3A6C6566743B746578742D616E63686F723A656E647D2E63742D677269647B7374726F6B653A7267626128302C302C302C2E32293B7374726F';
wwv_flow_api.g_varchar2_table(38) := '6B652D77696474683A3170783B7374726F6B652D6461736861727261793A3270787D2E63742D706F696E747B7374726F6B652D77696474683A313070783B7374726F6B652D6C696E656361703A726F756E647D2E63742D6C696E657B7374726F6B652D77';
wwv_flow_api.g_varchar2_table(39) := '696474683A3470787D2E63742D617265617B7374726F6B653A6E6F6E653B66696C6C2D6F7061636974793A2E317D2E63742D6261727B66696C6C3A6E6F6E653B7374726F6B652D77696474683A313070787D2E63742D736C6963652D646F6E75747B6669';
wwv_flow_api.g_varchar2_table(40) := '6C6C3A6E6F6E653B7374726F6B652D77696474683A363070787D2E63742D7365726965732D61202E63742D6261722C2E63742D7365726965732D61202E63742D6C696E652C2E63742D7365726965732D61202E63742D706F696E742C2E63742D73657269';
wwv_flow_api.g_varchar2_table(41) := '65732D61202E63742D736C6963652D646F6E75747B7374726F6B653A236437303230367D2E63742D7365726965732D61202E63742D617265612C2E63742D7365726965732D61202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D736572';
wwv_flow_api.g_varchar2_table(42) := '6965732D61202E63742D736C6963652D7069657B66696C6C3A236437303230367D2E63742D7365726965732D62202E63742D6261722C2E63742D7365726965732D62202E63742D6C696E652C2E63742D7365726965732D62202E63742D706F696E742C2E';
wwv_flow_api.g_varchar2_table(43) := '63742D7365726965732D62202E63742D736C6963652D646F6E75747B7374726F6B653A236630356234667D2E63742D7365726965732D62202E63742D617265612C2E63742D7365726965732D62202E63742D736C6963652D646F6E75742D736F6C69642C';
wwv_flow_api.g_varchar2_table(44) := '2E63742D7365726965732D62202E63742D736C6963652D7069657B66696C6C3A236630356234667D2E63742D7365726965732D63202E63742D6261722C2E63742D7365726965732D63202E63742D6C696E652C2E63742D7365726965732D63202E63742D';
wwv_flow_api.g_varchar2_table(45) := '706F696E742C2E63742D7365726965732D63202E63742D736C6963652D646F6E75747B7374726F6B653A236634633633647D2E63742D7365726965732D63202E63742D617265612C2E63742D7365726965732D63202E63742D736C6963652D646F6E7574';
wwv_flow_api.g_varchar2_table(46) := '2D736F6C69642C2E63742D7365726965732D63202E63742D736C6963652D7069657B66696C6C3A236634633633647D2E63742D7365726965732D64202E63742D6261722C2E63742D7365726965732D64202E63742D6C696E652C2E63742D736572696573';
wwv_flow_api.g_varchar2_table(47) := '2D64202E63742D706F696E742C2E63742D7365726965732D64202E63742D736C6963652D646F6E75747B7374726F6B653A236431373930357D2E63742D7365726965732D64202E63742D617265612C2E63742D7365726965732D64202E63742D736C6963';
wwv_flow_api.g_varchar2_table(48) := '652D646F6E75742D736F6C69642C2E63742D7365726965732D64202E63742D736C6963652D7069657B66696C6C3A236431373930357D2E63742D7365726965732D65202E63742D6261722C2E63742D7365726965732D65202E63742D6C696E652C2E6374';
wwv_flow_api.g_varchar2_table(49) := '2D7365726965732D65202E63742D706F696E742C2E63742D7365726965732D65202E63742D736C6963652D646F6E75747B7374726F6B653A233435336433667D2E63742D7365726965732D65202E63742D617265612C2E63742D7365726965732D65202E';
wwv_flow_api.g_varchar2_table(50) := '63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D65202E63742D736C6963652D7069657B66696C6C3A233435336433667D2E63742D7365726965732D66202E63742D6261722C2E63742D7365726965732D66202E63742D6C';
wwv_flow_api.g_varchar2_table(51) := '696E652C2E63742D7365726965732D66202E63742D706F696E742C2E63742D7365726965732D66202E63742D736C6963652D646F6E75747B7374726F6B653A233539393232627D2E63742D7365726965732D66202E63742D617265612C2E63742D736572';
wwv_flow_api.g_varchar2_table(52) := '6965732D66202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D66202E63742D736C6963652D7069657B66696C6C3A233539393232627D2E63742D7365726965732D67202E63742D6261722C2E63742D7365726965732D';
wwv_flow_api.g_varchar2_table(53) := '67202E63742D6C696E652C2E63742D7365726965732D67202E63742D706F696E742C2E63742D7365726965732D67202E63742D736C6963652D646F6E75747B7374726F6B653A233035343464337D2E63742D7365726965732D67202E63742D617265612C';
wwv_flow_api.g_varchar2_table(54) := '2E63742D7365726965732D67202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D67202E63742D736C6963652D7069657B66696C6C3A233035343464337D2E63742D7365726965732D68202E63742D6261722C2E63742D';
wwv_flow_api.g_varchar2_table(55) := '7365726965732D68202E63742D6C696E652C2E63742D7365726965732D68202E63742D706F696E742C2E63742D7365726965732D68202E63742D736C6963652D646F6E75747B7374726F6B653A233662303339327D2E63742D7365726965732D68202E63';
wwv_flow_api.g_varchar2_table(56) := '742D617265612C2E63742D7365726965732D68202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D68202E63742D736C6963652D7069657B66696C6C3A233662303339327D2E63742D7365726965732D69202E63742D62';
wwv_flow_api.g_varchar2_table(57) := '61722C2E63742D7365726965732D69202E63742D6C696E652C2E63742D7365726965732D69202E63742D706F696E742C2E63742D7365726965732D69202E63742D736C6963652D646F6E75747B7374726F6B653A236630356234667D2E63742D73657269';
wwv_flow_api.g_varchar2_table(58) := '65732D69202E63742D617265612C2E63742D7365726965732D69202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D69202E63742D736C6963652D7069657B66696C6C3A236630356234667D2E63742D7365726965732D';
wwv_flow_api.g_varchar2_table(59) := '6A202E63742D6261722C2E63742D7365726965732D6A202E63742D6C696E652C2E63742D7365726965732D6A202E63742D706F696E742C2E63742D7365726965732D6A202E63742D736C6963652D646F6E75747B7374726F6B653A236464613435387D2E';
wwv_flow_api.g_varchar2_table(60) := '63742D7365726965732D6A202E63742D617265612C2E63742D7365726965732D6A202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D6A202E63742D736C6963652D7069657B66696C6C3A236464613435387D2E63742D';
wwv_flow_api.g_varchar2_table(61) := '7365726965732D6B202E63742D6261722C2E63742D7365726965732D6B202E63742D6C696E652C2E63742D7365726965732D6B202E63742D706F696E742C2E63742D7365726965732D6B202E63742D736C6963652D646F6E75747B7374726F6B653A2365';
wwv_flow_api.g_varchar2_table(62) := '61636637647D2E63742D7365726965732D6B202E63742D617265612C2E63742D7365726965732D6B202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D6B202E63742D736C6963652D7069657B66696C6C3A2365616366';
wwv_flow_api.g_varchar2_table(63) := '37647D2E63742D7365726965732D6C202E63742D6261722C2E63742D7365726965732D6C202E63742D6C696E652C2E63742D7365726965732D6C202E63742D706F696E742C2E63742D7365726965732D6C202E63742D736C6963652D646F6E75747B7374';
wwv_flow_api.g_varchar2_table(64) := '726F6B653A233836373937647D2E63742D7365726965732D6C202E63742D617265612C2E63742D7365726965732D6C202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D6C202E63742D736C6963652D7069657B66696C';
wwv_flow_api.g_varchar2_table(65) := '6C3A233836373937647D2E63742D7365726965732D6D202E63742D6261722C2E63742D7365726965732D6D202E63742D6C696E652C2E63742D7365726965732D6D202E63742D706F696E742C2E63742D7365726965732D6D202E63742D736C6963652D64';
wwv_flow_api.g_varchar2_table(66) := '6F6E75747B7374726F6B653A236232633332367D2E63742D7365726965732D6D202E63742D617265612C2E63742D7365726965732D6D202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D6D202E63742D736C6963652D';
wwv_flow_api.g_varchar2_table(67) := '7069657B66696C6C3A236232633332367D2E63742D7365726965732D6E202E63742D6261722C2E63742D7365726965732D6E202E63742D6C696E652C2E63742D7365726965732D6E202E63742D706F696E742C2E63742D7365726965732D6E202E63742D';
wwv_flow_api.g_varchar2_table(68) := '736C6963652D646F6E75747B7374726F6B653A233631383865327D2E63742D7365726965732D6E202E63742D617265612C2E63742D7365726965732D6E202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965732D6E202E6374';
wwv_flow_api.g_varchar2_table(69) := '2D736C6963652D7069657B66696C6C3A233631383865327D2E63742D7365726965732D6F202E63742D6261722C2E63742D7365726965732D6F202E63742D6C696E652C2E63742D7365726965732D6F202E63742D706F696E742C2E63742D736572696573';
wwv_flow_api.g_varchar2_table(70) := '2D6F202E63742D736C6963652D646F6E75747B7374726F6B653A236137343863617D2E63742D7365726965732D6F202E63742D617265612C2E63742D7365726965732D6F202E63742D736C6963652D646F6E75742D736F6C69642C2E63742D7365726965';
wwv_flow_api.g_varchar2_table(71) := '732D6F202E63742D736C6963652D7069657B66696C6C3A236137343863617D2E63742D7371756172657B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D7371756172653A6265666F';
wwv_flow_api.g_varchar2_table(72) := '72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A313030257D2E63742D7371756172653A61667465727B646973706C6179';
wwv_flow_api.g_varchar2_table(73) := '3A7461626C657D2E63742D7371756172653E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D696E6F722D7365636F6E647B646973706C61793A626C6F636B3B706F';
wwv_flow_api.g_varchar2_table(74) := '736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D696E6F722D7365636F6E643A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768';
wwv_flow_api.g_varchar2_table(75) := '743A303B70616464696E672D626F74746F6D3A39332E3735257D2E63742D6D696E6F722D7365636F6E643A61667465727B646973706C61793A7461626C657D2E63742D6D696E6F722D7365636F6E643E7376677B646973706C61793A626C6F636B3B706F';
wwv_flow_api.g_varchar2_table(76) := '736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D616A6F722D7365636F6E647B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D73';
wwv_flow_api.g_varchar2_table(77) := '65636F6E643A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A38382E38383838383838383839257D2E63742D';
wwv_flow_api.g_varchar2_table(78) := '6D616A6F722D7365636F6E643A61667465727B646973706C61793A7461626C657D2E63742D6D616A6F722D7365636F6E643E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E';
wwv_flow_api.g_varchar2_table(79) := '63742D6D696E6F722D74686972647B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D696E6F722D74686972643A6265666F72657B646973706C61793A626C6F636B3B666C6F6174';
wwv_flow_api.g_varchar2_table(80) := '3A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A38332E33333333333333333333257D2E63742D6D696E6F722D74686972643A61667465727B646973706C61793A7461626C657D';
wwv_flow_api.g_varchar2_table(81) := '2E63742D6D696E6F722D74686972643E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D616A6F722D74686972647B646973706C61793A626C6F636B3B706F736974';
wwv_flow_api.g_varchar2_table(82) := '696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D74686972643A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B';
wwv_flow_api.g_varchar2_table(83) := '70616464696E672D626F74746F6D3A3830257D2E63742D6D616A6F722D74686972643A61667465727B646973706C61793A7461626C657D2E63742D6D616A6F722D74686972643E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162';
wwv_flow_api.g_varchar2_table(84) := '736F6C7574653B746F703A303B6C6566743A307D2E63742D706572666563742D666F757274687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D706572666563742D666F75727468';
wwv_flow_api.g_varchar2_table(85) := '3A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A3735257D2E63742D706572666563742D666F757274683A61';
wwv_flow_api.g_varchar2_table(86) := '667465727B646973706C61793A7461626C657D2E63742D706572666563742D666F757274683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D706572666563742D66';
wwv_flow_api.g_varchar2_table(87) := '696674687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D706572666563742D66696674683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F';
wwv_flow_api.g_varchar2_table(88) := '6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A36362E36363636363636363637257D2E63742D706572666563742D66696674683A61667465727B646973706C61793A7461626C657D2E63742D7065';
wwv_flow_api.g_varchar2_table(89) := '72666563742D66696674683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D696E6F722D73697874687B646973706C61793A626C6F636B3B706F736974696F6E3A';
wwv_flow_api.g_varchar2_table(90) := '72656C61746976653B77696474683A313030257D2E63742D6D696E6F722D73697874683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464';
wwv_flow_api.g_varchar2_table(91) := '696E672D626F74746F6D3A36322E35257D2E63742D6D696E6F722D73697874683A61667465727B646973706C61793A7461626C657D2E63742D6D696E6F722D73697874683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F';
wwv_flow_api.g_varchar2_table(92) := '6C7574653B746F703A303B6C6566743A307D2E63742D676F6C64656E2D73656374696F6E7B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D676F6C64656E2D73656374696F6E3A62';
wwv_flow_api.g_varchar2_table(93) := '65666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A36312E383034363937313537257D2E63742D676F6C64656E2D73';
wwv_flow_api.g_varchar2_table(94) := '656374696F6E3A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E63742D676F6C64656E2D73656374696F6E3E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C';
wwv_flow_api.g_varchar2_table(95) := '7574653B746F703A303B6C6566743A307D2E63742D6D616A6F722D73697874687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D73697874683A6265666F72657B64';
wwv_flow_api.g_varchar2_table(96) := '6973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A3630257D2E63742D6D616A6F722D73697874683A61667465727B646973706C6179';
wwv_flow_api.g_varchar2_table(97) := '3A7461626C657D2E63742D6D616A6F722D73697874683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D696E6F722D736576656E74687B646973706C61793A626C';
wwv_flow_api.g_varchar2_table(98) := '6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D696E6F722D736576656E74683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A';
wwv_flow_api.g_varchar2_table(99) := '303B6865696768743A303B70616464696E672D626F74746F6D3A35362E3235257D2E63742D6D696E6F722D736576656E74683A61667465727B646973706C61793A7461626C657D2E63742D6D696E6F722D736576656E74683E7376677B646973706C6179';
wwv_flow_api.g_varchar2_table(100) := '3A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D616A6F722D736576656E74687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E';
wwv_flow_api.g_varchar2_table(101) := '63742D6D616A6F722D736576656E74683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A35332E3333333333';
wwv_flow_api.g_varchar2_table(102) := '3333333333257D2E63742D6D616A6F722D736576656E74683A61667465727B646973706C61793A7461626C657D2E63742D6D616A6F722D736576656E74683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B74';
wwv_flow_api.g_varchar2_table(103) := '6F703A303B6C6566743A307D2E63742D6F63746176657B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6F63746176653A6265666F72657B646973706C61793A626C6F636B3B666C';
wwv_flow_api.g_varchar2_table(104) := '6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A3530257D2E63742D6F63746176653A61667465727B646973706C61793A7461626C657D2E63742D6F63746176653E7376';
wwv_flow_api.g_varchar2_table(105) := '677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D616A6F722D74656E74687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B7769647468';
wwv_flow_api.g_varchar2_table(106) := '3A313030257D2E63742D6D616A6F722D74656E74683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A343025';
wwv_flow_api.g_varchar2_table(107) := '7D2E63742D6D616A6F722D74656E74683A61667465727B646973706C61793A7461626C657D2E63742D6D616A6F722D74656E74683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A';
wwv_flow_api.g_varchar2_table(108) := '307D2E63742D6D616A6F722D656C6576656E74687B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D656C6576656E74683A6265666F72657B646973706C61793A626C';
wwv_flow_api.g_varchar2_table(109) := '6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A33372E35257D2E63742D6D616A6F722D656C6576656E74683A61667465727B646973706C61793A746162';
wwv_flow_api.g_varchar2_table(110) := '6C657D2E63742D6D616A6F722D656C6576656E74683E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D6D616A6F722D7477656C6674687B646973706C61793A626C6F';
wwv_flow_api.g_varchar2_table(111) := '636B3B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E63742D6D616A6F722D7477656C6674683A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A30';
wwv_flow_api.g_varchar2_table(112) := '3B6865696768743A303B70616464696E672D626F74746F6D3A33332E33333333333333333333257D2E63742D6D616A6F722D7477656C6674683A61667465727B646973706C61793A7461626C657D2E63742D6D616A6F722D7477656C6674683E7376677B';
wwv_flow_api.g_varchar2_table(113) := '646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A307D2E63742D646F75626C652D6F63746176657B646973706C61793A626C6F636B3B706F736974696F6E3A72656C61746976653B7769647468';
wwv_flow_api.g_varchar2_table(114) := '3A313030257D2E63742D646F75626C652D6F63746176653A6265666F72657B646973706C61793A626C6F636B3B666C6F61743A6C6566743B636F6E74656E743A22223B77696474683A303B6865696768743A303B70616464696E672D626F74746F6D3A32';
wwv_flow_api.g_varchar2_table(115) := '35257D2E63742D646F75626C652D6F63746176653A61667465727B646973706C61793A7461626C657D2E63742D646F75626C652D6F63746176653E7376677B646973706C61793A626C6F636B3B706F736974696F6E3A6162736F6C7574653B746F703A30';
wwv_flow_api.g_varchar2_table(116) := '3B6C6566743A307D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(25155636070341173)
,p_plugin_id=>wwv_flow_api.id(25154239159342583)
,p_file_name=>'chartist.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2043686172746973742E6A7320302E31312E300A202A20436F7079726967687420C2A920323031372047696F6E204B756E7A0A202A204672656520746F2075736520756E646572206569746865722074686520575446504C206C6963656E7365206F';
wwv_flow_api.g_varchar2_table(2) := '7220746865204D4954206C6963656E73652E0A202A2068747470733A2F2F7261772E67697468756275736572636F6E74656E742E636F6D2F67696F6E6B756E7A2F63686172746973742D6A732F6D61737465722F4C4943454E53452D575446504C0A202A';
wwv_flow_api.g_varchar2_table(3) := '2068747470733A2F2F7261772E67697468756275736572636F6E74656E742E636F6D2F67696F6E6B756E7A2F63686172746973742D6A732F6D61737465722F4C4943454E53452D4D49540A202A2F0A0A2166756E6374696F6E28612C62297B2266756E63';
wwv_flow_api.g_varchar2_table(4) := '74696F6E223D3D747970656F6620646566696E652626646566696E652E616D643F646566696E6528224368617274697374222C5B5D2C66756E6374696F6E28297B72657475726E20612E43686172746973743D6228297D293A226F626A656374223D3D74';
wwv_flow_api.g_varchar2_table(5) := '7970656F66206D6F64756C6526266D6F64756C652E6578706F7274733F6D6F64756C652E6578706F7274733D6228293A612E43686172746973743D6228297D28746869732C66756E6374696F6E28297B76617220613D7B76657273696F6E3A22302E3131';
wwv_flow_api.g_varchar2_table(6) := '2E30227D3B72657475726E2066756E6374696F6E28612C622C63297B2275736520737472696374223B632E6E616D657370616365733D7B7376673A22687474703A2F2F7777772E77332E6F72672F323030302F737667222C786D6C6E733A22687474703A';
wwv_flow_api.g_varchar2_table(7) := '2F2F7777772E77332E6F72672F323030302F786D6C6E732F222C7868746D6C3A22687474703A2F2F7777772E77332E6F72672F313939392F7868746D6C222C786C696E6B3A22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222C';
wwv_flow_api.g_varchar2_table(8) := '63743A22687474703A2F2F67696F6E6B756E7A2E6769746875622E636F6D2F63686172746973742D6A732F6374227D2C632E6E6F6F703D66756E6374696F6E2861297B72657475726E20617D2C632E616C7068614E756D65726174653D66756E6374696F';
wwv_flow_api.g_varchar2_table(9) := '6E2861297B72657475726E20537472696E672E66726F6D43686172436F64652839372B61253236297D2C632E657874656E643D66756E6374696F6E2861297B76617220622C642C653B666F7228613D617C7C7B7D2C623D313B623C617267756D656E7473';
wwv_flow_api.g_varchar2_table(10) := '2E6C656E6774683B622B2B297B643D617267756D656E74735B625D3B666F7228766172206620696E206429653D645B665D2C226F626A65637422213D747970656F6620657C7C6E756C6C3D3D3D657C7C6520696E7374616E63656F662041727261793F61';
wwv_flow_api.g_varchar2_table(11) := '5B665D3D653A615B665D3D632E657874656E6428615B665D2C65297D72657475726E20617D2C632E7265706C616365416C6C3D66756E6374696F6E28612C622C63297B72657475726E20612E7265706C616365286E65772052656745787028622C226722';
wwv_flow_api.g_varchar2_table(12) := '292C63297D2C632E656E73757265556E69743D66756E6374696F6E28612C62297B72657475726E226E756D626572223D3D747970656F662061262628612B3D62292C617D2C632E7175616E746974793D66756E6374696F6E2861297B6966282273747269';
wwv_flow_api.g_varchar2_table(13) := '6E67223D3D747970656F662061297B76617220623D2F5E285C642B295C732A282E2A29242F672E657865632861293B72657475726E7B76616C75653A2B625B315D2C756E69743A625B325D7C7C766F696420307D7D72657475726E7B76616C75653A617D';
wwv_flow_api.g_varchar2_table(14) := '7D2C632E717565727953656C6563746F723D66756E6374696F6E2861297B72657475726E206120696E7374616E63656F66204E6F64653F613A622E717565727953656C6563746F722861297D2C632E74696D65733D66756E6374696F6E2861297B726574';
wwv_flow_api.g_varchar2_table(15) := '75726E2041727261792E6170706C79286E756C6C2C6E6577204172726179286129297D2C632E73756D3D66756E6374696F6E28612C62297B72657475726E20612B28623F623A30297D2C632E6D61704D756C7469706C793D66756E6374696F6E2861297B';
wwv_flow_api.g_varchar2_table(16) := '72657475726E2066756E6374696F6E2862297B72657475726E20622A617D7D2C632E6D61704164643D66756E6374696F6E2861297B72657475726E2066756E6374696F6E2862297B72657475726E20622B617D7D2C632E73657269616C4D61703D66756E';
wwv_flow_api.g_varchar2_table(17) := '6374696F6E28612C62297B76617220643D5B5D2C653D4D6174682E6D61782E6170706C79286E756C6C2C612E6D61702866756E6374696F6E2861297B72657475726E20612E6C656E6774687D29293B72657475726E20632E74696D65732865292E666F72';
wwv_flow_api.g_varchar2_table(18) := '456163682866756E6374696F6E28632C65297B76617220663D612E6D61702866756E6374696F6E2861297B72657475726E20615B655D7D293B645B655D3D622E6170706C79286E756C6C2C66297D292C647D2C632E726F756E6457697468507265636973';
wwv_flow_api.g_varchar2_table(19) := '696F6E3D66756E6374696F6E28612C62297B76617220643D4D6174682E706F772831302C627C7C632E707265636973696F6E293B72657475726E204D6174682E726F756E6428612A64292F647D2C632E707265636973696F6E3D382C632E657363617069';
wwv_flow_api.g_varchar2_table(20) := '6E674D61703D7B2226223A2226616D703B222C223C223A22266C743B222C223E223A222667743B222C2722273A222671756F743B222C2227223A2226233033393B227D2C632E73657269616C697A653D66756E6374696F6E2861297B72657475726E206E';
wwv_flow_api.g_varchar2_table(21) := '756C6C3D3D3D617C7C766F696420303D3D3D613F613A28226E756D626572223D3D747970656F6620613F613D22222B613A226F626A656374223D3D747970656F662061262628613D4A534F4E2E737472696E67696679287B646174613A617D29292C4F62';
wwv_flow_api.g_varchar2_table(22) := '6A6563742E6B65797328632E6573636170696E674D6170292E7265647563652866756E6374696F6E28612C62297B72657475726E20632E7265706C616365416C6C28612C622C632E6573636170696E674D61705B625D297D2C6129297D2C632E64657365';
wwv_flow_api.g_varchar2_table(23) := '7269616C697A653D66756E6374696F6E2861297B69662822737472696E6722213D747970656F6620612972657475726E20613B613D4F626A6563742E6B65797328632E6573636170696E674D6170292E7265647563652866756E6374696F6E28612C6229';
wwv_flow_api.g_varchar2_table(24) := '7B72657475726E20632E7265706C616365416C6C28612C632E6573636170696E674D61705B625D2C62297D2C61293B7472797B613D4A534F4E2E70617273652861292C613D766F69642030213D3D612E646174613F612E646174613A617D636174636828';
wwv_flow_api.g_varchar2_table(25) := '62297B7D72657475726E20617D2C632E6372656174655376673D66756E6374696F6E28612C622C642C65297B76617220663B72657475726E20623D627C7C2231303025222C643D647C7C2231303025222C41727261792E70726F746F747970652E736C69';
wwv_flow_api.g_varchar2_table(26) := '63652E63616C6C28612E717565727953656C6563746F72416C6C28227376672229292E66696C7465722866756E6374696F6E2861297B72657475726E20612E6765744174747269627574654E5328632E6E616D657370616365732E786D6C6E732C226374';
wwv_flow_api.g_varchar2_table(27) := '22297D292E666F72456163682866756E6374696F6E2862297B612E72656D6F76654368696C642862297D292C663D6E657720632E537667282273766722292E61747472287B77696474683A622C6865696768743A647D292E616464436C6173732865292C';
wwv_flow_api.g_varchar2_table(28) := '662E5F6E6F64652E7374796C652E77696474683D622C662E5F6E6F64652E7374796C652E6865696768743D642C612E617070656E644368696C6428662E5F6E6F6465292C667D2C632E6E6F726D616C697A65446174613D66756E6374696F6E28612C622C';
wwv_flow_api.g_varchar2_table(29) := '64297B76617220652C663D7B7261773A612C6E6F726D616C697A65643A7B7D7D3B72657475726E20662E6E6F726D616C697A65642E7365726965733D632E676574446174614172726179287B7365726965733A612E7365726965737C7C5B5D7D2C622C64';
wwv_flow_api.g_varchar2_table(30) := '292C653D662E6E6F726D616C697A65642E7365726965732E65766572792866756E6374696F6E2861297B72657475726E206120696E7374616E63656F662041727261797D293F4D6174682E6D61782E6170706C79286E756C6C2C662E6E6F726D616C697A';
wwv_flow_api.g_varchar2_table(31) := '65642E7365726965732E6D61702866756E6374696F6E2861297B72657475726E20612E6C656E6774687D29293A662E6E6F726D616C697A65642E7365726965732E6C656E6774682C662E6E6F726D616C697A65642E6C6162656C733D28612E6C6162656C';
wwv_flow_api.g_varchar2_table(32) := '737C7C5B5D292E736C69636528292C41727261792E70726F746F747970652E707573682E6170706C7928662E6E6F726D616C697A65642E6C6162656C732C632E74696D6573284D6174682E6D617828302C652D662E6E6F726D616C697A65642E6C616265';
wwv_flow_api.g_varchar2_table(33) := '6C732E6C656E67746829292E6D61702866756E6374696F6E28297B72657475726E22227D29292C622626632E726576657273654461746128662E6E6F726D616C697A6564292C667D2C632E7361666548617350726F70657274793D66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(34) := '612C62297B72657475726E206E756C6C213D3D612626226F626A656374223D3D747970656F6620612626612E6861734F776E50726F70657274792862297D2C632E697344617461486F6C6556616C75653D66756E6374696F6E2861297B72657475726E20';
wwv_flow_api.g_varchar2_table(35) := '6E756C6C3D3D3D617C7C766F696420303D3D3D617C7C226E756D626572223D3D747970656F662061262669734E614E2861297D2C632E72657665727365446174613D66756E6374696F6E2861297B612E6C6162656C732E7265766572736528292C612E73';
wwv_flow_api.g_varchar2_table(36) := '65726965732E7265766572736528293B666F722876617220623D303B623C612E7365726965732E6C656E6774683B622B2B29226F626A656374223D3D747970656F6620612E7365726965735B625D2626766F69642030213D3D612E7365726965735B625D';
wwv_flow_api.g_varchar2_table(37) := '2E646174613F612E7365726965735B625D2E646174612E7265766572736528293A612E7365726965735B625D696E7374616E63656F662041727261792626612E7365726965735B625D2E7265766572736528297D2C632E6765744461746141727261793D';
wwv_flow_api.g_varchar2_table(38) := '66756E6374696F6E28612C622C64297B66756E6374696F6E20652861297B696628632E7361666548617350726F706572747928612C2276616C756522292972657475726E206528612E76616C7565293B696628632E7361666548617350726F7065727479';
wwv_flow_api.g_varchar2_table(39) := '28612C226461746122292972657475726E206528612E64617461293B6966286120696E7374616E63656F662041727261792972657475726E20612E6D61702865293B69662821632E697344617461486F6C6556616C7565286129297B69662864297B7661';
wwv_flow_api.g_varchar2_table(40) := '7220623D7B7D3B72657475726E22737472696E67223D3D747970656F6620643F625B645D3D632E6765744E756D6265724F72556E646566696E65642861293A622E793D632E6765744E756D6265724F72556E646566696E65642861292C622E783D612E68';
wwv_flow_api.g_varchar2_table(41) := '61734F776E50726F706572747928227822293F632E6765744E756D6265724F72556E646566696E656428612E78293A622E782C622E793D612E6861734F776E50726F706572747928227922293F632E6765744E756D6265724F72556E646566696E656428';
wwv_flow_api.g_varchar2_table(42) := '612E79293A622E792C627D72657475726E20632E6765744E756D6265724F72556E646566696E65642861297D7D72657475726E20612E7365726965732E6D61702865297D2C632E6E6F726D616C697A6550616464696E673D66756E6374696F6E28612C62';
wwv_flow_api.g_varchar2_table(43) := '297B72657475726E20623D627C7C302C226E756D626572223D3D747970656F6620613F7B746F703A612C72696768743A612C626F74746F6D3A612C6C6566743A617D3A7B746F703A226E756D626572223D3D747970656F6620612E746F703F612E746F70';
wwv_flow_api.g_varchar2_table(44) := '3A622C72696768743A226E756D626572223D3D747970656F6620612E72696768743F612E72696768743A622C626F74746F6D3A226E756D626572223D3D747970656F6620612E626F74746F6D3F612E626F74746F6D3A622C6C6566743A226E756D626572';
wwv_flow_api.g_varchar2_table(45) := '223D3D747970656F6620612E6C6566743F612E6C6566743A627D7D2C632E6765744D657461446174613D66756E6374696F6E28612C62297B76617220633D612E646174613F612E646174615B625D3A615B625D3B72657475726E20633F632E6D6574613A';
wwv_flow_api.g_varchar2_table(46) := '766F696420307D2C632E6F726465724F664D61676E69747564653D66756E6374696F6E2861297B72657475726E204D6174682E666C6F6F72284D6174682E6C6F67284D6174682E616273286129292F4D6174682E4C4E3130297D2C632E70726F6A656374';
wwv_flow_api.g_varchar2_table(47) := '4C656E6774683D66756E6374696F6E28612C622C63297B72657475726E20622F632E72616E67652A617D2C632E676574417661696C61626C654865696768743D66756E6374696F6E28612C62297B72657475726E204D6174682E6D61782828632E717561';
wwv_flow_api.g_varchar2_table(48) := '6E7469747928622E686569676874292E76616C75657C7C612E6865696768742829292D28622E636861727450616464696E672E746F702B622E636861727450616464696E672E626F74746F6D292D622E61786973582E6F66667365742C30297D2C632E67';
wwv_flow_api.g_varchar2_table(49) := '6574486967684C6F773D66756E6374696F6E28612C622C64297B66756E6374696F6E20652861297B696628766F69642030213D3D61296966286120696E7374616E63656F6620417272617929666F722876617220623D303B623C612E6C656E6774683B62';
wwv_flow_api.g_varchar2_table(50) := '2B2B296528615B625D293B656C73657B76617220633D643F2B615B645D3A2B613B672626633E662E68696768262628662E686967683D63292C682626633C662E6C6F77262628662E6C6F773D63297D7D623D632E657874656E64287B7D2C622C643F625B';
wwv_flow_api.g_varchar2_table(51) := '2261786973222B642E746F55707065724361736528295D3A7B7D293B76617220663D7B686967683A766F696420303D3D3D622E686967683F2D4E756D6265722E4D41585F56414C55453A2B622E686967682C6C6F773A766F696420303D3D3D622E6C6F77';
wwv_flow_api.g_varchar2_table(52) := '3F4E756D6265722E4D41585F56414C55453A2B622E6C6F777D2C673D766F696420303D3D3D622E686967682C683D766F696420303D3D3D622E6C6F773B72657475726E28677C7C68292626652861292C28622E7265666572656E636556616C75657C7C30';
wwv_flow_api.g_varchar2_table(53) := '3D3D3D622E7265666572656E636556616C756529262628662E686967683D4D6174682E6D617828622E7265666572656E636556616C75652C662E68696768292C662E6C6F773D4D6174682E6D696E28622E7265666572656E636556616C75652C662E6C6F';
wwv_flow_api.g_varchar2_table(54) := '7729292C662E686967683C3D662E6C6F77262628303D3D3D662E6C6F773F662E686967683D313A662E6C6F773C303F662E686967683D303A662E686967683E303F662E6C6F773D303A28662E686967683D312C662E6C6F773D3029292C667D2C632E6973';
wwv_flow_api.g_varchar2_table(55) := '4E756D657269633D66756E6374696F6E2861297B72657475726E206E756C6C213D3D612626697346696E6974652861297D2C632E697346616C7365794275745A65726F3D66756E6374696F6E2861297B72657475726E2161262630213D3D617D2C632E67';
wwv_flow_api.g_varchar2_table(56) := '65744E756D6265724F72556E646566696E65643D66756E6374696F6E2861297B72657475726E20632E69734E756D657269632861293F2B613A766F696420307D2C632E69734D756C746956616C75653D66756E6374696F6E2861297B72657475726E226F';
wwv_flow_api.g_varchar2_table(57) := '626A656374223D3D747970656F662061262628227822696E20617C7C227922696E2061297D2C632E6765744D756C746956616C75653D66756E6374696F6E28612C62297B72657475726E20632E69734D756C746956616C75652861293F632E6765744E75';
wwv_flow_api.g_varchar2_table(58) := '6D6265724F72556E646566696E656428615B627C7C2279225D293A632E6765744E756D6265724F72556E646566696E65642861297D2C632E72686F3D66756E6374696F6E2861297B66756E6374696F6E206228612C63297B72657475726E206125633D3D';
wwv_flow_api.g_varchar2_table(59) := '3D303F633A6228632C612563297D66756E6374696F6E20632861297B72657475726E20612A612B317D696628313D3D3D612972657475726E20613B76617220642C653D322C663D323B6966286125323D3D3D302972657475726E20323B646F20653D6328';
wwv_flow_api.g_varchar2_table(60) := '652925612C663D6328632866292925612C643D62284D6174682E61627328652D66292C61293B7768696C6528313D3D3D64293B72657475726E20647D2C632E676574426F756E64733D66756E6374696F6E28612C622C642C65297B66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(61) := '6628612C62297B72657475726E20613D3D3D28612B3D6229262628612A3D312B28623E303F6F3A2D6F29292C617D76617220672C682C692C6A3D302C6B3D7B686967683A622E686967682C6C6F773A622E6C6F777D3B6B2E76616C756552616E67653D6B';
wwv_flow_api.g_varchar2_table(62) := '2E686967682D6B2E6C6F772C6B2E6F6F6D3D632E6F726465724F664D61676E6974756465286B2E76616C756552616E6765292C6B2E737465703D4D6174682E706F772831302C6B2E6F6F6D292C6B2E6D696E3D4D6174682E666C6F6F72286B2E6C6F772F';
wwv_flow_api.g_varchar2_table(63) := '6B2E73746570292A6B2E737465702C6B2E6D61783D4D6174682E6365696C286B2E686967682F6B2E73746570292A6B2E737465702C6B2E72616E67653D6B2E6D61782D6B2E6D696E2C6B2E6E756D6265724F6653746570733D4D6174682E726F756E6428';
wwv_flow_api.g_varchar2_table(64) := '6B2E72616E67652F6B2E73746570293B766172206C3D632E70726F6A6563744C656E67746828612C6B2E737465702C6B292C6D3D6C3C642C6E3D653F632E72686F286B2E72616E6765293A303B696628652626632E70726F6A6563744C656E6774682861';
wwv_flow_api.g_varchar2_table(65) := '2C312C6B293E3D64296B2E737465703D313B656C7365206966286526266E3C6B2E737465702626632E70726F6A6563744C656E67746828612C6E2C6B293E3D64296B2E737465703D6E3B656C736520666F72283B3B297B6966286D2626632E70726F6A65';
wwv_flow_api.g_varchar2_table(66) := '63744C656E67746828612C6B2E737465702C6B293C3D64296B2E737465702A3D323B656C73657B6966286D7C7C2128632E70726F6A6563744C656E67746828612C6B2E737465702F322C6B293E3D642929627265616B3B6966286B2E737465702F3D322C';
wwv_flow_api.g_varchar2_table(67) := '6526266B2E737465702531213D3D30297B6B2E737465702A3D323B627265616B7D7D6966286A2B2B3E316533297468726F77206E6577204572726F7228224578636565646564206D6178696D756D206E756D626572206F6620697465726174696F6E7320';
wwv_flow_api.g_varchar2_table(68) := '7768696C65206F7074696D697A696E67207363616C6520737465702122297D766172206F3D322E323231652D31363B666F72286B2E737465703D4D6174682E6D6178286B2E737465702C6F292C683D6B2E6D696E2C693D6B2E6D61783B682B6B2E737465';
wwv_flow_api.g_varchar2_table(69) := '703C3D6B2E6C6F773B29683D6628682C6B2E73746570293B666F72283B692D6B2E737465703E3D6B2E686967683B29693D6628692C2D6B2E73746570293B6B2E6D696E3D682C6B2E6D61783D692C6B2E72616E67653D6B2E6D61782D6B2E6D696E3B7661';
wwv_flow_api.g_varchar2_table(70) := '7220703D5B5D3B666F7228673D6B2E6D696E3B673C3D6B2E6D61783B673D6628672C6B2E7374657029297B76617220713D632E726F756E6457697468507265636973696F6E2867293B71213D3D705B702E6C656E6774682D315D2626702E707573682871';
wwv_flow_api.g_varchar2_table(71) := '297D72657475726E206B2E76616C7565733D702C6B7D2C632E706F6C6172546F43617274657369616E3D66756E6374696F6E28612C622C632C64297B76617220653D28642D3930292A4D6174682E50492F3138303B72657475726E7B783A612B632A4D61';
wwv_flow_api.g_varchar2_table(72) := '74682E636F732865292C793A622B632A4D6174682E73696E2865297D7D2C632E6372656174654368617274526563743D66756E6374696F6E28612C622C64297B76617220653D212821622E6178697358262621622E6178697359292C663D653F622E6178';
wwv_flow_api.g_varchar2_table(73) := '6973592E6F66667365743A302C673D653F622E61786973582E6F66667365743A302C683D612E776964746828297C7C632E7175616E7469747928622E7769647468292E76616C75657C7C302C693D612E68656967687428297C7C632E7175616E74697479';
wwv_flow_api.g_varchar2_table(74) := '28622E686569676874292E76616C75657C7C302C6A3D632E6E6F726D616C697A6550616464696E6728622E636861727450616464696E672C64293B683D4D6174682E6D617828682C662B6A2E6C6566742B6A2E7269676874292C693D4D6174682E6D6178';
wwv_flow_api.g_varchar2_table(75) := '28692C672B6A2E746F702B6A2E626F74746F6D293B766172206B3D7B70616464696E673A6A2C77696474683A66756E6374696F6E28297B72657475726E20746869732E78322D746869732E78317D2C6865696768743A66756E6374696F6E28297B726574';
wwv_flow_api.g_varchar2_table(76) := '75726E20746869732E79312D746869732E79327D7D3B72657475726E20653F28227374617274223D3D3D622E61786973582E706F736974696F6E3F286B2E79323D6A2E746F702B672C6B2E79313D4D6174682E6D617828692D6A2E626F74746F6D2C6B2E';
wwv_flow_api.g_varchar2_table(77) := '79322B3129293A286B2E79323D6A2E746F702C6B2E79313D4D6174682E6D617828692D6A2E626F74746F6D2D672C6B2E79322B3129292C227374617274223D3D3D622E61786973592E706F736974696F6E3F286B2E78313D6A2E6C6566742B662C6B2E78';
wwv_flow_api.g_varchar2_table(78) := '323D4D6174682E6D617828682D6A2E72696768742C6B2E78312B3129293A286B2E78313D6A2E6C6566742C6B2E78323D4D6174682E6D617828682D6A2E72696768742D662C6B2E78312B312929293A286B2E78313D6A2E6C6566742C6B2E78323D4D6174';
wwv_flow_api.g_varchar2_table(79) := '682E6D617828682D6A2E72696768742C6B2E78312B31292C6B2E79323D6A2E746F702C6B2E79313D4D6174682E6D617828692D6A2E626F74746F6D2C6B2E79322B3129292C6B7D2C632E637265617465477269643D66756E6374696F6E28612C622C642C';
wwv_flow_api.g_varchar2_table(80) := '652C662C672C682C69297B766172206A3D7B7D3B6A5B642E756E6974732E706F732B2231225D3D612C6A5B642E756E6974732E706F732B2232225D3D612C6A5B642E636F756E746572556E6974732E706F732B2231225D3D652C6A5B642E636F756E7465';
wwv_flow_api.g_varchar2_table(81) := '72556E6974732E706F732B2232225D3D652B663B766172206B3D672E656C656D28226C696E65222C6A2C682E6A6F696E2822202229293B692E656D6974282264726177222C632E657874656E64287B747970653A2267726964222C617869733A642C696E';
wwv_flow_api.g_varchar2_table(82) := '6465783A622C67726F75703A672C656C656D656E743A6B7D2C6A29297D2C632E637265617465477269644261636B67726F756E643D66756E6374696F6E28612C622C632C64297B76617220653D612E656C656D282272656374222C7B783A622E78312C79';
wwv_flow_api.g_varchar2_table(83) := '3A622E79322C77696474683A622E776964746828292C6865696768743A622E68656967687428297D2C632C2130293B642E656D6974282264726177222C7B747970653A22677269644261636B67726F756E64222C67726F75703A612C656C656D656E743A';
wwv_flow_api.g_varchar2_table(84) := '657D297D2C632E6372656174654C6162656C3D66756E6374696F6E28612C642C652C662C672C682C692C6A2C6B2C6C2C6D297B766172206E2C6F3D7B7D3B6966286F5B672E756E6974732E706F735D3D612B695B672E756E6974732E706F735D2C6F5B67';
wwv_flow_api.g_varchar2_table(85) := '2E636F756E746572556E6974732E706F735D3D695B672E636F756E746572556E6974732E706F735D2C6F5B672E756E6974732E6C656E5D3D642C6F5B672E636F756E746572556E6974732E6C656E5D3D4D6174682E6D617828302C682D3130292C6C297B';
wwv_flow_api.g_varchar2_table(86) := '76617220703D622E637265617465456C656D656E7428227370616E22293B702E636C6173734E616D653D6B2E6A6F696E28222022292C702E7365744174747269627574652822786D6C6E73222C632E6E616D657370616365732E7868746D6C292C702E69';
wwv_flow_api.g_varchar2_table(87) := '6E6E6572546578743D665B655D2C702E7374796C655B672E756E6974732E6C656E5D3D4D6174682E726F756E64286F5B672E756E6974732E6C656E5D292B227078222C702E7374796C655B672E636F756E746572556E6974732E6C656E5D3D4D6174682E';
wwv_flow_api.g_varchar2_table(88) := '726F756E64286F5B672E636F756E746572556E6974732E6C656E5D292B227078222C6E3D6A2E666F726569676E4F626A65637428702C632E657874656E64287B7374796C653A226F766572666C6F773A2076697369626C653B227D2C6F29297D656C7365';
wwv_flow_api.g_varchar2_table(89) := '206E3D6A2E656C656D282274657874222C6F2C6B2E6A6F696E2822202229292E7465787428665B655D293B6D2E656D6974282264726177222C632E657874656E64287B747970653A226C6162656C222C617869733A672C696E6465783A652C67726F7570';
wwv_flow_api.g_varchar2_table(90) := '3A6A2C656C656D656E743A6E2C746578743A665B655D7D2C6F29297D2C632E6765745365726965734F7074696F6E3D66756E6374696F6E28612C622C63297B696628612E6E616D652626622E7365726965732626622E7365726965735B612E6E616D655D';
wwv_flow_api.g_varchar2_table(91) := '297B76617220643D622E7365726965735B612E6E616D655D3B72657475726E20642E6861734F776E50726F70657274792863293F645B635D3A625B635D7D72657475726E20625B635D7D2C632E6F7074696F6E7350726F76696465723D66756E6374696F';
wwv_flow_api.g_varchar2_table(92) := '6E28622C642C65297B66756E6374696F6E20662862297B76617220663D683B696628683D632E657874656E64287B7D2C6A292C6429666F7228693D303B693C642E6C656E6774683B692B2B297B76617220673D612E6D617463684D6564696128645B695D';
wwv_flow_api.g_varchar2_table(93) := '5B305D293B672E6D617463686573262628683D632E657874656E6428682C645B695D5B315D29297D652626622626652E656D697428226F7074696F6E734368616E676564222C7B70726576696F75734F7074696F6E733A662C63757272656E744F707469';
wwv_flow_api.g_varchar2_table(94) := '6F6E733A687D297D66756E6374696F6E206728297B6B2E666F72456163682866756E6374696F6E2861297B612E72656D6F76654C697374656E65722866297D297D76617220682C692C6A3D632E657874656E64287B7D2C62292C6B3D5B5D3B6966282161';
wwv_flow_api.g_varchar2_table(95) := '2E6D617463684D65646961297468726F772277696E646F772E6D617463684D65646961206E6F7420666F756E6421204D616B65207375726520796F75277265207573696E67206120706F6C7966696C6C2E223B6966286429666F7228693D303B693C642E';
wwv_flow_api.g_varchar2_table(96) := '6C656E6774683B692B2B297B766172206C3D612E6D617463684D6564696128645B695D5B305D293B6C2E6164644C697374656E65722866292C6B2E70757368286C297D72657475726E206628292C7B72656D6F76654D6564696151756572794C69737465';
wwv_flow_api.g_varchar2_table(97) := '6E6572733A672C67657443757272656E744F7074696F6E733A66756E6374696F6E28297B72657475726E20632E657874656E64287B7D2C68297D7D7D2C632E73706C6974496E746F5365676D656E74733D66756E6374696F6E28612C622C64297B766172';
wwv_flow_api.g_varchar2_table(98) := '20653D7B696E6372656173696E67583A21312C66696C6C486F6C65733A21317D3B643D632E657874656E64287B7D2C652C64293B666F722876617220663D5B5D2C673D21302C683D303B683C612E6C656E6774683B682B3D3229766F696420303D3D3D63';
wwv_flow_api.g_varchar2_table(99) := '2E6765744D756C746956616C756528625B682F325D2E76616C7565293F642E66696C6C486F6C65737C7C28673D2130293A28642E696E6372656173696E67582626683E3D322626615B685D3C3D615B682D325D262628673D2130292C67262628662E7075';
wwv_flow_api.g_varchar2_table(100) := '7368287B70617468436F6F7264696E617465733A5B5D2C76616C7565446174613A5B5D7D292C673D2131292C665B662E6C656E6774682D315D2E70617468436F6F7264696E617465732E7075736828615B685D2C615B682B315D292C665B662E6C656E67';
wwv_flow_api.g_varchar2_table(101) := '74682D315D2E76616C7565446174612E7075736828625B682F325D29293B72657475726E20667D7D2877696E646F772C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B2275736520737472696374223B632E496E746572706F6C61';
wwv_flow_api.g_varchar2_table(102) := '74696F6E3D7B7D2C632E496E746572706F6C6174696F6E2E6E6F6E653D66756E6374696F6E2861297B76617220623D7B66696C6C486F6C65733A21317D3B72657475726E20613D632E657874656E64287B7D2C622C61292C66756E6374696F6E28622C64';
wwv_flow_api.g_varchar2_table(103) := '297B666F722876617220653D6E657720632E5376672E506174682C663D21302C673D303B673C622E6C656E6774683B672B3D32297B76617220683D625B675D2C693D625B672B315D2C6A3D645B672F325D3B766F69642030213D3D632E6765744D756C74';
wwv_flow_api.g_varchar2_table(104) := '6956616C7565286A2E76616C7565293F28663F652E6D6F766528682C692C21312C6A293A652E6C696E6528682C692C21312C6A292C663D2131293A612E66696C6C486F6C65737C7C28663D2130297D72657475726E20657D7D2C632E496E746572706F6C';
wwv_flow_api.g_varchar2_table(105) := '6174696F6E2E73696D706C653D66756E6374696F6E2861297B76617220623D7B64697669736F723A322C66696C6C486F6C65733A21317D3B613D632E657874656E64287B7D2C622C61293B76617220643D312F4D6174682E6D617828312C612E64697669';
wwv_flow_api.g_varchar2_table(106) := '736F72293B72657475726E2066756E6374696F6E28622C65297B666F722876617220662C672C682C693D6E657720632E5376672E506174682C6A3D303B6A3C622E6C656E6774683B6A2B3D32297B766172206B3D625B6A5D2C6C3D625B6A2B315D2C6D3D';
wwv_flow_api.g_varchar2_table(107) := '286B2D66292A642C6E3D655B6A2F325D3B766F69642030213D3D6E2E76616C75653F28766F696420303D3D3D683F692E6D6F7665286B2C6C2C21312C6E293A692E637572766528662B6D2C672C6B2D6D2C6C2C6B2C6C2C21312C6E292C663D6B2C673D6C';
wwv_flow_api.g_varchar2_table(108) := '2C683D6E293A612E66696C6C486F6C65737C7C28663D6B3D683D766F69642030297D72657475726E20697D7D2C632E496E746572706F6C6174696F6E2E63617264696E616C3D66756E6374696F6E2861297B76617220623D7B74656E73696F6E3A312C66';
wwv_flow_api.g_varchar2_table(109) := '696C6C486F6C65733A21317D3B613D632E657874656E64287B7D2C622C61293B76617220643D4D6174682E6D696E28312C4D6174682E6D617828302C612E74656E73696F6E29292C653D312D643B72657475726E2066756E6374696F6E206628622C6729';
wwv_flow_api.g_varchar2_table(110) := '7B76617220683D632E73706C6974496E746F5365676D656E747328622C672C7B66696C6C486F6C65733A612E66696C6C486F6C65737D293B696628682E6C656E677468297B696628682E6C656E6774683E31297B76617220693D5B5D3B72657475726E20';
wwv_flow_api.g_varchar2_table(111) := '682E666F72456163682866756E6374696F6E2861297B692E70757368286628612E70617468436F6F7264696E617465732C612E76616C75654461746129297D292C632E5376672E506174682E6A6F696E2869297D696628623D685B305D2E70617468436F';
wwv_flow_api.g_varchar2_table(112) := '6F7264696E617465732C673D685B305D2E76616C7565446174612C622E6C656E6774683C3D342972657475726E20632E496E746572706F6C6174696F6E2E6E6F6E65282928622C67293B666F7228766172206A2C6B3D286E657720632E5376672E506174';
wwv_flow_api.g_varchar2_table(113) := '68292E6D6F766528625B305D2C625B315D2C21312C675B305D292C6C3D302C6D3D622E6C656E6774683B6D2D322A216A3E6C3B6C2B3D32297B766172206E3D5B7B783A2B625B6C2D325D2C793A2B625B6C2D315D7D2C7B783A2B625B6C5D2C793A2B625B';
wwv_flow_api.g_varchar2_table(114) := '6C2B315D7D2C7B783A2B625B6C2B325D2C793A2B625B6C2B335D7D2C7B783A2B625B6C2B345D2C793A2B625B6C2B355D7D5D3B6A3F6C3F6D2D343D3D3D6C3F6E5B335D3D7B783A2B625B305D2C793A2B625B315D7D3A6D2D323D3D3D6C2626286E5B325D';
wwv_flow_api.g_varchar2_table(115) := '3D7B783A2B625B305D2C793A2B625B315D7D2C6E5B335D3D7B783A2B625B325D2C793A2B625B335D7D293A6E5B305D3D7B783A2B625B6D2D325D2C793A2B625B6D2D315D7D3A6D2D343D3D3D6C3F6E5B335D3D6E5B325D3A6C7C7C286E5B305D3D7B783A';
wwv_flow_api.g_varchar2_table(116) := '2B625B6C5D2C793A2B625B6C2B315D7D292C6B2E637572766528642A282D6E5B305D2E782B362A6E5B315D2E782B6E5B325D2E78292F362B652A6E5B325D2E782C642A282D6E5B305D2E792B362A6E5B315D2E792B6E5B325D2E79292F362B652A6E5B32';
wwv_flow_api.g_varchar2_table(117) := '5D2E792C642A286E5B315D2E782B362A6E5B325D2E782D6E5B335D2E78292F362B652A6E5B325D2E782C642A286E5B315D2E792B362A6E5B325D2E792D6E5B335D2E79292F362B652A6E5B325D2E792C6E5B325D2E782C6E5B325D2E792C21312C675B28';
wwv_flow_api.g_varchar2_table(118) := '6C2B32292F325D297D72657475726E206B7D72657475726E20632E496E746572706F6C6174696F6E2E6E6F6E652829285B5D297D7D2C632E496E746572706F6C6174696F6E2E6D6F6E6F746F6E6543756269633D66756E6374696F6E2861297B76617220';
wwv_flow_api.g_varchar2_table(119) := '623D7B66696C6C486F6C65733A21317D3B72657475726E20613D632E657874656E64287B7D2C622C61292C66756E6374696F6E206428622C65297B76617220663D632E73706C6974496E746F5365676D656E747328622C652C7B66696C6C486F6C65733A';
wwv_flow_api.g_varchar2_table(120) := '612E66696C6C486F6C65732C696E6372656173696E67583A21307D293B696628662E6C656E677468297B696628662E6C656E6774683E31297B76617220673D5B5D3B72657475726E20662E666F72456163682866756E6374696F6E2861297B672E707573';
wwv_flow_api.g_varchar2_table(121) := '68286428612E70617468436F6F7264696E617465732C612E76616C75654461746129297D292C632E5376672E506174682E6A6F696E2867297D696628623D665B305D2E70617468436F6F7264696E617465732C653D665B305D2E76616C7565446174612C';
wwv_flow_api.g_varchar2_table(122) := '622E6C656E6774683C3D342972657475726E20632E496E746572706F6C6174696F6E2E6E6F6E65282928622C65293B76617220682C692C6A3D5B5D2C6B3D5B5D2C6C3D622E6C656E6774682F322C6D3D5B5D2C6E3D5B5D2C6F3D5B5D2C703D5B5D3B666F';
wwv_flow_api.g_varchar2_table(123) := '7228683D303B683C6C3B682B2B296A5B685D3D625B322A685D2C6B5B685D3D625B322A682B315D3B666F7228683D303B683C6C2D313B682B2B296F5B685D3D6B5B682B315D2D6B5B685D2C705B685D3D6A5B682B315D2D6A5B685D2C6E5B685D3D6F5B68';
wwv_flow_api.g_varchar2_table(124) := '5D2F705B685D3B666F72286D5B305D3D6E5B305D2C6D5B6C2D315D3D6E5B6C2D325D2C683D313B683C6C2D313B682B2B29303D3D3D6E5B685D7C7C303D3D3D6E5B682D315D7C7C6E5B682D315D3E30213D6E5B685D3E303F6D5B685D3D303A286D5B685D';
wwv_flow_api.g_varchar2_table(125) := '3D332A28705B682D315D2B705B685D292F2828322A705B685D2B705B682D315D292F6E5B682D315D2B28705B685D2B322A705B682D315D292F6E5B685D292C697346696E697465286D5B685D297C7C286D5B685D3D3029293B666F7228693D286E657720';
wwv_flow_api.g_varchar2_table(126) := '632E5376672E50617468292E6D6F7665286A5B305D2C6B5B305D2C21312C655B305D292C683D303B683C6C2D313B682B2B29692E6375727665286A5B685D2B705B685D2F332C6B5B685D2B6D5B685D2A705B685D2F332C6A5B682B315D2D705B685D2F33';
wwv_flow_api.g_varchar2_table(127) := '2C6B5B682B315D2D6D5B682B315D2A705B685D2F332C6A5B682B315D2C6B5B682B315D2C21312C655B682B315D293B72657475726E20697D72657475726E20632E496E746572706F6C6174696F6E2E6E6F6E652829285B5D297D7D2C632E496E74657270';
wwv_flow_api.g_varchar2_table(128) := '6F6C6174696F6E2E737465703D66756E6374696F6E2861297B76617220623D7B706F7374706F6E653A21302C66696C6C486F6C65733A21317D3B72657475726E20613D632E657874656E64287B7D2C622C61292C66756E6374696F6E28622C64297B666F';
wwv_flow_api.g_varchar2_table(129) := '722876617220652C662C672C683D6E657720632E5376672E506174682C693D303B693C622E6C656E6774683B692B3D32297B766172206A3D625B695D2C6B3D625B692B315D2C6C3D645B692F325D3B766F69642030213D3D6C2E76616C75653F28766F69';
wwv_flow_api.g_varchar2_table(130) := '6420303D3D3D673F682E6D6F7665286A2C6B2C21312C6C293A28612E706F7374706F6E653F682E6C696E65286A2C662C21312C67293A682E6C696E6528652C6B2C21312C6C292C682E6C696E65286A2C6B2C21312C6C29292C653D6A2C663D6B2C673D6C';
wwv_flow_api.g_varchar2_table(131) := '293A612E66696C6C486F6C65737C7C28653D663D673D766F69642030297D72657475726E20687D7D7D2877696E646F772C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B2275736520737472696374223B632E4576656E74456D69';
wwv_flow_api.g_varchar2_table(132) := '747465723D66756E6374696F6E28297B66756E6374696F6E206128612C62297B645B615D3D645B615D7C7C5B5D2C645B615D2E707573682862297D66756E6374696F6E206228612C62297B645B615D262628623F28645B615D2E73706C69636528645B61';
wwv_flow_api.g_varchar2_table(133) := '5D2E696E6465784F662862292C31292C303D3D3D645B615D2E6C656E677468262664656C65746520645B615D293A64656C65746520645B615D297D66756E6374696F6E206328612C62297B645B615D2626645B615D2E666F72456163682866756E637469';
wwv_flow_api.g_varchar2_table(134) := '6F6E2861297B612862297D292C645B222A225D2626645B222A225D2E666F72456163682866756E6374696F6E2863297B6328612C62297D297D76617220643D5B5D3B72657475726E7B6164644576656E7448616E646C65723A612C72656D6F7665457665';
wwv_flow_api.g_varchar2_table(135) := '6E7448616E646C65723A622C656D69743A637D7D7D2877696E646F772C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B2275736520737472696374223B66756E6374696F6E20642861297B76617220623D5B5D3B696628612E6C65';
wwv_flow_api.g_varchar2_table(136) := '6E67746829666F722876617220633D303B633C612E6C656E6774683B632B2B29622E7075736828615B635D293B72657475726E20627D66756E6374696F6E206528612C62297B76617220643D627C7C746869732E70726F746F747970657C7C632E436C61';
wwv_flow_api.g_varchar2_table(137) := '73732C653D4F626A6563742E6372656174652864293B632E436C6173732E636C6F6E65446566696E6974696F6E7328652C61293B76617220663D66756E6374696F6E28297B76617220612C623D652E636F6E7374727563746F727C7C66756E6374696F6E';
wwv_flow_api.g_varchar2_table(138) := '28297B7D3B72657475726E20613D746869733D3D3D633F4F626A6563742E6372656174652865293A746869732C622E6170706C7928612C41727261792E70726F746F747970652E736C6963652E63616C6C28617267756D656E74732C3029292C617D3B72';
wwv_flow_api.g_varchar2_table(139) := '657475726E20662E70726F746F747970653D652C665B227375706572225D3D642C662E657874656E643D746869732E657874656E642C667D66756E6374696F6E206628297B76617220613D6428617267756D656E7473292C623D615B305D3B7265747572';
wwv_flow_api.g_varchar2_table(140) := '6E20612E73706C69636528312C612E6C656E6774682D31292E666F72456163682866756E6374696F6E2861297B4F626A6563742E6765744F776E50726F70657274794E616D65732861292E666F72456163682866756E6374696F6E2863297B64656C6574';
wwv_flow_api.g_varchar2_table(141) := '6520625B635D2C4F626A6563742E646566696E6550726F706572747928622C632C4F626A6563742E6765744F776E50726F706572747944657363726970746F7228612C6329297D297D292C627D632E436C6173733D7B657874656E643A652C636C6F6E65';
wwv_flow_api.g_varchar2_table(142) := '446566696E6974696F6E733A667D7D2877696E646F772C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B2275736520737472696374223B66756E6374696F6E206428612C622C64297B72657475726E2061262628746869732E6461';
wwv_flow_api.g_varchar2_table(143) := '74613D617C7C7B7D2C746869732E646174612E6C6162656C733D746869732E646174612E6C6162656C737C7C5B5D2C746869732E646174612E7365726965733D746869732E646174612E7365726965737C7C5B5D2C746869732E6576656E74456D697474';
wwv_flow_api.g_varchar2_table(144) := '65722E656D6974282264617461222C7B747970653A22757064617465222C646174613A746869732E646174617D29292C62262628746869732E6F7074696F6E733D632E657874656E64287B7D2C643F746869732E6F7074696F6E733A746869732E646566';
wwv_flow_api.g_varchar2_table(145) := '61756C744F7074696F6E732C62292C746869732E696E697469616C697A6554696D656F757449647C7C28746869732E6F7074696F6E7350726F76696465722E72656D6F76654D6564696151756572794C697374656E65727328292C746869732E6F707469';
wwv_flow_api.g_varchar2_table(146) := '6F6E7350726F76696465723D632E6F7074696F6E7350726F766964657228746869732E6F7074696F6E732C746869732E726573706F6E736976654F7074696F6E732C746869732E6576656E74456D69747465722929292C746869732E696E697469616C69';
wwv_flow_api.g_varchar2_table(147) := '7A6554696D656F757449647C7C746869732E637265617465436861727428746869732E6F7074696F6E7350726F76696465722E67657443757272656E744F7074696F6E732829292C746869737D66756E6374696F6E206528297B72657475726E20746869';
wwv_flow_api.g_varchar2_table(148) := '732E696E697469616C697A6554696D656F757449643F612E636C65617254696D656F757428746869732E696E697469616C697A6554696D656F75744964293A28612E72656D6F76654576656E744C697374656E65722822726573697A65222C746869732E';
wwv_flow_api.g_varchar2_table(149) := '726573697A654C697374656E6572292C746869732E6F7074696F6E7350726F76696465722E72656D6F76654D6564696151756572794C697374656E6572732829292C746869737D66756E6374696F6E206628612C62297B72657475726E20746869732E65';
wwv_flow_api.g_varchar2_table(150) := '76656E74456D69747465722E6164644576656E7448616E646C657228612C62292C746869737D66756E6374696F6E206728612C62297B72657475726E20746869732E6576656E74456D69747465722E72656D6F76654576656E7448616E646C657228612C';
wwv_flow_api.g_varchar2_table(151) := '62292C746869737D66756E6374696F6E206828297B612E6164644576656E744C697374656E65722822726573697A65222C746869732E726573697A654C697374656E6572292C746869732E6F7074696F6E7350726F76696465723D632E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(152) := '50726F766964657228746869732E6F7074696F6E732C746869732E726573706F6E736976654F7074696F6E732C746869732E6576656E74456D6974746572292C746869732E6576656E74456D69747465722E6164644576656E7448616E646C657228226F';
wwv_flow_api.g_varchar2_table(153) := '7074696F6E734368616E676564222C66756E6374696F6E28297B746869732E75706461746528297D2E62696E64287468697329292C746869732E6F7074696F6E732E706C7567696E732626746869732E6F7074696F6E732E706C7567696E732E666F7245';
wwv_flow_api.g_varchar2_table(154) := '6163682866756E6374696F6E2861297B6120696E7374616E63656F662041727261793F615B305D28746869732C615B315D293A612874686973297D2E62696E64287468697329292C746869732E6576656E74456D69747465722E656D6974282264617461';
wwv_flow_api.g_varchar2_table(155) := '222C7B747970653A22696E697469616C222C646174613A746869732E646174617D292C746869732E637265617465436861727428746869732E6F7074696F6E7350726F76696465722E67657443757272656E744F7074696F6E732829292C746869732E69';
wwv_flow_api.g_varchar2_table(156) := '6E697469616C697A6554696D656F757449643D766F696420307D66756E6374696F6E206928612C622C642C652C66297B746869732E636F6E7461696E65723D632E717565727953656C6563746F722861292C746869732E646174613D627C7C7B7D2C7468';
wwv_flow_api.g_varchar2_table(157) := '69732E646174612E6C6162656C733D746869732E646174612E6C6162656C737C7C5B5D2C746869732E646174612E7365726965733D746869732E646174612E7365726965737C7C5B5D2C746869732E64656661756C744F7074696F6E733D642C74686973';
wwv_flow_api.g_varchar2_table(158) := '2E6F7074696F6E733D652C746869732E726573706F6E736976654F7074696F6E733D662C746869732E6576656E74456D69747465723D632E4576656E74456D697474657228292C746869732E737570706F727473466F726569676E4F626A6563743D632E';
wwv_flow_api.g_varchar2_table(159) := '5376672E6973537570706F727465642822457874656E736962696C69747922292C746869732E737570706F727473416E696D6174696F6E733D632E5376672E6973537570706F727465642822416E696D6174696F6E4576656E7473417474726962757465';
wwv_flow_api.g_varchar2_table(160) := '22292C746869732E726573697A654C697374656E65723D66756E6374696F6E28297B746869732E75706461746528297D2E62696E642874686973292C746869732E636F6E7461696E6572262628746869732E636F6E7461696E65722E5F5F636861727469';
wwv_flow_api.g_varchar2_table(161) := '73745F5F2626746869732E636F6E7461696E65722E5F5F63686172746973745F5F2E64657461636828292C746869732E636F6E7461696E65722E5F5F63686172746973745F5F3D74686973292C746869732E696E697469616C697A6554696D656F757449';
wwv_flow_api.g_varchar2_table(162) := '643D73657454696D656F757428682E62696E642874686973292C30297D632E426173653D632E436C6173732E657874656E64287B636F6E7374727563746F723A692C6F7074696F6E7350726F76696465723A766F696420302C636F6E7461696E65723A76';
wwv_flow_api.g_varchar2_table(163) := '6F696420302C7376673A766F696420302C6576656E74456D69747465723A766F696420302C63726561746543686172743A66756E6374696F6E28297B7468726F77206E6577204572726F7228224261736520636861727420747970652063616E27742062';
wwv_flow_api.g_varchar2_table(164) := '6520696E7374616E7469617465642122297D2C7570646174653A642C6465746163683A652C6F6E3A662C6F66663A672C76657273696F6E3A632E76657273696F6E2C737570706F727473466F726569676E4F626A6563743A21317D297D2877696E646F77';
wwv_flow_api.g_varchar2_table(165) := '2C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B2275736520737472696374223B66756E6374696F6E206428612C642C652C662C67297B6120696E7374616E63656F6620456C656D656E743F746869732E5F6E6F64653D613A2874';
wwv_flow_api.g_varchar2_table(166) := '6869732E5F6E6F64653D622E637265617465456C656D656E744E5328632E6E616D657370616365732E7376672C61292C22737667223D3D3D612626746869732E61747472287B22786D6C6E733A6374223A632E6E616D657370616365732E63747D29292C';
wwv_flow_api.g_varchar2_table(167) := '642626746869732E617474722864292C652626746869732E616464436C6173732865292C66262628672626662E5F6E6F64652E66697273744368696C643F662E5F6E6F64652E696E736572744265666F726528746869732E5F6E6F64652C662E5F6E6F64';
wwv_flow_api.g_varchar2_table(168) := '652E66697273744368696C64293A662E5F6E6F64652E617070656E644368696C6428746869732E5F6E6F646529297D66756E6374696F6E206528612C62297B72657475726E22737472696E67223D3D747970656F6620613F623F746869732E5F6E6F6465';
wwv_flow_api.g_varchar2_table(169) := '2E6765744174747269627574654E5328622C61293A746869732E5F6E6F64652E6765744174747269627574652861293A284F626A6563742E6B6579732861292E666F72456163682866756E6374696F6E2862297B696628766F69642030213D3D615B625D';
wwv_flow_api.g_varchar2_table(170) := '29696628622E696E6465784F6628223A2229213D3D2D31297B76617220643D622E73706C697428223A22293B746869732E5F6E6F64652E7365744174747269627574654E5328632E6E616D657370616365735B645B305D5D2C622C615B625D297D656C73';
wwv_flow_api.g_varchar2_table(171) := '6520746869732E5F6E6F64652E73657441747472696275746528622C615B625D297D2E62696E64287468697329292C74686973297D66756E6374696F6E206628612C622C642C65297B72657475726E206E657720632E53766728612C622C642C74686973';
wwv_flow_api.g_varchar2_table(172) := '2C65297D66756E6374696F6E206728297B72657475726E20746869732E5F6E6F64652E706172656E744E6F646520696E7374616E63656F6620535647456C656D656E743F6E657720632E53766728746869732E5F6E6F64652E706172656E744E6F646529';
wwv_flow_api.g_varchar2_table(173) := '3A6E756C6C7D66756E6374696F6E206828297B666F722876617220613D746869732E5F6E6F64653B2273766722213D3D612E6E6F64654E616D653B29613D612E706172656E744E6F64653B72657475726E206E657720632E5376672861297D66756E6374';
wwv_flow_api.g_varchar2_table(174) := '696F6E20692861297B76617220623D746869732E5F6E6F64652E717565727953656C6563746F722861293B72657475726E20623F6E657720632E5376672862293A6E756C6C7D66756E6374696F6E206A2861297B76617220623D746869732E5F6E6F6465';
wwv_flow_api.g_varchar2_table(175) := '2E717565727953656C6563746F72416C6C2861293B72657475726E20622E6C656E6774683F6E657720632E5376672E4C6973742862293A6E756C6C7D66756E6374696F6E206B28297B72657475726E20746869732E5F6E6F64657D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(176) := '6C28612C642C652C66297B69662822737472696E67223D3D747970656F662061297B76617220673D622E637265617465456C656D656E74282264697622293B672E696E6E657248544D4C3D612C613D672E66697273744368696C647D612E736574417474';
wwv_flow_api.g_varchar2_table(177) := '7269627574652822786D6C6E73222C632E6E616D657370616365732E786D6C6E73293B76617220683D746869732E656C656D2822666F726569676E4F626A656374222C642C652C66293B72657475726E20682E5F6E6F64652E617070656E644368696C64';
wwv_flow_api.g_varchar2_table(178) := '2861292C687D66756E6374696F6E206D2861297B72657475726E20746869732E5F6E6F64652E617070656E644368696C6428622E637265617465546578744E6F6465286129292C746869737D66756E6374696F6E206E28297B666F72283B746869732E5F';
wwv_flow_api.g_varchar2_table(179) := '6E6F64652E66697273744368696C643B29746869732E5F6E6F64652E72656D6F76654368696C6428746869732E5F6E6F64652E66697273744368696C64293B72657475726E20746869737D66756E6374696F6E206F28297B72657475726E20746869732E';
wwv_flow_api.g_varchar2_table(180) := '5F6E6F64652E706172656E744E6F64652E72656D6F76654368696C6428746869732E5F6E6F6465292C746869732E706172656E7428297D66756E6374696F6E20702861297B72657475726E20746869732E5F6E6F64652E706172656E744E6F64652E7265';
wwv_flow_api.g_varchar2_table(181) := '706C6163654368696C6428612E5F6E6F64652C746869732E5F6E6F6465292C617D66756E6374696F6E207128612C62297B72657475726E20622626746869732E5F6E6F64652E66697273744368696C643F746869732E5F6E6F64652E696E736572744265';
wwv_flow_api.g_varchar2_table(182) := '666F726528612E5F6E6F64652C746869732E5F6E6F64652E66697273744368696C64293A746869732E5F6E6F64652E617070656E644368696C6428612E5F6E6F6465292C746869737D66756E6374696F6E207228297B72657475726E20746869732E5F6E';
wwv_flow_api.g_varchar2_table(183) := '6F64652E6765744174747269627574652822636C61737322293F746869732E5F6E6F64652E6765744174747269627574652822636C61737322292E7472696D28292E73706C6974282F5C732B2F293A5B5D7D66756E6374696F6E20732861297B72657475';
wwv_flow_api.g_varchar2_table(184) := '726E20746869732E5F6E6F64652E7365744174747269627574652822636C617373222C746869732E636C617373657328746869732E5F6E6F6465292E636F6E63617428612E7472696D28292E73706C6974282F5C732B2F29292E66696C7465722866756E';
wwv_flow_api.g_varchar2_table(185) := '6374696F6E28612C622C63297B72657475726E20632E696E6465784F662861293D3D3D627D292E6A6F696E2822202229292C746869737D66756E6374696F6E20742861297B76617220623D612E7472696D28292E73706C6974282F5C732B2F293B726574';
wwv_flow_api.g_varchar2_table(186) := '75726E20746869732E5F6E6F64652E7365744174747269627574652822636C617373222C746869732E636C617373657328746869732E5F6E6F6465292E66696C7465722866756E6374696F6E2861297B72657475726E20622E696E6465784F662861293D';
wwv_flow_api.g_varchar2_table(187) := '3D3D2D317D292E6A6F696E2822202229292C746869737D66756E6374696F6E207528297B72657475726E20746869732E5F6E6F64652E7365744174747269627574652822636C617373222C2222292C746869737D66756E6374696F6E207628297B726574';
wwv_flow_api.g_varchar2_table(188) := '75726E20746869732E5F6E6F64652E676574426F756E64696E67436C69656E745265637428292E6865696768747D66756E6374696F6E207728297B72657475726E20746869732E5F6E6F64652E676574426F756E64696E67436C69656E74526563742829';
wwv_flow_api.g_varchar2_table(189) := '2E77696474687D66756E6374696F6E207828612C622C64297B72657475726E20766F696420303D3D3D62262628623D2130292C4F626A6563742E6B6579732861292E666F72456163682866756E6374696F6E2865297B66756E6374696F6E206628612C62';
wwv_flow_api.g_varchar2_table(190) := '297B76617220662C672C682C693D7B7D3B612E656173696E67262628683D612E656173696E6720696E7374616E63656F662041727261793F612E656173696E673A632E5376672E456173696E675B612E656173696E675D2C64656C65746520612E656173';
wwv_flow_api.g_varchar2_table(191) := '696E67292C612E626567696E3D632E656E73757265556E697428612E626567696E2C226D7322292C612E6475723D632E656E73757265556E697428612E6475722C226D7322292C68262628612E63616C634D6F64653D2273706C696E65222C612E6B6579';
wwv_flow_api.g_varchar2_table(192) := '53706C696E65733D682E6A6F696E28222022292C612E6B657954696D65733D22303B3122292C62262628612E66696C6C3D22667265657A65222C695B655D3D612E66726F6D2C746869732E617474722869292C673D632E7175616E7469747928612E6265';
wwv_flow_api.g_varchar2_table(193) := '67696E7C7C30292E76616C75652C612E626567696E3D22696E646566696E69746522292C663D746869732E656C656D2822616E696D617465222C632E657874656E64287B6174747269627574654E616D653A657D2C6129292C62262673657454696D656F';
wwv_flow_api.g_varchar2_table(194) := '75742866756E6374696F6E28297B7472797B662E5F6E6F64652E626567696E456C656D656E7428297D63617463682862297B695B655D3D612E746F2C746869732E617474722869292C662E72656D6F766528297D7D2E62696E642874686973292C67292C';
wwv_flow_api.g_varchar2_table(195) := '642626662E5F6E6F64652E6164644576656E744C697374656E65722822626567696E4576656E74222C66756E6374696F6E28297B642E656D69742822616E696D6174696F6E426567696E222C7B656C656D656E743A746869732C616E696D6174653A662E';
wwv_flow_api.g_varchar2_table(196) := '5F6E6F64652C706172616D733A617D297D2E62696E64287468697329292C662E5F6E6F64652E6164644576656E744C697374656E65722822656E644576656E74222C66756E6374696F6E28297B642626642E656D69742822616E696D6174696F6E456E64';
wwv_flow_api.g_varchar2_table(197) := '222C7B656C656D656E743A746869732C616E696D6174653A662E5F6E6F64652C706172616D733A617D292C62262628695B655D3D612E746F2C746869732E617474722869292C662E72656D6F76652829297D2E62696E64287468697329297D615B655D69';
wwv_flow_api.g_varchar2_table(198) := '6E7374616E63656F662041727261793F615B655D2E666F72456163682866756E6374696F6E2861297B662E62696E6428746869732928612C2131297D2E62696E64287468697329293A662E62696E6428746869732928615B655D2C62297D2E62696E6428';
wwv_flow_api.g_varchar2_table(199) := '7468697329292C746869737D66756E6374696F6E20792861297B76617220623D746869733B746869732E737667456C656D656E74733D5B5D3B666F722876617220643D303B643C612E6C656E6774683B642B2B29746869732E737667456C656D656E7473';
wwv_flow_api.g_varchar2_table(200) := '2E70757368286E657720632E53766728615B645D29293B4F626A6563742E6B65797328632E5376672E70726F746F74797065292E66696C7465722866756E6374696F6E2861297B72657475726E5B22636F6E7374727563746F72222C22706172656E7422';
wwv_flow_api.g_varchar2_table(201) := '2C22717565727953656C6563746F72222C22717565727953656C6563746F72416C6C222C227265706C616365222C22617070656E64222C22636C6173736573222C22686569676874222C227769647468225D2E696E6465784F662861293D3D3D2D317D29';
wwv_flow_api.g_varchar2_table(202) := '2E666F72456163682866756E6374696F6E2861297B625B615D3D66756E6374696F6E28297B76617220643D41727261792E70726F746F747970652E736C6963652E63616C6C28617267756D656E74732C30293B72657475726E20622E737667456C656D65';
wwv_flow_api.g_varchar2_table(203) := '6E74732E666F72456163682866756E6374696F6E2862297B632E5376672E70726F746F747970655B615D2E6170706C7928622C64297D292C627D7D297D632E5376673D632E436C6173732E657874656E64287B636F6E7374727563746F723A642C617474';
wwv_flow_api.g_varchar2_table(204) := '723A652C656C656D3A662C706172656E743A672C726F6F743A682C717565727953656C6563746F723A692C717565727953656C6563746F72416C6C3A6A2C6765744E6F64653A6B2C666F726569676E4F626A6563743A6C2C746578743A6D2C656D707479';
wwv_flow_api.g_varchar2_table(205) := '3A6E2C72656D6F76653A6F2C7265706C6163653A702C617070656E643A712C636C61737365733A722C616464436C6173733A732C72656D6F7665436C6173733A742C72656D6F7665416C6C436C61737365733A752C6865696768743A762C77696474683A';
wwv_flow_api.g_varchar2_table(206) := '772C616E696D6174653A787D292C632E5376672E6973537570706F727465643D66756E6374696F6E2861297B72657475726E20622E696D706C656D656E746174696F6E2E686173466561747572652822687474703A2F2F7777772E77332E6F72672F5452';
wwv_flow_api.g_varchar2_table(207) := '2F53564731312F6665617475726523222B612C22312E3122297D3B766172207A3D7B65617365496E53696E653A5B2E34372C302C2E3734352C2E3731355D2C656173654F757453696E653A5B2E33392C2E3537352C2E3536352C315D2C65617365496E4F';
wwv_flow_api.g_varchar2_table(208) := '757453696E653A5B2E3434352C2E30352C2E35352C2E39355D2C65617365496E517561643A5B2E35352C2E3038352C2E36382C2E35335D2C656173654F7574517561643A5B2E32352C2E34362C2E34352C2E39345D2C65617365496E4F7574517561643A';
wwv_flow_api.g_varchar2_table(209) := '5B2E3435352C2E30332C2E3531352C2E3935355D2C65617365496E43756269633A5B2E35352C2E3035352C2E3637352C2E31395D2C656173654F757443756269633A5B2E3231352C2E36312C2E3335352C315D2C65617365496E4F757443756269633A5B';
wwv_flow_api.g_varchar2_table(210) := '2E3634352C2E3034352C2E3335352C315D2C65617365496E51756172743A5B2E3839352C2E30332C2E3638352C2E32325D2C656173654F757451756172743A5B2E3136352C2E38342C2E34342C315D2C65617365496E4F757451756172743A5B2E37372C';
wwv_flow_api.g_varchar2_table(211) := '302C2E3137352C315D2C65617365496E5175696E743A5B2E3735352C2E30352C2E3835352C2E30365D2C656173654F75745175696E743A5B2E32332C312C2E33322C315D2C65617365496E4F75745175696E743A5B2E38362C302C2E30372C315D2C6561';
wwv_flow_api.g_varchar2_table(212) := '7365496E4578706F3A5B2E39352C2E30352C2E3739352C2E3033355D2C656173654F75744578706F3A5B2E31392C312C2E32322C315D2C65617365496E4F75744578706F3A5B312C302C302C315D2C65617365496E436972633A5B2E362C2E30342C2E39';
wwv_flow_api.g_varchar2_table(213) := '382C2E3333355D2C656173654F7574436972633A5B2E3037352C2E38322C2E3136352C315D2C65617365496E4F7574436972633A5B2E3738352C2E3133352C2E31352C2E38365D2C65617365496E4261636B3A5B2E362C2D2E32382C2E3733352C2E3034';
wwv_flow_api.g_varchar2_table(214) := '355D2C656173654F75744261636B3A5B2E3137352C2E3838352C2E33322C312E3237355D2C65617365496E4F75744261636B3A5B2E36382C2D2E35352C2E3236352C312E35355D7D3B632E5376672E456173696E673D7A2C632E5376672E4C6973743D63';
wwv_flow_api.g_varchar2_table(215) := '2E436C6173732E657874656E64287B636F6E7374727563746F723A797D297D2877696E646F772C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B2275736520737472696374223B66756E6374696F6E206428612C622C642C652C66';
wwv_flow_api.g_varchar2_table(216) := '2C67297B76617220683D632E657874656E64287B636F6D6D616E643A663F612E746F4C6F7765724361736528293A612E746F55707065724361736528297D2C622C673F7B646174613A677D3A7B7D293B642E73706C69636528652C302C68297D66756E63';
wwv_flow_api.g_varchar2_table(217) := '74696F6E206528612C62297B612E666F72456163682866756E6374696F6E28632C64297B755B632E636F6D6D616E642E746F4C6F7765724361736528295D2E666F72456163682866756E6374696F6E28652C66297B6228632C652C642C662C61297D297D';
wwv_flow_api.g_varchar2_table(218) := '297D66756E6374696F6E206628612C62297B746869732E70617468456C656D656E74733D5B5D2C746869732E706F733D302C746869732E636C6F73653D612C746869732E6F7074696F6E733D632E657874656E64287B7D2C762C62297D66756E6374696F';
wwv_flow_api.g_varchar2_table(219) := '6E20672861297B72657475726E20766F69642030213D3D613F28746869732E706F733D4D6174682E6D617828302C4D6174682E6D696E28746869732E70617468456C656D656E74732E6C656E6774682C6129292C74686973293A746869732E706F737D66';
wwv_flow_api.g_varchar2_table(220) := '756E6374696F6E20682861297B72657475726E20746869732E70617468456C656D656E74732E73706C69636528746869732E706F732C61292C746869737D66756E6374696F6E206928612C622C632C65297B72657475726E206428224D222C7B783A2B61';
wwv_flow_api.g_varchar2_table(221) := '2C793A2B627D2C746869732E70617468456C656D656E74732C746869732E706F732B2B2C632C65292C746869737D66756E6374696F6E206A28612C622C632C65297B72657475726E206428224C222C7B783A2B612C793A2B627D2C746869732E70617468';
wwv_flow_api.g_varchar2_table(222) := '456C656D656E74732C746869732E706F732B2B2C632C65292C746869737D66756E6374696F6E206B28612C622C632C652C662C672C682C69297B72657475726E2064282243222C7B78313A2B612C79313A2B622C78323A2B632C79323A2B652C783A2B66';
wwv_flow_api.g_varchar2_table(223) := '2C793A2B677D2C746869732E70617468456C656D656E74732C746869732E706F732B2B2C682C69292C746869737D66756E6374696F6E206C28612C622C632C652C662C672C682C692C6A297B72657475726E2064282241222C7B72783A2B612C72793A2B';
wwv_flow_api.g_varchar2_table(224) := '622C7841723A2B632C6C41663A2B652C73663A2B662C783A2B672C793A2B687D2C746869732E70617468456C656D656E74732C746869732E706F732B2B2C692C6A292C746869737D66756E6374696F6E206D2861297B76617220623D612E7265706C6163';
wwv_flow_api.g_varchar2_table(225) := '65282F285B412D5A612D7A5D29285B302D395D292F672C22243120243222292E7265706C616365282F285B302D395D29285B412D5A612D7A5D292F672C22243120243222292E73706C6974282F5B5C732C5D2B2F292E7265647563652866756E6374696F';
wwv_flow_api.g_varchar2_table(226) := '6E28612C62297B72657475726E20622E6D61746368282F5B412D5A612D7A5D2F292626612E70757368285B5D292C615B612E6C656E6774682D315D2E707573682862292C617D2C5B5D293B225A223D3D3D625B622E6C656E6774682D315D5B305D2E746F';
wwv_flow_api.g_varchar2_table(227) := '55707065724361736528292626622E706F7028293B76617220643D622E6D61702866756E6374696F6E2861297B76617220623D612E736869667428292C643D755B622E746F4C6F7765724361736528295D3B72657475726E20632E657874656E64287B63';
wwv_flow_api.g_varchar2_table(228) := '6F6D6D616E643A627D2C642E7265647563652866756E6374696F6E28622C632C64297B72657475726E20625B635D3D2B615B645D2C627D2C7B7D29297D292C653D5B746869732E706F732C305D3B72657475726E2041727261792E70726F746F74797065';
wwv_flow_api.g_varchar2_table(229) := '2E707573682E6170706C7928652C64292C41727261792E70726F746F747970652E73706C6963652E6170706C7928746869732E70617468456C656D656E74732C65292C746869732E706F732B3D642E6C656E6774682C746869737D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(230) := '6E28297B76617220613D4D6174682E706F772831302C746869732E6F7074696F6E732E6163637572616379293B72657475726E20746869732E70617468456C656D656E74732E7265647563652866756E6374696F6E28622C63297B76617220643D755B63';
wwv_flow_api.g_varchar2_table(231) := '2E636F6D6D616E642E746F4C6F7765724361736528295D2E6D61702866756E6374696F6E2862297B72657475726E20746869732E6F7074696F6E732E61636375726163793F4D6174682E726F756E6428635B625D2A61292F613A635B625D7D2E62696E64';
wwv_flow_api.g_varchar2_table(232) := '287468697329293B72657475726E20622B632E636F6D6D616E642B642E6A6F696E28222C22297D2E62696E642874686973292C2222292B28746869732E636C6F73653F225A223A2222297D66756E6374696F6E206F28612C62297B72657475726E206528';
wwv_flow_api.g_varchar2_table(233) := '746869732E70617468456C656D656E74732C66756E6374696F6E28632C64297B635B645D2A3D2278223D3D3D645B305D3F613A627D292C746869737D66756E6374696F6E207028612C62297B72657475726E206528746869732E70617468456C656D656E';
wwv_flow_api.g_varchar2_table(234) := '74732C66756E6374696F6E28632C64297B635B645D2B3D2278223D3D3D645B305D3F613A627D292C746869737D66756E6374696F6E20712861297B72657475726E206528746869732E70617468456C656D656E74732C66756E6374696F6E28622C632C64';
wwv_flow_api.g_varchar2_table(235) := '2C652C66297B76617220673D6128622C632C642C652C66293B28677C7C303D3D3D6729262628625B635D3D67297D292C746869737D66756E6374696F6E20722861297B76617220623D6E657720632E5376672E5061746828617C7C746869732E636C6F73';
wwv_flow_api.g_varchar2_table(236) := '65293B72657475726E20622E706F733D746869732E706F732C622E70617468456C656D656E74733D746869732E70617468456C656D656E74732E736C69636528292E6D61702866756E6374696F6E2861297B72657475726E20632E657874656E64287B7D';
wwv_flow_api.g_varchar2_table(237) := '2C61297D292C622E6F7074696F6E733D632E657874656E64287B7D2C746869732E6F7074696F6E73292C627D66756E6374696F6E20732861297B76617220623D5B6E657720632E5376672E506174685D3B72657475726E20746869732E70617468456C65';
wwv_flow_api.g_varchar2_table(238) := '6D656E74732E666F72456163682866756E6374696F6E2864297B642E636F6D6D616E643D3D3D612E746F5570706572436173652829262630213D3D625B622E6C656E6774682D315D2E70617468456C656D656E74732E6C656E6774682626622E70757368';
wwv_flow_api.g_varchar2_table(239) := '286E657720632E5376672E50617468292C625B622E6C656E6774682D315D2E70617468456C656D656E74732E707573682864297D292C627D66756E6374696F6E207428612C622C64297B666F722876617220653D6E657720632E5376672E506174682862';
wwv_flow_api.g_varchar2_table(240) := '2C64292C663D303B663C612E6C656E6774683B662B2B29666F722876617220673D615B665D2C683D303B683C672E70617468456C656D656E74732E6C656E6774683B682B2B29652E70617468456C656D656E74732E7075736828672E70617468456C656D';
wwv_flow_api.g_varchar2_table(241) := '656E74735B685D293B72657475726E20657D76617220753D7B6D3A5B2278222C2279225D2C6C3A5B2278222C2279225D2C633A5B227831222C227931222C227832222C227932222C2278222C2279225D2C613A5B227278222C227279222C22784172222C';
wwv_flow_api.g_varchar2_table(242) := '226C4166222C227366222C2278222C2279225D7D2C763D7B61636375726163793A337D3B632E5376672E506174683D632E436C6173732E657874656E64287B636F6E7374727563746F723A662C706F736974696F6E3A672C72656D6F76653A682C6D6F76';
wwv_flow_api.g_varchar2_table(243) := '653A692C6C696E653A6A2C63757276653A6B2C6172633A6C2C7363616C653A6F2C7472616E736C6174653A702C7472616E73666F726D3A712C70617273653A6D2C737472696E676966793A6E2C636C6F6E653A722C73706C69744279436F6D6D616E643A';
wwv_flow_api.g_varchar2_table(244) := '737D292C632E5376672E506174682E656C656D656E744465736372697074696F6E733D752C632E5376672E506174682E6A6F696E3D747D2877696E646F772C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B227573652073747269';
wwv_flow_api.g_varchar2_table(245) := '6374223B66756E6374696F6E206428612C622C632C64297B746869732E756E6974733D612C746869732E636F756E746572556E6974733D613D3D3D662E783F662E793A662E782C746869732E6368617274526563743D622C746869732E617869734C656E';
wwv_flow_api.g_varchar2_table(246) := '6774683D625B612E72656374456E645D2D625B612E7265637453746172745D2C746869732E677269644F66667365743D625B612E726563744F66667365745D2C746869732E7469636B733D632C746869732E6F7074696F6E733D647D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(247) := '206528612C622C642C652C66297B76617220673D655B2261786973222B746869732E756E6974732E706F732E746F55707065724361736528295D2C683D746869732E7469636B732E6D617028746869732E70726F6A65637456616C75652E62696E642874';
wwv_flow_api.g_varchar2_table(248) := '68697329292C693D746869732E7469636B732E6D617028672E6C6162656C496E746572706F6C6174696F6E466E63293B682E666F72456163682866756E6374696F6E286A2C6B297B766172206C2C6D3D7B783A302C793A307D3B6C3D685B6B2B315D3F68';
wwv_flow_api.g_varchar2_table(249) := '5B6B2B315D2D6A3A4D6174682E6D617828746869732E617869734C656E6774682D6A2C3330292C632E697346616C7365794275745A65726F28695B6B5D2926262222213D3D695B6B5D7C7C282278223D3D3D746869732E756E6974732E706F733F286A3D';
wwv_flow_api.g_varchar2_table(250) := '746869732E6368617274526563742E78312B6A2C6D2E783D652E61786973582E6C6162656C4F66667365742E782C227374617274223D3D3D652E61786973582E706F736974696F6E3F6D2E793D746869732E6368617274526563742E70616464696E672E';
wwv_flow_api.g_varchar2_table(251) := '746F702B652E61786973582E6C6162656C4F66667365742E792B28643F353A3230293A6D2E793D746869732E6368617274526563742E79312B652E61786973582E6C6162656C4F66667365742E792B28643F353A323029293A286A3D746869732E636861';
wwv_flow_api.g_varchar2_table(252) := '7274526563742E79312D6A2C6D2E793D652E61786973592E6C6162656C4F66667365742E792D28643F6C3A30292C227374617274223D3D3D652E61786973592E706F736974696F6E3F6D2E783D643F746869732E6368617274526563742E70616464696E';
wwv_flow_api.g_varchar2_table(253) := '672E6C6566742B652E61786973592E6C6162656C4F66667365742E783A746869732E6368617274526563742E78312D31303A6D2E783D746869732E6368617274526563742E78322B652E61786973592E6C6162656C4F66667365742E782B3130292C672E';
wwv_flow_api.g_varchar2_table(254) := '73686F77477269642626632E63726561746547726964286A2C6B2C746869732C746869732E677269644F66667365742C746869732E6368617274526563745B746869732E636F756E746572556E6974732E6C656E5D28292C612C5B652E636C6173734E61';
wwv_flow_api.g_varchar2_table(255) := '6D65732E677269642C652E636C6173734E616D65735B746869732E756E6974732E6469725D5D2C66292C672E73686F774C6162656C2626632E6372656174654C6162656C286A2C6C2C6B2C692C746869732C672E6F66667365742C6D2C622C5B652E636C';
wwv_flow_api.g_varchar2_table(256) := '6173734E616D65732E6C6162656C2C652E636C6173734E616D65735B746869732E756E6974732E6469725D2C227374617274223D3D3D672E706F736974696F6E3F652E636C6173734E616D65735B672E706F736974696F6E5D3A652E636C6173734E616D';
wwv_flow_api.g_varchar2_table(257) := '65732E656E645D2C642C6629297D2E62696E64287468697329297D76617220663D7B783A7B706F733A2278222C6C656E3A227769647468222C6469723A22686F72697A6F6E74616C222C7265637453746172743A227831222C72656374456E643A227832';
wwv_flow_api.g_varchar2_table(258) := '222C726563744F66667365743A227932227D2C793A7B706F733A2279222C6C656E3A22686569676874222C6469723A22766572746963616C222C7265637453746172743A227932222C72656374456E643A227931222C726563744F66667365743A227831';
wwv_flow_api.g_varchar2_table(259) := '227D7D3B632E417869733D632E436C6173732E657874656E64287B636F6E7374727563746F723A642C63726561746547726964416E644C6162656C733A652C70726F6A65637456616C75653A66756E6374696F6E28612C622C63297B7468726F77206E65';
wwv_flow_api.g_varchar2_table(260) := '77204572726F7228224261736520617869732063616E277420626520696E7374616E7469617465642122297D7D292C632E417869732E756E6974733D667D2877696E646F772C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B2275';
wwv_flow_api.g_varchar2_table(261) := '736520737472696374223B66756E6374696F6E206428612C622C642C65297B76617220663D652E686967684C6F777C7C632E676574486967684C6F7728622C652C612E706F73293B746869732E626F756E64733D632E676574426F756E647328645B612E';
wwv_flow_api.g_varchar2_table(262) := '72656374456E645D2D645B612E7265637453746172745D2C662C652E7363616C654D696E53706163657C7C32302C652E6F6E6C79496E7465676572292C746869732E72616E67653D7B6D696E3A746869732E626F756E64732E6D696E2C6D61783A746869';
wwv_flow_api.g_varchar2_table(263) := '732E626F756E64732E6D61787D2C632E4175746F5363616C65417869735B227375706572225D2E636F6E7374727563746F722E63616C6C28746869732C612C642C746869732E626F756E64732E76616C7565732C65297D66756E6374696F6E2065286129';
wwv_flow_api.g_varchar2_table(264) := '7B72657475726E20746869732E617869734C656E6774682A282B632E6765744D756C746956616C756528612C746869732E756E6974732E706F73292D746869732E626F756E64732E6D696E292F746869732E626F756E64732E72616E67657D632E417574';
wwv_flow_api.g_varchar2_table(265) := '6F5363616C65417869733D632E417869732E657874656E64287B636F6E7374727563746F723A642C70726F6A65637456616C75653A657D297D2877696E646F772C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B22757365207374';
wwv_flow_api.g_varchar2_table(266) := '72696374223B66756E6374696F6E206428612C622C642C65297B76617220663D652E686967684C6F777C7C632E676574486967684C6F7728622C652C612E706F73293B746869732E64697669736F723D652E64697669736F727C7C312C746869732E7469';
wwv_flow_api.g_varchar2_table(267) := '636B733D652E7469636B737C7C632E74696D657328746869732E64697669736F72292E6D61702866756E6374696F6E28612C62297B72657475726E20662E6C6F772B28662E686967682D662E6C6F77292F746869732E64697669736F722A627D2E62696E';
wwv_flow_api.g_varchar2_table(268) := '64287468697329292C746869732E7469636B732E736F72742866756E6374696F6E28612C62297B72657475726E20612D627D292C746869732E72616E67653D7B6D696E3A662E6C6F772C6D61783A662E686967687D2C632E46697865645363616C654178';
wwv_flow_api.g_varchar2_table(269) := '69735B227375706572225D2E636F6E7374727563746F722E63616C6C28746869732C612C642C746869732E7469636B732C65292C746869732E737465704C656E6774683D746869732E617869734C656E6774682F746869732E64697669736F727D66756E';
wwv_flow_api.g_varchar2_table(270) := '6374696F6E20652861297B72657475726E20746869732E617869734C656E6774682A282B632E6765744D756C746956616C756528612C746869732E756E6974732E706F73292D746869732E72616E67652E6D696E292F28746869732E72616E67652E6D61';
wwv_flow_api.g_varchar2_table(271) := '782D746869732E72616E67652E6D696E297D632E46697865645363616C65417869733D632E417869732E657874656E64287B636F6E7374727563746F723A642C70726F6A65637456616C75653A657D297D2877696E646F772C646F63756D656E742C6129';
wwv_flow_api.g_varchar2_table(272) := '2C66756E6374696F6E28612C622C63297B2275736520737472696374223B66756E6374696F6E206428612C622C642C65297B632E53746570417869735B227375706572225D2E636F6E7374727563746F722E63616C6C28746869732C612C642C652E7469';
wwv_flow_api.g_varchar2_table(273) := '636B732C65293B76617220663D4D6174682E6D617828312C652E7469636B732E6C656E6774682D28652E737472657463683F313A3029293B746869732E737465704C656E6774683D746869732E617869734C656E6774682F667D66756E6374696F6E2065';
wwv_flow_api.g_varchar2_table(274) := '28612C62297B72657475726E20746869732E737465704C656E6774682A627D632E53746570417869733D632E417869732E657874656E64287B636F6E7374727563746F723A642C70726F6A65637456616C75653A657D297D2877696E646F772C646F6375';
wwv_flow_api.g_varchar2_table(275) := '6D656E742C61292C66756E6374696F6E28612C622C63297B2275736520737472696374223B66756E6374696F6E20642861297B76617220623D632E6E6F726D616C697A654461746128746869732E646174612C612E72657665727365446174612C213029';
wwv_flow_api.g_varchar2_table(276) := '3B746869732E7376673D632E63726561746553766728746869732E636F6E7461696E65722C612E77696474682C612E6865696768742C612E636C6173734E616D65732E6368617274293B76617220642C652C673D746869732E7376672E656C656D282267';
wwv_flow_api.g_varchar2_table(277) := '22292E616464436C61737328612E636C6173734E616D65732E6772696447726F7570292C683D746869732E7376672E656C656D28226722292C693D746869732E7376672E656C656D28226722292E616464436C61737328612E636C6173734E616D65732E';
wwv_flow_api.g_varchar2_table(278) := '6C6162656C47726F7570292C6A3D632E63726561746543686172745265637428746869732E7376672C612C662E70616464696E67293B643D766F696420303D3D3D612E61786973582E747970653F6E657720632E537465704178697328632E417869732E';
wwv_flow_api.g_varchar2_table(279) := '756E6974732E782C622E6E6F726D616C697A65642E7365726965732C6A2C632E657874656E64287B7D2C612E61786973582C7B7469636B733A622E6E6F726D616C697A65642E6C6162656C732C737472657463683A612E66756C6C57696474687D29293A';
wwv_flow_api.g_varchar2_table(280) := '612E61786973582E747970652E63616C6C28632C632E417869732E756E6974732E782C622E6E6F726D616C697A65642E7365726965732C6A2C612E6178697358292C653D766F696420303D3D3D612E61786973592E747970653F6E657720632E4175746F';
wwv_flow_api.g_varchar2_table(281) := '5363616C654178697328632E417869732E756E6974732E792C622E6E6F726D616C697A65642E7365726965732C6A2C632E657874656E64287B7D2C612E61786973592C7B686967683A632E69734E756D6572696328612E68696768293F612E686967683A';
wwv_flow_api.g_varchar2_table(282) := '612E61786973592E686967682C6C6F773A632E69734E756D6572696328612E6C6F77293F612E6C6F773A612E61786973592E6C6F777D29293A612E61786973592E747970652E63616C6C28632C632E417869732E756E6974732E792C622E6E6F726D616C';
wwv_flow_api.g_varchar2_table(283) := '697A65642E7365726965732C6A2C612E6178697359292C642E63726561746547726964416E644C6162656C7328672C692C746869732E737570706F727473466F726569676E4F626A6563742C612C746869732E6576656E74456D6974746572292C652E63';
wwv_flow_api.g_varchar2_table(284) := '726561746547726964416E644C6162656C7328672C692C746869732E737570706F727473466F726569676E4F626A6563742C612C746869732E6576656E74456D6974746572292C612E73686F77477269644261636B67726F756E642626632E6372656174';
wwv_flow_api.g_varchar2_table(285) := '65477269644261636B67726F756E6428672C6A2C612E636C6173734E616D65732E677269644261636B67726F756E642C746869732E6576656E74456D6974746572292C622E7261772E7365726965732E666F72456163682866756E6374696F6E28662C67';
wwv_flow_api.g_varchar2_table(286) := '297B76617220693D682E656C656D28226722293B692E61747472287B2263743A7365726965732D6E616D65223A662E6E616D652C2263743A6D657461223A632E73657269616C697A6528662E6D657461297D292C692E616464436C617373285B612E636C';
wwv_flow_api.g_varchar2_table(287) := '6173734E616D65732E7365726965732C662E636C6173734E616D657C7C612E636C6173734E616D65732E7365726965732B222D222B632E616C7068614E756D65726174652867295D2E6A6F696E2822202229293B766172206B3D5B5D2C6C3D5B5D3B622E';
wwv_flow_api.g_varchar2_table(288) := '6E6F726D616C697A65642E7365726965735B675D2E666F72456163682866756E6374696F6E28612C68297B76617220693D7B783A6A2E78312B642E70726F6A65637456616C756528612C682C622E6E6F726D616C697A65642E7365726965735B675D292C';
wwv_flow_api.g_varchar2_table(289) := '793A6A2E79312D652E70726F6A65637456616C756528612C682C622E6E6F726D616C697A65642E7365726965735B675D297D3B6B2E7075736828692E782C692E79292C6C2E70757368287B76616C75653A612C76616C7565496E6465783A682C6D657461';
wwv_flow_api.g_varchar2_table(290) := '3A632E6765744D6574614461746128662C68297D297D2E62696E64287468697329293B766172206D3D7B6C696E65536D6F6F74683A632E6765745365726965734F7074696F6E28662C612C226C696E65536D6F6F746822292C73686F77506F696E743A63';
wwv_flow_api.g_varchar2_table(291) := '2E6765745365726965734F7074696F6E28662C612C2273686F77506F696E7422292C73686F774C696E653A632E6765745365726965734F7074696F6E28662C612C2273686F774C696E6522292C73686F77417265613A632E6765745365726965734F7074';
wwv_flow_api.g_varchar2_table(292) := '696F6E28662C612C2273686F774172656122292C61726561426173653A632E6765745365726965734F7074696F6E28662C612C22617265614261736522297D2C6E3D2266756E6374696F6E223D3D747970656F66206D2E6C696E65536D6F6F74683F6D2E';
wwv_flow_api.g_varchar2_table(293) := '6C696E65536D6F6F74683A6D2E6C696E65536D6F6F74683F632E496E746572706F6C6174696F6E2E6D6F6E6F746F6E65437562696328293A632E496E746572706F6C6174696F6E2E6E6F6E6528292C6F3D6E286B2C6C293B6966286D2E73686F77506F69';
wwv_flow_api.g_varchar2_table(294) := '6E7426266F2E70617468456C656D656E74732E666F72456163682866756E6374696F6E2862297B76617220683D692E656C656D28226C696E65222C7B78313A622E782C79313A622E792C78323A622E782B2E30312C79323A622E797D2C612E636C617373';
wwv_flow_api.g_varchar2_table(295) := '4E616D65732E706F696E74292E61747472287B2263743A76616C7565223A5B622E646174612E76616C75652E782C622E646174612E76616C75652E795D2E66696C74657228632E69734E756D65726963292E6A6F696E28222C22292C2263743A6D657461';
wwv_flow_api.g_varchar2_table(296) := '223A632E73657269616C697A6528622E646174612E6D657461297D293B746869732E6576656E74456D69747465722E656D6974282264726177222C7B747970653A22706F696E74222C76616C75653A622E646174612E76616C75652C696E6465783A622E';
wwv_flow_api.g_varchar2_table(297) := '646174612E76616C7565496E6465782C6D6574613A622E646174612E6D6574612C7365726965733A662C736572696573496E6465783A672C61786973583A642C61786973593A652C67726F75703A692C656C656D656E743A682C783A622E782C793A622E';
wwv_flow_api.g_varchar2_table(298) := '797D297D2E62696E64287468697329292C6D2E73686F774C696E65297B76617220703D692E656C656D282270617468222C7B643A6F2E737472696E6769667928297D2C612E636C6173734E616D65732E6C696E652C2130293B746869732E6576656E7445';
wwv_flow_api.g_varchar2_table(299) := '6D69747465722E656D6974282264726177222C7B747970653A226C696E65222C76616C7565733A622E6E6F726D616C697A65642E7365726965735B675D2C706174683A6F2E636C6F6E6528292C6368617274526563743A6A2C696E6465783A672C736572';
wwv_flow_api.g_varchar2_table(300) := '6965733A662C736572696573496E6465783A672C7365726965734D6574613A662E6D6574612C61786973583A642C61786973593A652C67726F75703A692C656C656D656E743A707D297D6966286D2E73686F77417265612626652E72616E6765297B7661';
wwv_flow_api.g_varchar2_table(301) := '7220713D4D6174682E6D6178284D6174682E6D696E286D2E61726561426173652C652E72616E67652E6D6178292C652E72616E67652E6D696E292C723D6A2E79312D652E70726F6A65637456616C75652871293B6F2E73706C69744279436F6D6D616E64';
wwv_flow_api.g_varchar2_table(302) := '28224D22292E66696C7465722866756E6374696F6E2861297B72657475726E20612E70617468456C656D656E74732E6C656E6774683E317D292E6D61702866756E6374696F6E2861297B76617220623D612E70617468456C656D656E74735B305D2C633D';
wwv_flow_api.g_varchar2_table(303) := '612E70617468456C656D656E74735B612E70617468456C656D656E74732E6C656E6774682D315D3B72657475726E20612E636C6F6E65282130292E706F736974696F6E2830292E72656D6F76652831292E6D6F766528622E782C72292E6C696E6528622E';
wwv_flow_api.g_varchar2_table(304) := '782C622E79292E706F736974696F6E28612E70617468456C656D656E74732E6C656E6774682B31292E6C696E6528632E782C72297D292E666F72456163682866756E6374696F6E2863297B76617220683D692E656C656D282270617468222C7B643A632E';
wwv_flow_api.g_varchar2_table(305) := '737472696E6769667928297D2C612E636C6173734E616D65732E617265612C2130293B746869732E6576656E74456D69747465722E656D6974282264726177222C7B747970653A2261726561222C76616C7565733A622E6E6F726D616C697A65642E7365';
wwv_flow_api.g_varchar2_table(306) := '726965735B675D2C706174683A632E636C6F6E6528292C7365726965733A662C736572696573496E6465783A672C61786973583A642C61786973593A652C6368617274526563743A6A2C696E6465783A672C67726F75703A692C656C656D656E743A687D';
wwv_flow_api.g_varchar2_table(307) := '297D2E62696E64287468697329297D7D2E62696E64287468697329292C746869732E6576656E74456D69747465722E656D6974282263726561746564222C7B626F756E64733A652E626F756E64732C6368617274526563743A6A2C61786973583A642C61';
wwv_flow_api.g_varchar2_table(308) := '786973593A652C7376673A746869732E7376672C6F7074696F6E733A617D297D66756E6374696F6E206528612C622C642C65297B632E4C696E655B227375706572225D2E636F6E7374727563746F722E63616C6C28746869732C612C622C662C632E6578';
wwv_flow_api.g_varchar2_table(309) := '74656E64287B7D2C662C64292C65297D76617220663D7B61786973583A7B6F66667365743A33302C706F736974696F6E3A22656E64222C6C6162656C4F66667365743A7B783A302C793A307D2C73686F774C6162656C3A21302C73686F77477269643A21';
wwv_flow_api.g_varchar2_table(310) := '302C6C6162656C496E746572706F6C6174696F6E466E633A632E6E6F6F702C747970653A766F696420307D2C61786973593A7B6F66667365743A34302C706F736974696F6E3A227374617274222C6C6162656C4F66667365743A7B783A302C793A307D2C';
wwv_flow_api.g_varchar2_table(311) := '73686F774C6162656C3A21302C73686F77477269643A21302C6C6162656C496E746572706F6C6174696F6E466E633A632E6E6F6F702C747970653A766F696420302C7363616C654D696E53706163653A32302C6F6E6C79496E74656765723A21317D2C77';
wwv_flow_api.g_varchar2_table(312) := '696474683A766F696420302C6865696768743A766F696420302C73686F774C696E653A21302C73686F77506F696E743A21302C73686F77417265613A21312C61726561426173653A302C6C696E65536D6F6F74683A21302C73686F77477269644261636B';
wwv_flow_api.g_varchar2_table(313) := '67726F756E643A21312C6C6F773A766F696420302C686967683A766F696420302C636861727450616464696E673A7B746F703A31352C72696768743A31352C626F74746F6D3A352C6C6566743A31307D2C66756C6C57696474683A21312C726576657273';
wwv_flow_api.g_varchar2_table(314) := '65446174613A21312C636C6173734E616D65733A7B63686172743A2263742D63686172742D6C696E65222C6C6162656C3A2263742D6C6162656C222C6C6162656C47726F75703A2263742D6C6162656C73222C7365726965733A2263742D736572696573';
wwv_flow_api.g_varchar2_table(315) := '222C6C696E653A2263742D6C696E65222C706F696E743A2263742D706F696E74222C617265613A2263742D61726561222C677269643A2263742D67726964222C6772696447726F75703A2263742D6772696473222C677269644261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(316) := '2263742D677269642D6261636B67726F756E64222C766572746963616C3A2263742D766572746963616C222C686F72697A6F6E74616C3A2263742D686F72697A6F6E74616C222C73746172743A2263742D7374617274222C656E643A2263742D656E6422';
wwv_flow_api.g_varchar2_table(317) := '7D7D3B632E4C696E653D632E426173652E657874656E64287B636F6E7374727563746F723A652C63726561746543686172743A647D297D2877696E646F772C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B227573652073747269';
wwv_flow_api.g_varchar2_table(318) := '6374223B66756E6374696F6E20642861297B76617220622C643B612E646973747269627574655365726965733F28623D632E6E6F726D616C697A654461746128746869732E646174612C612E72657665727365446174612C612E686F72697A6F6E74616C';
wwv_flow_api.g_varchar2_table(319) := '426172733F2278223A227922292C622E6E6F726D616C697A65642E7365726965733D622E6E6F726D616C697A65642E7365726965732E6D61702866756E6374696F6E2861297B72657475726E5B615D7D29293A623D632E6E6F726D616C697A6544617461';
wwv_flow_api.g_varchar2_table(320) := '28746869732E646174612C612E72657665727365446174612C612E686F72697A6F6E74616C426172733F2278223A227922292C746869732E7376673D632E63726561746553766728746869732E636F6E7461696E65722C612E77696474682C612E686569';
wwv_flow_api.g_varchar2_table(321) := '6768742C612E636C6173734E616D65732E63686172742B28612E686F72697A6F6E74616C426172733F2220222B612E636C6173734E616D65732E686F72697A6F6E74616C426172733A222229293B76617220653D746869732E7376672E656C656D282267';
wwv_flow_api.g_varchar2_table(322) := '22292E616464436C61737328612E636C6173734E616D65732E6772696447726F7570292C673D746869732E7376672E656C656D28226722292C683D746869732E7376672E656C656D28226722292E616464436C61737328612E636C6173734E616D65732E';
wwv_flow_api.g_varchar2_table(323) := '6C6162656C47726F7570293B696628612E737461636B42617273262630213D3D622E6E6F726D616C697A65642E7365726965732E6C656E677468297B76617220693D632E73657269616C4D617028622E6E6F726D616C697A65642E7365726965732C6675';
wwv_flow_api.g_varchar2_table(324) := '6E6374696F6E28297B0A72657475726E2041727261792E70726F746F747970652E736C6963652E63616C6C28617267756D656E7473292E6D61702866756E6374696F6E2861297B72657475726E20617D292E7265647563652866756E6374696F6E28612C';
wwv_flow_api.g_varchar2_table(325) := '62297B72657475726E7B783A612E782B28622626622E78297C7C302C793A612E792B28622626622E79297C7C307D7D2C7B783A302C793A307D297D293B643D632E676574486967684C6F77285B695D2C612C612E686F72697A6F6E74616C426172733F22';
wwv_flow_api.g_varchar2_table(326) := '78223A227922297D656C736520643D632E676574486967684C6F7728622E6E6F726D616C697A65642E7365726965732C612C612E686F72697A6F6E74616C426172733F2278223A227922293B642E686967683D2B612E686967687C7C28303D3D3D612E68';
wwv_flow_api.g_varchar2_table(327) := '6967683F303A642E68696768292C642E6C6F773D2B612E6C6F777C7C28303D3D3D612E6C6F773F303A642E6C6F77293B766172206A2C6B2C6C2C6D2C6E2C6F3D632E63726561746543686172745265637428746869732E7376672C612C662E7061646469';
wwv_flow_api.g_varchar2_table(328) := '6E67293B6B3D612E646973747269627574655365726965732626612E737461636B426172733F622E6E6F726D616C697A65642E6C6162656C732E736C69636528302C31293A622E6E6F726D616C697A65642E6C6162656C732C612E686F72697A6F6E7461';
wwv_flow_api.g_varchar2_table(329) := '6C426172733F286A3D6D3D766F696420303D3D3D612E61786973582E747970653F6E657720632E4175746F5363616C654178697328632E417869732E756E6974732E782C622E6E6F726D616C697A65642E7365726965732C6F2C632E657874656E64287B';
wwv_flow_api.g_varchar2_table(330) := '7D2C612E61786973582C7B686967684C6F773A642C7265666572656E636556616C75653A307D29293A612E61786973582E747970652E63616C6C28632C632E417869732E756E6974732E782C622E6E6F726D616C697A65642E7365726965732C6F2C632E';
wwv_flow_api.g_varchar2_table(331) := '657874656E64287B7D2C612E61786973582C7B686967684C6F773A642C7265666572656E636556616C75653A307D29292C6C3D6E3D766F696420303D3D3D612E61786973592E747970653F6E657720632E537465704178697328632E417869732E756E69';
wwv_flow_api.g_varchar2_table(332) := '74732E792C622E6E6F726D616C697A65642E7365726965732C6F2C7B7469636B733A6B7D293A612E61786973592E747970652E63616C6C28632C632E417869732E756E6974732E792C622E6E6F726D616C697A65642E7365726965732C6F2C612E617869';
wwv_flow_api.g_varchar2_table(333) := '735929293A286C3D6D3D766F696420303D3D3D612E61786973582E747970653F6E657720632E537465704178697328632E417869732E756E6974732E782C622E6E6F726D616C697A65642E7365726965732C6F2C7B7469636B733A6B7D293A612E617869';
wwv_flow_api.g_varchar2_table(334) := '73582E747970652E63616C6C28632C632E417869732E756E6974732E782C622E6E6F726D616C697A65642E7365726965732C6F2C612E6178697358292C6A3D6E3D766F696420303D3D3D612E61786973592E747970653F6E657720632E4175746F536361';
wwv_flow_api.g_varchar2_table(335) := '6C654178697328632E417869732E756E6974732E792C622E6E6F726D616C697A65642E7365726965732C6F2C632E657874656E64287B7D2C612E61786973592C7B686967684C6F773A642C7265666572656E636556616C75653A307D29293A612E617869';
wwv_flow_api.g_varchar2_table(336) := '73592E747970652E63616C6C28632C632E417869732E756E6974732E792C622E6E6F726D616C697A65642E7365726965732C6F2C632E657874656E64287B7D2C612E61786973592C7B686967684C6F773A642C7265666572656E636556616C75653A307D';
wwv_flow_api.g_varchar2_table(337) := '2929293B76617220703D612E686F72697A6F6E74616C426172733F6F2E78312B6A2E70726F6A65637456616C75652830293A6F2E79312D6A2E70726F6A65637456616C75652830292C713D5B5D3B6C2E63726561746547726964416E644C6162656C7328';
wwv_flow_api.g_varchar2_table(338) := '652C682C746869732E737570706F727473466F726569676E4F626A6563742C612C746869732E6576656E74456D6974746572292C6A2E63726561746547726964416E644C6162656C7328652C682C746869732E737570706F727473466F726569676E4F62';
wwv_flow_api.g_varchar2_table(339) := '6A6563742C612C746869732E6576656E74456D6974746572292C612E73686F77477269644261636B67726F756E642626632E637265617465477269644261636B67726F756E6428652C6F2C612E636C6173734E616D65732E677269644261636B67726F75';
wwv_flow_api.g_varchar2_table(340) := '6E642C746869732E6576656E74456D6974746572292C622E7261772E7365726965732E666F72456163682866756E6374696F6E28642C65297B76617220662C682C693D652D28622E7261772E7365726965732E6C656E6774682D31292F323B663D612E64';
wwv_flow_api.g_varchar2_table(341) := '697374726962757465536572696573262621612E737461636B426172733F6C2E617869734C656E6774682F622E6E6F726D616C697A65642E7365726965732E6C656E6774682F323A612E646973747269627574655365726965732626612E737461636B42';
wwv_flow_api.g_varchar2_table(342) := '6172733F6C2E617869734C656E6774682F323A6C2E617869734C656E6774682F622E6E6F726D616C697A65642E7365726965735B655D2E6C656E6774682F322C683D672E656C656D28226722292C682E61747472287B2263743A7365726965732D6E616D';
wwv_flow_api.g_varchar2_table(343) := '65223A642E6E616D652C2263743A6D657461223A632E73657269616C697A6528642E6D657461297D292C682E616464436C617373285B612E636C6173734E616D65732E7365726965732C642E636C6173734E616D657C7C612E636C6173734E616D65732E';
wwv_flow_api.g_varchar2_table(344) := '7365726965732B222D222B632E616C7068614E756D65726174652865295D2E6A6F696E2822202229292C622E6E6F726D616C697A65642E7365726965735B655D2E666F72456163682866756E6374696F6E28672C6B297B76617220722C732C742C753B69';
wwv_flow_api.g_varchar2_table(345) := '6628753D612E64697374726962757465536572696573262621612E737461636B426172733F653A612E646973747269627574655365726965732626612E737461636B426172733F303A6B2C723D612E686F72697A6F6E74616C426172733F7B783A6F2E78';
wwv_flow_api.g_varchar2_table(346) := '312B6A2E70726F6A65637456616C756528672626672E783F672E783A302C6B2C622E6E6F726D616C697A65642E7365726965735B655D292C793A6F2E79312D6C2E70726F6A65637456616C756528672626672E793F672E793A302C752C622E6E6F726D61';
wwv_flow_api.g_varchar2_table(347) := '6C697A65642E7365726965735B655D297D3A7B783A6F2E78312B6C2E70726F6A65637456616C756528672626672E783F672E783A302C752C622E6E6F726D616C697A65642E7365726965735B655D292C793A6F2E79312D6A2E70726F6A65637456616C75';
wwv_flow_api.g_varchar2_table(348) := '6528672626672E793F672E793A302C6B2C622E6E6F726D616C697A65642E7365726965735B655D297D2C6C20696E7374616E63656F6620632E53746570417869732626286C2E6F7074696F6E732E737472657463687C7C28725B6C2E756E6974732E706F';
wwv_flow_api.g_varchar2_table(349) := '735D2B3D662A28612E686F72697A6F6E74616C426172733F2D313A3129292C725B6C2E756E6974732E706F735D2B3D612E737461636B426172737C7C612E646973747269627574655365726965733F303A692A612E73657269657342617244697374616E';
wwv_flow_api.g_varchar2_table(350) := '63652A28612E686F72697A6F6E74616C426172733F2D313A3129292C743D715B6B5D7C7C702C715B6B5D3D742D28702D725B6C2E636F756E746572556E6974732E706F735D292C766F69642030213D3D67297B76617220763D7B7D3B765B6C2E756E6974';
wwv_flow_api.g_varchar2_table(351) := '732E706F732B2231225D3D725B6C2E756E6974732E706F735D2C765B6C2E756E6974732E706F732B2232225D3D725B6C2E756E6974732E706F735D2C21612E737461636B426172737C7C22616363756D756C61746522213D3D612E737461636B4D6F6465';
wwv_flow_api.g_varchar2_table(352) := '2626612E737461636B4D6F64653F28765B6C2E636F756E746572556E6974732E706F732B2231225D3D702C765B6C2E636F756E746572556E6974732E706F732B2232225D3D725B6C2E636F756E746572556E6974732E706F735D293A28765B6C2E636F75';
wwv_flow_api.g_varchar2_table(353) := '6E746572556E6974732E706F732B2231225D3D742C765B6C2E636F756E746572556E6974732E706F732B2232225D3D715B6B5D292C762E78313D4D6174682E6D696E284D6174682E6D617828762E78312C6F2E7831292C6F2E7832292C762E78323D4D61';
wwv_flow_api.g_varchar2_table(354) := '74682E6D696E284D6174682E6D617828762E78322C6F2E7831292C6F2E7832292C762E79313D4D6174682E6D696E284D6174682E6D617828762E79312C6F2E7932292C6F2E7931292C762E79323D4D6174682E6D696E284D6174682E6D617828762E7932';
wwv_flow_api.g_varchar2_table(355) := '2C6F2E7932292C6F2E7931293B76617220773D632E6765744D6574614461746128642C6B293B733D682E656C656D28226C696E65222C762C612E636C6173734E616D65732E626172292E61747472287B2263743A76616C7565223A5B672E782C672E795D';
wwv_flow_api.g_varchar2_table(356) := '2E66696C74657228632E69734E756D65726963292E6A6F696E28222C22292C2263743A6D657461223A632E73657269616C697A652877297D292C746869732E6576656E74456D69747465722E656D6974282264726177222C632E657874656E64287B7479';
wwv_flow_api.g_varchar2_table(357) := '70653A22626172222C76616C75653A672C696E6465783A6B2C6D6574613A772C7365726965733A642C736572696573496E6465783A652C61786973583A6D2C61786973593A6E2C6368617274526563743A6F2C67726F75703A682C656C656D656E743A73';
wwv_flow_api.g_varchar2_table(358) := '7D2C7629297D7D2E62696E64287468697329297D2E62696E64287468697329292C746869732E6576656E74456D69747465722E656D6974282263726561746564222C7B626F756E64733A6A2E626F756E64732C6368617274526563743A6F2C6178697358';
wwv_flow_api.g_varchar2_table(359) := '3A6D2C61786973593A6E2C7376673A746869732E7376672C6F7074696F6E733A617D297D66756E6374696F6E206528612C622C642C65297B632E4261725B227375706572225D2E636F6E7374727563746F722E63616C6C28746869732C612C622C662C63';
wwv_flow_api.g_varchar2_table(360) := '2E657874656E64287B7D2C662C64292C65297D76617220663D7B61786973583A7B6F66667365743A33302C706F736974696F6E3A22656E64222C6C6162656C4F66667365743A7B783A302C793A307D2C73686F774C6162656C3A21302C73686F77477269';
wwv_flow_api.g_varchar2_table(361) := '643A21302C6C6162656C496E746572706F6C6174696F6E466E633A632E6E6F6F702C7363616C654D696E53706163653A33302C6F6E6C79496E74656765723A21317D2C61786973593A7B6F66667365743A34302C706F736974696F6E3A22737461727422';
wwv_flow_api.g_varchar2_table(362) := '2C6C6162656C4F66667365743A7B783A302C793A307D2C73686F774C6162656C3A21302C73686F77477269643A21302C6C6162656C496E746572706F6C6174696F6E466E633A632E6E6F6F702C7363616C654D696E53706163653A32302C6F6E6C79496E';
wwv_flow_api.g_varchar2_table(363) := '74656765723A21317D2C77696474683A766F696420302C6865696768743A766F696420302C686967683A766F696420302C6C6F773A766F696420302C7265666572656E636556616C75653A302C636861727450616464696E673A7B746F703A31352C7269';
wwv_flow_api.g_varchar2_table(364) := '6768743A31352C626F74746F6D3A352C6C6566743A31307D2C73657269657342617244697374616E63653A31352C737461636B426172733A21312C737461636B4D6F64653A22616363756D756C617465222C686F72697A6F6E74616C426172733A21312C';
wwv_flow_api.g_varchar2_table(365) := '646973747269627574655365726965733A21312C72657665727365446174613A21312C73686F77477269644261636B67726F756E643A21312C636C6173734E616D65733A7B63686172743A2263742D63686172742D626172222C686F72697A6F6E74616C';
wwv_flow_api.g_varchar2_table(366) := '426172733A2263742D686F72697A6F6E74616C2D62617273222C6C6162656C3A2263742D6C6162656C222C6C6162656C47726F75703A2263742D6C6162656C73222C7365726965733A2263742D736572696573222C6261723A2263742D626172222C6772';
wwv_flow_api.g_varchar2_table(367) := '69643A2263742D67726964222C6772696447726F75703A2263742D6772696473222C677269644261636B67726F756E643A2263742D677269642D6261636B67726F756E64222C766572746963616C3A2263742D766572746963616C222C686F72697A6F6E';
wwv_flow_api.g_varchar2_table(368) := '74616C3A2263742D686F72697A6F6E74616C222C73746172743A2263742D7374617274222C656E643A2263742D656E64227D7D3B632E4261723D632E426173652E657874656E64287B636F6E7374727563746F723A652C63726561746543686172743A64';
wwv_flow_api.g_varchar2_table(369) := '7D297D2877696E646F772C646F63756D656E742C61292C66756E6374696F6E28612C622C63297B2275736520737472696374223B66756E6374696F6E206428612C622C63297B76617220643D622E783E612E783B72657475726E20642626226578706C6F';
wwv_flow_api.g_varchar2_table(370) := '6465223D3D3D637C7C2164262622696D706C6F6465223D3D3D633F227374617274223A64262622696D706C6F6465223D3D3D637C7C21642626226578706C6F6465223D3D3D633F22656E64223A226D6964646C65227D66756E6374696F6E20652861297B';
wwv_flow_api.g_varchar2_table(371) := '76617220622C652C662C682C692C6A3D632E6E6F726D616C697A654461746128746869732E64617461292C6B3D5B5D2C6C3D612E7374617274416E676C653B746869732E7376673D632E63726561746553766728746869732E636F6E7461696E65722C61';
wwv_flow_api.g_varchar2_table(372) := '2E77696474682C612E6865696768742C612E646F6E75743F612E636C6173734E616D65732E6368617274446F6E75743A612E636C6173734E616D65732E6368617274506965292C653D632E63726561746543686172745265637428746869732E7376672C';
wwv_flow_api.g_varchar2_table(373) := '612C672E70616464696E67292C663D4D6174682E6D696E28652E776964746828292F322C652E68656967687428292F32292C693D612E746F74616C7C7C6A2E6E6F726D616C697A65642E7365726965732E7265647563652866756E6374696F6E28612C62';
wwv_flow_api.g_varchar2_table(374) := '297B72657475726E20612B627D2C30293B766172206D3D632E7175616E7469747928612E646F6E75745769647468293B2225223D3D3D6D2E756E69742626286D2E76616C75652A3D662F313030292C662D3D612E646F6E7574262621612E646F6E757453';
wwv_flow_api.g_varchar2_table(375) := '6F6C69643F6D2E76616C75652F323A302C683D226F757473696465223D3D3D612E6C6162656C506F736974696F6E7C7C612E646F6E7574262621612E646F6E7574536F6C69643F663A2263656E746572223D3D3D612E6C6162656C506F736974696F6E3F';
wwv_flow_api.g_varchar2_table(376) := '303A612E646F6E7574536F6C69643F662D6D2E76616C75652F323A662F322C682B3D612E6C6162656C4F66667365743B766172206E3D7B783A652E78312B652E776964746828292F322C793A652E79322B652E68656967687428292F327D2C6F3D313D3D';
wwv_flow_api.g_varchar2_table(377) := '3D6A2E7261772E7365726965732E66696C7465722866756E6374696F6E2861297B72657475726E20612E6861734F776E50726F7065727479282276616C756522293F30213D3D612E76616C75653A30213D3D617D292E6C656E6774683B6A2E7261772E73';
wwv_flow_api.g_varchar2_table(378) := '65726965732E666F72456163682866756E6374696F6E28612C62297B6B5B625D3D746869732E7376672E656C656D282267222C6E756C6C2C6E756C6C297D2E62696E64287468697329292C612E73686F774C6162656C262628623D746869732E7376672E';
wwv_flow_api.g_varchar2_table(379) := '656C656D282267222C6E756C6C2C6E756C6C29292C6A2E7261772E7365726965732E666F72456163682866756E6374696F6E28652C67297B69662830213D3D6A2E6E6F726D616C697A65642E7365726965735B675D7C7C21612E69676E6F7265456D7074';
wwv_flow_api.g_varchar2_table(380) := '7956616C756573297B6B5B675D2E61747472287B2263743A7365726965732D6E616D65223A652E6E616D657D292C6B5B675D2E616464436C617373285B612E636C6173734E616D65732E7365726965732C652E636C6173734E616D657C7C612E636C6173';
wwv_flow_api.g_varchar2_table(381) := '734E616D65732E7365726965732B222D222B632E616C7068614E756D65726174652867295D2E6A6F696E2822202229293B76617220703D693E303F6C2B6A2E6E6F726D616C697A65642E7365726965735B675D2F692A3336303A302C713D4D6174682E6D';
wwv_flow_api.g_varchar2_table(382) := '617828302C6C2D28303D3D3D677C7C6F3F303A2E3229293B702D713E3D3335392E3939262628703D712B3335392E3939293B76617220722C732C742C753D632E706F6C6172546F43617274657369616E286E2E782C6E2E792C662C71292C763D632E706F';
wwv_flow_api.g_varchar2_table(383) := '6C6172546F43617274657369616E286E2E782C6E2E792C662C70292C773D6E657720632E5376672E506174682821612E646F6E75747C7C612E646F6E7574536F6C6964292E6D6F766528762E782C762E79292E61726328662C662C302C702D6C3E313830';
wwv_flow_api.g_varchar2_table(384) := '2C302C752E782C752E79293B612E646F6E75743F612E646F6E7574536F6C6964262628743D662D6D2E76616C75652C723D632E706F6C6172546F43617274657369616E286E2E782C6E2E792C742C6C2D28303D3D3D677C7C6F3F303A2E3229292C733D63';
wwv_flow_api.g_varchar2_table(385) := '2E706F6C6172546F43617274657369616E286E2E782C6E2E792C742C70292C772E6C696E6528722E782C722E79292C772E61726328742C742C302C702D6C3E3138302C312C732E782C732E7929293A772E6C696E65286E2E782C6E2E79293B7661722078';
wwv_flow_api.g_varchar2_table(386) := '3D612E636C6173734E616D65732E736C6963655069653B612E646F6E7574262628783D612E636C6173734E616D65732E736C696365446F6E75742C612E646F6E7574536F6C6964262628783D612E636C6173734E616D65732E736C696365446F6E757453';
wwv_flow_api.g_varchar2_table(387) := '6F6C696429293B76617220793D6B5B675D2E656C656D282270617468222C7B643A772E737472696E6769667928297D2C78293B696628792E61747472287B2263743A76616C7565223A6A2E6E6F726D616C697A65642E7365726965735B675D2C2263743A';
wwv_flow_api.g_varchar2_table(388) := '6D657461223A632E73657269616C697A6528652E6D657461297D292C612E646F6E7574262621612E646F6E7574536F6C6964262628792E5F6E6F64652E7374796C652E7374726F6B6557696474683D6D2E76616C75652B22707822292C746869732E6576';
wwv_flow_api.g_varchar2_table(389) := '656E74456D69747465722E656D6974282264726177222C7B747970653A22736C696365222C76616C75653A6A2E6E6F726D616C697A65642E7365726965735B675D2C746F74616C4461746153756D3A692C696E6465783A672C6D6574613A652E6D657461';
wwv_flow_api.g_varchar2_table(390) := '2C7365726965733A652C67726F75703A6B5B675D2C656C656D656E743A792C706174683A772E636C6F6E6528292C63656E7465723A6E2C7261646975733A662C7374617274416E676C653A6C2C656E64416E676C653A707D292C612E73686F774C616265';
wwv_flow_api.g_varchar2_table(391) := '6C297B766172207A3B7A3D313D3D3D6A2E7261772E7365726965732E6C656E6774683F7B783A6E2E782C793A6E2E797D3A632E706F6C6172546F43617274657369616E286E2E782C6E2E792C682C6C2B28702D6C292F32293B76617220413B413D6A2E6E';
wwv_flow_api.g_varchar2_table(392) := '6F726D616C697A65642E6C6162656C73262621632E697346616C7365794275745A65726F286A2E6E6F726D616C697A65642E6C6162656C735B675D293F6A2E6E6F726D616C697A65642E6C6162656C735B675D3A6A2E6E6F726D616C697A65642E736572';
wwv_flow_api.g_varchar2_table(393) := '6965735B675D3B76617220423D612E6C6162656C496E746572706F6C6174696F6E466E6328412C67293B696628427C7C303D3D3D42297B76617220433D622E656C656D282274657874222C7B64783A7A2E782C64793A7A2E792C22746578742D616E6368';
wwv_flow_api.g_varchar2_table(394) := '6F72223A64286E2C7A2C612E6C6162656C446972656374696F6E297D2C612E636C6173734E616D65732E6C6162656C292E746578742822222B42293B746869732E6576656E74456D69747465722E656D6974282264726177222C7B747970653A226C6162';
wwv_flow_api.g_varchar2_table(395) := '656C222C696E6465783A672C67726F75703A622C656C656D656E743A432C746578743A22222B422C783A7A2E782C793A7A2E797D297D7D6C3D707D7D2E62696E64287468697329292C746869732E6576656E74456D69747465722E656D69742822637265';
wwv_flow_api.g_varchar2_table(396) := '61746564222C7B6368617274526563743A652C7376673A746869732E7376672C6F7074696F6E733A617D297D66756E6374696F6E206628612C622C642C65297B632E5069655B227375706572225D2E636F6E7374727563746F722E63616C6C2874686973';
wwv_flow_api.g_varchar2_table(397) := '2C612C622C672C632E657874656E64287B7D2C672C64292C65297D76617220673D7B77696474683A766F696420302C6865696768743A766F696420302C636861727450616464696E673A352C636C6173734E616D65733A7B63686172745069653A226374';
wwv_flow_api.g_varchar2_table(398) := '2D63686172742D706965222C6368617274446F6E75743A2263742D63686172742D646F6E7574222C7365726965733A2263742D736572696573222C736C6963655069653A2263742D736C6963652D706965222C736C696365446F6E75743A2263742D736C';
wwv_flow_api.g_varchar2_table(399) := '6963652D646F6E7574222C736C696365446F6E7574536F6C69643A2263742D736C6963652D646F6E75742D736F6C6964222C6C6162656C3A2263742D6C6162656C227D2C7374617274416E676C653A302C746F74616C3A766F696420302C646F6E75743A';
wwv_flow_api.g_varchar2_table(400) := '21312C646F6E7574536F6C69643A21312C646F6E757457696474683A36302C73686F774C6162656C3A21302C6C6162656C4F66667365743A302C6C6162656C506F736974696F6E3A22696E73696465222C6C6162656C496E746572706F6C6174696F6E46';
wwv_flow_api.g_varchar2_table(401) := '6E633A632E6E6F6F702C6C6162656C446972656374696F6E3A226E65757472616C222C72657665727365446174613A21312C69676E6F7265456D70747956616C7565733A21317D3B632E5069653D632E426173652E657874656E64287B636F6E73747275';
wwv_flow_api.g_varchar2_table(402) := '63746F723A662C63726561746543686172743A652C64657465726D696E65416E63686F72506F736974696F6E3A647D297D2877696E646F772C646F63756D656E742C61292C617D293B0A2F2F2320736F757263654D617070696E6755524C3D6368617274';
wwv_flow_api.g_varchar2_table(403) := '6973742E6D696E2E6A732E6D6170';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(25156025441341174)
,p_plugin_id=>wwv_flow_api.id(25154239159342583)
,p_file_name=>'chartist.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A21206A51756572792076312E31322E34207C20286329206A517565727920466F756E646174696F6E207C206A71756572792E6F72672F6C6963656E7365202A2F0A2166756E6374696F6E28612C62297B226F626A656374223D3D747970656F66206D';
wwv_flow_api.g_varchar2_table(2) := '6F64756C652626226F626A656374223D3D747970656F66206D6F64756C652E6578706F7274733F6D6F64756C652E6578706F7274733D612E646F63756D656E743F6228612C2130293A66756E6374696F6E2861297B69662821612E646F63756D656E7429';
wwv_flow_api.g_varchar2_table(3) := '7468726F77206E6577204572726F7228226A517565727920726571756972657320612077696E646F772077697468206120646F63756D656E7422293B72657475726E20622861297D3A622861297D2822756E646566696E656422213D747970656F662077';
wwv_flow_api.g_varchar2_table(4) := '696E646F773F77696E646F773A746869732C66756E6374696F6E28612C62297B76617220633D5B5D2C643D612E646F63756D656E742C653D632E736C6963652C663D632E636F6E6361742C673D632E707573682C683D632E696E6465784F662C693D7B7D';
wwv_flow_api.g_varchar2_table(5) := '2C6A3D692E746F537472696E672C6B3D692E6861734F776E50726F70657274792C6C3D7B7D2C6D3D22312E31322E34222C6E3D66756E6374696F6E28612C62297B72657475726E206E6577206E2E666E2E696E697428612C62297D2C6F3D2F5E5B5C735C';
wwv_flow_api.g_varchar2_table(6) := '75464546465C7841305D2B7C5B5C735C75464546465C7841305D2B242F672C703D2F5E2D6D732D2F2C713D2F2D285B5C64612D7A5D292F67692C723D66756E6374696F6E28612C62297B72657475726E20622E746F55707065724361736528297D3B6E2E';
wwv_flow_api.g_varchar2_table(7) := '666E3D6E2E70726F746F747970653D7B6A71756572793A6D2C636F6E7374727563746F723A6E2C73656C6563746F723A22222C6C656E6774683A302C746F41727261793A66756E6374696F6E28297B72657475726E20652E63616C6C2874686973297D2C';
wwv_flow_api.g_varchar2_table(8) := '6765743A66756E6374696F6E2861297B72657475726E206E756C6C213D613F303E613F746869735B612B746869732E6C656E6774685D3A746869735B615D3A652E63616C6C2874686973297D2C70757368537461636B3A66756E6374696F6E2861297B76';
wwv_flow_api.g_varchar2_table(9) := '617220623D6E2E6D6572676528746869732E636F6E7374727563746F7228292C61293B72657475726E20622E707265764F626A6563743D746869732C622E636F6E746578743D746869732E636F6E746578742C627D2C656163683A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(10) := '61297B72657475726E206E2E6561636828746869732C61297D2C6D61703A66756E6374696F6E2861297B72657475726E20746869732E70757368537461636B286E2E6D617028746869732C66756E6374696F6E28622C63297B72657475726E20612E6361';
wwv_flow_api.g_varchar2_table(11) := '6C6C28622C632C62297D29297D2C736C6963653A66756E6374696F6E28297B72657475726E20746869732E70757368537461636B28652E6170706C7928746869732C617267756D656E747329297D2C66697273743A66756E6374696F6E28297B72657475';
wwv_flow_api.g_varchar2_table(12) := '726E20746869732E65712830297D2C6C6173743A66756E6374696F6E28297B72657475726E20746869732E6571282D31297D2C65713A66756E6374696F6E2861297B76617220623D746869732E6C656E6774682C633D2B612B28303E613F623A30293B72';
wwv_flow_api.g_varchar2_table(13) := '657475726E20746869732E70757368537461636B28633E3D302626623E633F5B746869735B635D5D3A5B5D297D2C656E643A66756E6374696F6E28297B72657475726E20746869732E707265764F626A6563747C7C746869732E636F6E7374727563746F';
wwv_flow_api.g_varchar2_table(14) := '7228297D2C707573683A672C736F72743A632E736F72742C73706C6963653A632E73706C6963657D2C6E2E657874656E643D6E2E666E2E657874656E643D66756E6374696F6E28297B76617220612C622C632C642C652C662C673D617267756D656E7473';
wwv_flow_api.g_varchar2_table(15) := '5B305D7C7C7B7D2C683D312C693D617267756D656E74732E6C656E6774682C6A3D21313B666F722822626F6F6C65616E223D3D747970656F6620672626286A3D672C673D617267756D656E74735B685D7C7C7B7D2C682B2B292C226F626A656374223D3D';
wwv_flow_api.g_varchar2_table(16) := '747970656F6620677C7C6E2E697346756E6374696F6E2867297C7C28673D7B7D292C683D3D3D69262628673D746869732C682D2D293B693E683B682B2B296966286E756C6C213D28653D617267756D656E74735B685D2929666F72286420696E20652961';
wwv_flow_api.g_varchar2_table(17) := '3D675B645D2C633D655B645D2C67213D3D632626286A2626632626286E2E6973506C61696E4F626A6563742863297C7C28623D6E2E6973417272617928632929293F28623F28623D21312C663D6126266E2E697341727261792861293F613A5B5D293A66';
wwv_flow_api.g_varchar2_table(18) := '3D6126266E2E6973506C61696E4F626A6563742861293F613A7B7D2C675B645D3D6E2E657874656E64286A2C662C6329293A766F69642030213D3D63262628675B645D3D6329293B72657475726E20677D2C6E2E657874656E64287B657870616E646F3A';
wwv_flow_api.g_varchar2_table(19) := '226A5175657279222B286D2B4D6174682E72616E646F6D2829292E7265706C616365282F5C442F672C2222292C697352656164793A21302C6572726F723A66756E6374696F6E2861297B7468726F77206E6577204572726F722861297D2C6E6F6F703A66';
wwv_flow_api.g_varchar2_table(20) := '756E6374696F6E28297B7D2C697346756E6374696F6E3A66756E6374696F6E2861297B72657475726E2266756E6374696F6E223D3D3D6E2E747970652861297D2C697341727261793A41727261792E697341727261797C7C66756E6374696F6E2861297B';
wwv_flow_api.g_varchar2_table(21) := '72657475726E226172726179223D3D3D6E2E747970652861297D2C697357696E646F773A66756E6374696F6E2861297B72657475726E206E756C6C213D612626613D3D612E77696E646F777D2C69734E756D657269633A66756E6374696F6E2861297B76';
wwv_flow_api.g_varchar2_table(22) := '617220623D612626612E746F537472696E6728293B72657475726E216E2E697341727261792861292626622D7061727365466C6F61742862292B313E3D307D2C6973456D7074794F626A6563743A66756E6374696F6E2861297B76617220623B666F7228';
wwv_flow_api.g_varchar2_table(23) := '6220696E20612972657475726E21313B72657475726E21307D2C6973506C61696E4F626A6563743A66756E6374696F6E2861297B76617220623B69662821617C7C226F626A65637422213D3D6E2E747970652861297C7C612E6E6F6465547970657C7C6E';
wwv_flow_api.g_varchar2_table(24) := '2E697357696E646F772861292972657475726E21313B7472797B696628612E636F6E7374727563746F722626216B2E63616C6C28612C22636F6E7374727563746F7222292626216B2E63616C6C28612E636F6E7374727563746F722E70726F746F747970';
wwv_flow_api.g_varchar2_table(25) := '652C22697350726F746F747970654F6622292972657475726E21317D63617463682863297B72657475726E21317D696628216C2E6F776E466972737429666F72286220696E20612972657475726E206B2E63616C6C28612C62293B666F72286220696E20';
wwv_flow_api.g_varchar2_table(26) := '61293B72657475726E20766F696420303D3D3D627C7C6B2E63616C6C28612C62297D2C747970653A66756E6374696F6E2861297B72657475726E206E756C6C3D3D613F612B22223A226F626A656374223D3D747970656F6620617C7C2266756E6374696F';
wwv_flow_api.g_varchar2_table(27) := '6E223D3D747970656F6620613F695B6A2E63616C6C2861295D7C7C226F626A656374223A747970656F6620617D2C676C6F62616C4576616C3A66756E6374696F6E2862297B6226266E2E7472696D286229262628612E657865635363726970747C7C6675';
wwv_flow_api.g_varchar2_table(28) := '6E6374696F6E2862297B612E6576616C2E63616C6C28612C62297D292862297D2C63616D656C436173653A66756E6374696F6E2861297B72657475726E20612E7265706C61636528702C226D732D22292E7265706C61636528712C72297D2C6E6F64654E';
wwv_flow_api.g_varchar2_table(29) := '616D653A66756E6374696F6E28612C62297B72657475726E20612E6E6F64654E616D652626612E6E6F64654E616D652E746F4C6F7765724361736528293D3D3D622E746F4C6F7765724361736528297D2C656163683A66756E6374696F6E28612C62297B';
wwv_flow_api.g_varchar2_table(30) := '76617220632C643D303B69662873286129297B666F7228633D612E6C656E6774683B633E643B642B2B29696628622E63616C6C28615B645D2C642C615B645D293D3D3D213129627265616B7D656C736520666F72286420696E206129696628622E63616C';
wwv_flow_api.g_varchar2_table(31) := '6C28615B645D2C642C615B645D293D3D3D213129627265616B3B72657475726E20617D2C7472696D3A66756E6374696F6E2861297B72657475726E206E756C6C3D3D613F22223A28612B2222292E7265706C616365286F2C2222297D2C6D616B65417272';
wwv_flow_api.g_varchar2_table(32) := '61793A66756E6374696F6E28612C62297B76617220633D627C7C5B5D3B72657475726E206E756C6C213D6126262873284F626A656374286129293F6E2E6D6572676528632C22737472696E67223D3D747970656F6620613F5B615D3A61293A672E63616C';
wwv_flow_api.g_varchar2_table(33) := '6C28632C6129292C637D2C696E41727261793A66756E6374696F6E28612C622C63297B76617220643B69662862297B696628682972657475726E20682E63616C6C28622C612C63293B666F7228643D622E6C656E6774682C633D633F303E633F4D617468';
wwv_flow_api.g_varchar2_table(34) := '2E6D617828302C642B63293A633A303B643E633B632B2B296966286320696E20622626625B635D3D3D3D612972657475726E20637D72657475726E2D317D2C6D657267653A66756E6374696F6E28612C62297B76617220633D2B622E6C656E6774682C64';
wwv_flow_api.g_varchar2_table(35) := '3D302C653D612E6C656E6774683B7768696C6528633E6429615B652B2B5D3D625B642B2B5D3B69662863213D3D63297768696C6528766F69642030213D3D625B645D29615B652B2B5D3D625B642B2B5D3B72657475726E20612E6C656E6774683D652C61';
wwv_flow_api.g_varchar2_table(36) := '7D2C677265703A66756E6374696F6E28612C622C63297B666F722876617220642C653D5B5D2C663D302C673D612E6C656E6774682C683D21633B673E663B662B2B29643D216228615B665D2C66292C64213D3D682626652E7075736828615B665D293B72';
wwv_flow_api.g_varchar2_table(37) := '657475726E20657D2C6D61703A66756E6374696F6E28612C622C63297B76617220642C652C673D302C683D5B5D3B6966287328612929666F7228643D612E6C656E6774683B643E673B672B2B29653D6228615B675D2C672C63292C6E756C6C213D652626';
wwv_flow_api.g_varchar2_table(38) := '682E707573682865293B656C736520666F72286720696E206129653D6228615B675D2C672C63292C6E756C6C213D652626682E707573682865293B72657475726E20662E6170706C79285B5D2C68297D2C677569643A312C70726F78793A66756E637469';
wwv_flow_api.g_varchar2_table(39) := '6F6E28612C62297B76617220632C642C663B72657475726E22737472696E67223D3D747970656F662062262628663D615B625D2C623D612C613D66292C6E2E697346756E6374696F6E2861293F28633D652E63616C6C28617267756D656E74732C32292C';
wwv_flow_api.g_varchar2_table(40) := '643D66756E6374696F6E28297B72657475726E20612E6170706C7928627C7C746869732C632E636F6E63617428652E63616C6C28617267756D656E74732929297D2C642E677569643D612E677569643D612E677569647C7C6E2E677569642B2B2C64293A';
wwv_flow_api.g_varchar2_table(41) := '766F696420307D2C6E6F773A66756E6374696F6E28297B72657475726E2B6E657720446174657D2C737570706F72743A6C7D292C2266756E6374696F6E223D3D747970656F662053796D626F6C2626286E2E666E5B53796D626F6C2E6974657261746F72';
wwv_flow_api.g_varchar2_table(42) := '5D3D635B53796D626F6C2E6974657261746F725D292C6E2E656163682822426F6F6C65616E204E756D62657220537472696E672046756E6374696F6E204172726179204461746520526567457870204F626A656374204572726F722053796D626F6C222E';
wwv_flow_api.g_varchar2_table(43) := '73706C697428222022292C66756E6374696F6E28612C62297B695B225B6F626A65637420222B622B225D225D3D622E746F4C6F7765724361736528297D293B66756E6374696F6E20732861297B76617220623D2121612626226C656E67746822696E2061';
wwv_flow_api.g_varchar2_table(44) := '2626612E6C656E6774682C633D6E2E747970652861293B72657475726E2266756E6374696F6E223D3D3D637C7C6E2E697357696E646F772861293F21313A226172726179223D3D3D637C7C303D3D3D627C7C226E756D626572223D3D747970656F662062';
wwv_flow_api.g_varchar2_table(45) := '2626623E302626622D3120696E20617D76617220743D66756E6374696F6E2861297B76617220622C632C642C652C662C672C682C692C6A2C6B2C6C2C6D2C6E2C6F2C702C712C722C732C742C753D2273697A7A6C65222B312A6E657720446174652C763D';
wwv_flow_api.g_varchar2_table(46) := '612E646F63756D656E742C773D302C783D302C793D676128292C7A3D676128292C413D676128292C423D66756E6374696F6E28612C62297B72657475726E20613D3D3D622626286C3D2130292C307D2C433D313C3C33312C443D7B7D2E6861734F776E50';
wwv_flow_api.g_varchar2_table(47) := '726F70657274792C453D5B5D2C463D452E706F702C473D452E707573682C483D452E707573682C493D452E736C6963652C4A3D66756E6374696F6E28612C62297B666F722876617220633D302C643D612E6C656E6774683B643E633B632B2B2969662861';
wwv_flow_api.g_varchar2_table(48) := '5B635D3D3D3D622972657475726E20633B72657475726E2D317D2C4B3D22636865636B65647C73656C65637465647C6173796E637C6175746F666F6375737C6175746F706C61797C636F6E74726F6C737C64656665727C64697361626C65647C68696464';
wwv_flow_api.g_varchar2_table(49) := '656E7C69736D61707C6C6F6F707C6D756C7469706C657C6F70656E7C726561646F6E6C797C72657175697265647C73636F706564222C4C3D225B5C5C7832305C5C745C5C725C5C6E5C5C665D222C4D3D22283F3A5C5C5C5C2E7C5B5C5C772D5D7C5B5E5C';
wwv_flow_api.g_varchar2_table(50) := '5C7830302D5C5C7861305D292B222C4E3D225C5C5B222B4C2B222A28222B4D2B2229283F3A222B4C2B222A285B2A5E247C217E5D3F3D29222B4C2B222A283F3A2728283F3A5C5C5C5C2E7C5B5E5C5C5C5C275D292A29277C5C2228283F3A5C5C5C5C2E7C';
wwv_flow_api.g_varchar2_table(51) := '5B5E5C5C5C5C5C225D292A295C227C28222B4D2B2229297C29222B4C2B222A5C5C5D222C4F3D223A28222B4D2B2229283F3A5C5C2828282728283F3A5C5C5C5C2E7C5B5E5C5C5C5C275D292A29277C5C2228283F3A5C5C5C5C2E7C5B5E5C5C5C5C5C225D';
wwv_flow_api.g_varchar2_table(52) := '292A295C22297C28283F3A5C5C5C5C2E7C5B5E5C5C5C5C28295B5C5C5D5D7C222B4E2B22292A297C2E2A295C5C297C29222C503D6E657720526567457870284C2B222B222C226722292C513D6E65772052656745787028225E222B4C2B222B7C28283F3A';
wwv_flow_api.g_varchar2_table(53) := '5E7C5B5E5C5C5C5C5D29283F3A5C5C5C5C2E292A29222B4C2B222B24222C226722292C523D6E65772052656745787028225E222B4C2B222A2C222B4C2B222A22292C533D6E65772052656745787028225E222B4C2B222A285B3E2B7E5D7C222B4C2B2229';
wwv_flow_api.g_varchar2_table(54) := '222B4C2B222A22292C543D6E65772052656745787028223D222B4C2B222A285B5E5C5C5D275C225D2A3F29222B4C2B222A5C5C5D222C226722292C553D6E657720526567457870284F292C563D6E65772052656745787028225E222B4D2B222422292C57';
wwv_flow_api.g_varchar2_table(55) := '3D7B49443A6E65772052656745787028225E2328222B4D2B222922292C434C4153533A6E65772052656745787028225E5C5C2E28222B4D2B222922292C5441473A6E65772052656745787028225E28222B4D2B227C5B2A5D2922292C415454523A6E6577';
wwv_flow_api.g_varchar2_table(56) := '2052656745787028225E222B4E292C50534555444F3A6E65772052656745787028225E222B4F292C4348494C443A6E65772052656745787028225E3A286F6E6C797C66697273747C6C6173747C6E74687C6E74682D6C617374292D286368696C647C6F66';
wwv_flow_api.g_varchar2_table(57) := '2D7479706529283F3A5C5C28222B4C2B222A286576656E7C6F64647C28285B2B2D5D7C29285C5C642A296E7C29222B4C2B222A283F3A285B2B2D5D7C29222B4C2B222A285C5C642B297C2929222B4C2B222A5C5C297C29222C226922292C626F6F6C3A6E';
wwv_flow_api.g_varchar2_table(58) := '65772052656745787028225E283F3A222B4B2B222924222C226922292C6E65656473436F6E746578743A6E65772052656745787028225E222B4C2B222A5B3E2B7E5D7C3A286576656E7C6F64647C65717C67747C6C747C6E74687C66697273747C6C6173';
wwv_flow_api.g_varchar2_table(59) := '7429283F3A5C5C28222B4C2B222A28283F3A2D5C5C64293F5C5C642A29222B4C2B222A5C5C297C29283F3D5B5E2D5D7C2429222C226922297D2C583D2F5E283F3A696E7075747C73656C6563747C74657874617265617C627574746F6E29242F692C593D';
wwv_flow_api.g_varchar2_table(60) := '2F5E685C64242F692C5A3D2F5E5B5E7B5D2B5C7B5C732A5C5B6E6174697665205C772F2C243D2F5E283F3A23285B5C772D5D2B297C285C772B297C5C2E285B5C772D5D2B2929242F2C5F3D2F5B2B7E5D2F2C61613D2F277C5C5C2F672C62613D6E657720';
wwv_flow_api.g_varchar2_table(61) := '52656745787028225C5C5C5C285B5C5C64612D665D7B312C367D222B4C2B223F7C28222B4C2B22297C2E29222C22696722292C63613D66756E6374696F6E28612C622C63297B76617220643D223078222B622D36353533363B72657475726E2064213D3D';
wwv_flow_api.g_varchar2_table(62) := '647C7C633F623A303E643F537472696E672E66726F6D43686172436F646528642B3635353336293A537472696E672E66726F6D43686172436F646528643E3E31307C35353239362C3130323326647C3536333230297D2C64613D66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(63) := '7B6D28297D3B7472797B482E6170706C7928453D492E63616C6C28762E6368696C644E6F646573292C762E6368696C644E6F646573292C455B762E6368696C644E6F6465732E6C656E6774685D2E6E6F6465547970657D6361746368286561297B483D7B';
wwv_flow_api.g_varchar2_table(64) := '6170706C793A452E6C656E6774683F66756E6374696F6E28612C62297B472E6170706C7928612C492E63616C6C286229297D3A66756E6374696F6E28612C62297B76617220633D612E6C656E6774682C643D303B7768696C6528615B632B2B5D3D625B64';
wwv_flow_api.g_varchar2_table(65) := '2B2B5D293B612E6C656E6774683D632D317D7D7D66756E6374696F6E20666128612C622C642C65297B76617220662C682C6A2C6B2C6C2C6F2C722C732C773D622626622E6F776E6572446F63756D656E742C783D623F622E6E6F6465547970653A393B69';
wwv_flow_api.g_varchar2_table(66) := '6628643D647C7C5B5D2C22737472696E6722213D747970656F6620617C7C21617C7C31213D3D78262639213D3D7826263131213D3D782972657475726E20643B696628216526262828623F622E6F776E6572446F63756D656E747C7C623A7629213D3D6E';
wwv_flow_api.g_varchar2_table(67) := '26266D2862292C623D627C7C6E2C7029297B6966283131213D3D782626286F3D242E657865632861292929696628663D6F5B315D297B696628393D3D3D78297B69662821286A3D622E676574456C656D656E7442794964286629292972657475726E2064';
wwv_flow_api.g_varchar2_table(68) := '3B6966286A2E69643D3D3D662972657475726E20642E70757368286A292C647D656C736520696628772626286A3D772E676574456C656D656E74427949642866292926267428622C6A2926266A2E69643D3D3D662972657475726E20642E70757368286A';
wwv_flow_api.g_varchar2_table(69) := '292C647D656C73657B6966286F5B325D2972657475726E20482E6170706C7928642C622E676574456C656D656E747342795461674E616D65286129292C643B69662828663D6F5B335D292626632E676574456C656D656E74734279436C6173734E616D65';
wwv_flow_api.g_varchar2_table(70) := '2626622E676574456C656D656E74734279436C6173734E616D652972657475726E20482E6170706C7928642C622E676574456C656D656E74734279436C6173734E616D65286629292C647D696628632E717361262621415B612B2220225D26262821717C';
wwv_flow_api.g_varchar2_table(71) := '7C21712E7465737428612929297B69662831213D3D7829773D622C733D613B656C736520696628226F626A65637422213D3D622E6E6F64654E616D652E746F4C6F776572436173652829297B286B3D622E67657441747472696275746528226964222929';
wwv_flow_api.g_varchar2_table(72) := '3F6B3D6B2E7265706C6163652861612C225C5C242622293A622E73657441747472696275746528226964222C6B3D75292C723D672861292C683D722E6C656E6774682C6C3D562E74657374286B293F2223222B6B3A225B69643D27222B6B2B22275D223B';
wwv_flow_api.g_varchar2_table(73) := '7768696C6528682D2D29725B685D3D6C2B2220222B716128725B685D293B733D722E6A6F696E28222C22292C773D5F2E7465737428612926266F6128622E706172656E744E6F6465297C7C627D69662873297472797B72657475726E20482E6170706C79';
wwv_flow_api.g_varchar2_table(74) := '28642C772E717565727953656C6563746F72416C6C287329292C647D63617463682879297B7D66696E616C6C797B6B3D3D3D752626622E72656D6F76654174747269627574652822696422297D7D7D72657475726E206928612E7265706C61636528512C';
wwv_flow_api.g_varchar2_table(75) := '22243122292C622C642C65297D66756E6374696F6E20676128297B76617220613D5B5D3B66756E6374696F6E206228632C65297B72657475726E20612E7075736828632B222022293E642E63616368654C656E677468262664656C65746520625B612E73';
wwv_flow_api.g_varchar2_table(76) := '6869667428295D2C625B632B2220225D3D657D72657475726E20627D66756E6374696F6E2068612861297B72657475726E20615B755D3D21302C617D66756E6374696F6E2069612861297B76617220623D6E2E637265617465456C656D656E7428226469';
wwv_flow_api.g_varchar2_table(77) := '7622293B7472797B72657475726E2121612862297D63617463682863297B72657475726E21317D66696E616C6C797B622E706172656E744E6F64652626622E706172656E744E6F64652E72656D6F76654368696C642862292C623D6E756C6C7D7D66756E';
wwv_flow_api.g_varchar2_table(78) := '6374696F6E206A6128612C62297B76617220633D612E73706C697428227C22292C653D632E6C656E6774683B7768696C6528652D2D29642E6174747248616E646C655B635B655D5D3D627D66756E6374696F6E206B6128612C62297B76617220633D6226';
wwv_flow_api.g_varchar2_table(79) := '26612C643D632626313D3D3D612E6E6F6465547970652626313D3D3D622E6E6F6465547970652626287E622E736F75726365496E6465787C7C43292D287E612E736F75726365496E6465787C7C43293B696628642972657475726E20643B696628632977';
wwv_flow_api.g_varchar2_table(80) := '68696C6528633D632E6E6578745369626C696E6729696628633D3D3D622972657475726E2D313B72657475726E20613F313A2D317D66756E6374696F6E206C612861297B72657475726E2066756E6374696F6E2862297B76617220633D622E6E6F64654E';
wwv_flow_api.g_varchar2_table(81) := '616D652E746F4C6F7765724361736528293B72657475726E22696E707574223D3D3D632626622E747970653D3D3D617D7D66756E6374696F6E206D612861297B72657475726E2066756E6374696F6E2862297B76617220633D622E6E6F64654E616D652E';
wwv_flow_api.g_varchar2_table(82) := '746F4C6F7765724361736528293B72657475726E2822696E707574223D3D3D637C7C22627574746F6E223D3D3D63292626622E747970653D3D3D617D7D66756E6374696F6E206E612861297B72657475726E2068612866756E6374696F6E2862297B7265';
wwv_flow_api.g_varchar2_table(83) := '7475726E20623D2B622C68612866756E6374696F6E28632C64297B76617220652C663D61285B5D2C632E6C656E6774682C62292C673D662E6C656E6774683B7768696C6528672D2D29635B653D665B675D5D262628635B655D3D2128645B655D3D635B65';
wwv_flow_api.g_varchar2_table(84) := '5D29297D297D297D66756E6374696F6E206F612861297B72657475726E2061262622756E646566696E656422213D747970656F6620612E676574456C656D656E747342795461674E616D652626617D633D66612E737570706F72743D7B7D2C663D66612E';
wwv_flow_api.g_varchar2_table(85) := '6973584D4C3D66756E6374696F6E2861297B76617220623D61262628612E6F776E6572446F63756D656E747C7C61292E646F63756D656E74456C656D656E743B72657475726E20623F2248544D4C22213D3D622E6E6F64654E616D653A21317D2C6D3D66';
wwv_flow_api.g_varchar2_table(86) := '612E736574446F63756D656E743D66756E6374696F6E2861297B76617220622C652C673D613F612E6F776E6572446F63756D656E747C7C613A763B72657475726E2067213D3D6E2626393D3D3D672E6E6F6465547970652626672E646F63756D656E7445';
wwv_flow_api.g_varchar2_table(87) := '6C656D656E743F286E3D672C6F3D6E2E646F63756D656E74456C656D656E742C703D2166286E292C28653D6E2E64656661756C7456696577292626652E746F70213D3D65262628652E6164644576656E744C697374656E65723F652E6164644576656E74';
wwv_flow_api.g_varchar2_table(88) := '4C697374656E65722822756E6C6F6164222C64612C2131293A652E6174746163684576656E742626652E6174746163684576656E7428226F6E756E6C6F6164222C646129292C632E617474726962757465733D69612866756E6374696F6E2861297B7265';
wwv_flow_api.g_varchar2_table(89) := '7475726E20612E636C6173734E616D653D2269222C21612E6765744174747269627574652822636C6173734E616D6522297D292C632E676574456C656D656E747342795461674E616D653D69612866756E6374696F6E2861297B72657475726E20612E61';
wwv_flow_api.g_varchar2_table(90) := '7070656E644368696C64286E2E637265617465436F6D6D656E7428222229292C21612E676574456C656D656E747342795461674E616D6528222A22292E6C656E6774687D292C632E676574456C656D656E74734279436C6173734E616D653D5A2E746573';
wwv_flow_api.g_varchar2_table(91) := '74286E2E676574456C656D656E74734279436C6173734E616D65292C632E676574427949643D69612866756E6374696F6E2861297B72657475726E206F2E617070656E644368696C642861292E69643D752C216E2E676574456C656D656E747342794E61';
wwv_flow_api.g_varchar2_table(92) := '6D657C7C216E2E676574456C656D656E747342794E616D652875292E6C656E6774687D292C632E676574427949643F28642E66696E642E49443D66756E6374696F6E28612C62297B69662822756E646566696E656422213D747970656F6620622E676574';
wwv_flow_api.g_varchar2_table(93) := '456C656D656E7442794964262670297B76617220633D622E676574456C656D656E74427949642861293B72657475726E20633F5B635D3A5B5D7D7D2C642E66696C7465722E49443D66756E6374696F6E2861297B76617220623D612E7265706C61636528';
wwv_flow_api.g_varchar2_table(94) := '62612C6361293B72657475726E2066756E6374696F6E2861297B72657475726E20612E6765744174747269627574652822696422293D3D3D627D7D293A2864656C65746520642E66696E642E49442C642E66696C7465722E49443D66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(95) := '61297B76617220623D612E7265706C6163652862612C6361293B72657475726E2066756E6374696F6E2861297B76617220633D22756E646566696E656422213D747970656F6620612E6765744174747269627574654E6F64652626612E67657441747472';
wwv_flow_api.g_varchar2_table(96) := '69627574654E6F64652822696422293B72657475726E20632626632E76616C75653D3D3D627D7D292C642E66696E642E5441473D632E676574456C656D656E747342795461674E616D653F66756E6374696F6E28612C62297B72657475726E22756E6465';
wwv_flow_api.g_varchar2_table(97) := '66696E656422213D747970656F6620622E676574456C656D656E747342795461674E616D653F622E676574456C656D656E747342795461674E616D652861293A632E7173613F622E717565727953656C6563746F72416C6C2861293A766F696420307D3A';
wwv_flow_api.g_varchar2_table(98) := '66756E6374696F6E28612C62297B76617220632C643D5B5D2C653D302C663D622E676574456C656D656E747342795461674E616D652861293B696628222A223D3D3D61297B7768696C6528633D665B652B2B5D29313D3D3D632E6E6F6465547970652626';
wwv_flow_api.g_varchar2_table(99) := '642E707573682863293B72657475726E20647D72657475726E20667D2C642E66696E642E434C4153533D632E676574456C656D656E74734279436C6173734E616D65262666756E6374696F6E28612C62297B72657475726E22756E646566696E65642221';
wwv_flow_api.g_varchar2_table(100) := '3D747970656F6620622E676574456C656D656E74734279436C6173734E616D652626703F622E676574456C656D656E74734279436C6173734E616D652861293A766F696420307D2C723D5B5D2C713D5B5D2C28632E7173613D5A2E74657374286E2E7175';
wwv_flow_api.g_varchar2_table(101) := '65727953656C6563746F72416C6C292926262869612866756E6374696F6E2861297B6F2E617070656E644368696C642861292E696E6E657248544D4C3D223C612069643D27222B752B22273E3C2F613E3C73656C6563742069643D27222B752B222D5C72';
wwv_flow_api.g_varchar2_table(102) := '5C5C27206D73616C6C6F77636170747572653D27273E3C6F7074696F6E2073656C65637465643D27273E3C2F6F7074696F6E3E3C2F73656C6563743E222C612E717565727953656C6563746F72416C6C28225B6D73616C6C6F77636170747572655E3D27';
wwv_flow_api.g_varchar2_table(103) := '275D22292E6C656E6774682626712E7075736828225B2A5E245D3D222B4C2B222A283F3A27277C5C225C222922292C612E717565727953656C6563746F72416C6C28225B73656C65637465645D22292E6C656E6774687C7C712E7075736828225C5C5B22';
wwv_flow_api.g_varchar2_table(104) := '2B4C2B222A283F3A76616C75657C222B4B2B222922292C612E717565727953656C6563746F72416C6C28225B69647E3D222B752B222D5D22292E6C656E6774687C7C712E7075736828227E3D22292C612E717565727953656C6563746F72416C6C28223A';
wwv_flow_api.g_varchar2_table(105) := '636865636B656422292E6C656E6774687C7C712E7075736828223A636865636B656422292C612E717565727953656C6563746F72416C6C28226123222B752B222B2A22292E6C656E6774687C7C712E7075736828222E232E2B5B2B7E5D22297D292C6961';
wwv_flow_api.g_varchar2_table(106) := '2866756E6374696F6E2861297B76617220623D6E2E637265617465456C656D656E742822696E70757422293B622E736574417474726962757465282274797065222C2268696464656E22292C612E617070656E644368696C642862292E73657441747472';
wwv_flow_api.g_varchar2_table(107) := '696275746528226E616D65222C224422292C612E717565727953656C6563746F72416C6C28225B6E616D653D645D22292E6C656E6774682626712E7075736828226E616D65222B4C2B222A5B2A5E247C217E5D3F3D22292C612E717565727953656C6563';
wwv_flow_api.g_varchar2_table(108) := '746F72416C6C28223A656E61626C656422292E6C656E6774687C7C712E7075736828223A656E61626C6564222C223A64697361626C656422292C612E717565727953656C6563746F72416C6C28222A2C3A7822292C712E7075736828222C2E2A3A22297D';
wwv_flow_api.g_varchar2_table(109) := '29292C28632E6D61746368657353656C6563746F723D5A2E7465737428733D6F2E6D6174636865737C7C6F2E7765626B69744D61746368657353656C6563746F727C7C6F2E6D6F7A4D61746368657353656C6563746F727C7C6F2E6F4D61746368657353';
wwv_flow_api.g_varchar2_table(110) := '656C6563746F727C7C6F2E6D734D61746368657353656C6563746F722929262669612866756E6374696F6E2861297B632E646973636F6E6E65637465644D617463683D732E63616C6C28612C2264697622292C732E63616C6C28612C225B73213D27275D';
wwv_flow_api.g_varchar2_table(111) := '3A7822292C722E707573682822213D222C4F297D292C713D712E6C656E67746826266E65772052656745787028712E6A6F696E28227C2229292C723D722E6C656E67746826266E65772052656745787028722E6A6F696E28227C2229292C623D5A2E7465';
wwv_flow_api.g_varchar2_table(112) := '7374286F2E636F6D70617265446F63756D656E74506F736974696F6E292C743D627C7C5A2E74657374286F2E636F6E7461696E73293F66756E6374696F6E28612C62297B76617220633D393D3D3D612E6E6F6465547970653F612E646F63756D656E7445';
wwv_flow_api.g_varchar2_table(113) := '6C656D656E743A612C643D622626622E706172656E744E6F64653B72657475726E20613D3D3D647C7C212821647C7C31213D3D642E6E6F6465547970657C7C2128632E636F6E7461696E733F632E636F6E7461696E732864293A612E636F6D7061726544';
wwv_flow_api.g_varchar2_table(114) := '6F63756D656E74506F736974696F6E2626313626612E636F6D70617265446F63756D656E74506F736974696F6E28642929297D3A66756E6374696F6E28612C62297B69662862297768696C6528623D622E706172656E744E6F646529696628623D3D3D61';
wwv_flow_api.g_varchar2_table(115) := '2972657475726E21303B72657475726E21317D2C423D623F66756E6374696F6E28612C62297B696628613D3D3D622972657475726E206C3D21302C303B76617220643D21612E636F6D70617265446F63756D656E74506F736974696F6E2D21622E636F6D';
wwv_flow_api.g_varchar2_table(116) := '70617265446F63756D656E74506F736974696F6E3B72657475726E20643F643A28643D28612E6F776E6572446F63756D656E747C7C61293D3D3D28622E6F776E6572446F63756D656E747C7C62293F612E636F6D70617265446F63756D656E74506F7369';
wwv_flow_api.g_varchar2_table(117) := '74696F6E2862293A312C3126647C7C21632E736F727444657461636865642626622E636F6D70617265446F63756D656E74506F736974696F6E2861293D3D3D643F613D3D3D6E7C7C612E6F776E6572446F63756D656E743D3D3D7626267428762C61293F';
wwv_flow_api.g_varchar2_table(118) := '2D313A623D3D3D6E7C7C622E6F776E6572446F63756D656E743D3D3D7626267428762C62293F313A6B3F4A286B2C61292D4A286B2C62293A303A3426643F2D313A31297D3A66756E6374696F6E28612C62297B696628613D3D3D622972657475726E206C';
wwv_flow_api.g_varchar2_table(119) := '3D21302C303B76617220632C643D302C653D612E706172656E744E6F64652C663D622E706172656E744E6F64652C673D5B615D2C683D5B625D3B69662821657C7C21662972657475726E20613D3D3D6E3F2D313A623D3D3D6E3F313A653F2D313A663F31';
wwv_flow_api.g_varchar2_table(120) := '3A6B3F4A286B2C61292D4A286B2C62293A303B696628653D3D3D662972657475726E206B6128612C62293B633D613B7768696C6528633D632E706172656E744E6F646529672E756E73686966742863293B633D623B7768696C6528633D632E706172656E';
wwv_flow_api.g_varchar2_table(121) := '744E6F646529682E756E73686966742863293B7768696C6528675B645D3D3D3D685B645D29642B2B3B72657475726E20643F6B6128675B645D2C685B645D293A675B645D3D3D3D763F2D313A685B645D3D3D3D763F313A307D2C6E293A6E7D2C66612E6D';
wwv_flow_api.g_varchar2_table(122) := '6174636865733D66756E6374696F6E28612C62297B72657475726E20666128612C6E756C6C2C6E756C6C2C62297D2C66612E6D61746368657353656C6563746F723D66756E6374696F6E28612C62297B69662828612E6F776E6572446F63756D656E747C';
wwv_flow_api.g_varchar2_table(123) := '7C6129213D3D6E26266D2861292C623D622E7265706C61636528542C223D272431275D22292C632E6D61746368657353656C6563746F72262670262621415B622B2220225D26262821727C7C21722E746573742862292926262821717C7C21712E746573';
wwv_flow_api.g_varchar2_table(124) := '7428622929297472797B76617220643D732E63616C6C28612C62293B696628647C7C632E646973636F6E6E65637465644D617463687C7C612E646F63756D656E7426263131213D3D612E646F63756D656E742E6E6F6465547970652972657475726E2064';
wwv_flow_api.g_varchar2_table(125) := '7D63617463682865297B7D72657475726E20666128622C6E2C6E756C6C2C5B615D292E6C656E6774683E307D2C66612E636F6E7461696E733D66756E6374696F6E28612C62297B72657475726E28612E6F776E6572446F63756D656E747C7C6129213D3D';
wwv_flow_api.g_varchar2_table(126) := '6E26266D2861292C7428612C62297D2C66612E617474723D66756E6374696F6E28612C62297B28612E6F776E6572446F63756D656E747C7C6129213D3D6E26266D2861293B76617220653D642E6174747248616E646C655B622E746F4C6F776572436173';
wwv_flow_api.g_varchar2_table(127) := '6528295D2C663D652626442E63616C6C28642E6174747248616E646C652C622E746F4C6F776572436173652829293F6528612C622C2170293A766F696420303B72657475726E20766F69642030213D3D663F663A632E617474726962757465737C7C2170';
wwv_flow_api.g_varchar2_table(128) := '3F612E6765744174747269627574652862293A28663D612E6765744174747269627574654E6F6465286229292626662E7370656369666965643F662E76616C75653A6E756C6C7D2C66612E6572726F723D66756E6374696F6E2861297B7468726F77206E';
wwv_flow_api.g_varchar2_table(129) := '6577204572726F72282253796E746178206572726F722C20756E7265636F676E697A65642065787072657373696F6E3A20222B61297D2C66612E756E69717565536F72743D66756E6374696F6E2861297B76617220622C643D5B5D2C653D302C663D303B';
wwv_flow_api.g_varchar2_table(130) := '6966286C3D21632E6465746563744475706C6963617465732C6B3D21632E736F7274537461626C652626612E736C6963652830292C612E736F72742842292C6C297B7768696C6528623D615B662B2B5D29623D3D3D615B665D262628653D642E70757368';
wwv_flow_api.g_varchar2_table(131) := '286629293B7768696C6528652D2D29612E73706C69636528645B655D2C31297D72657475726E206B3D6E756C6C2C617D2C653D66612E676574546578743D66756E6374696F6E2861297B76617220622C633D22222C643D302C663D612E6E6F6465547970';
wwv_flow_api.g_varchar2_table(132) := '653B69662866297B696628313D3D3D667C7C393D3D3D667C7C31313D3D3D66297B69662822737472696E67223D3D747970656F6620612E74657874436F6E74656E742972657475726E20612E74657874436F6E74656E743B666F7228613D612E66697273';
wwv_flow_api.g_varchar2_table(133) := '744368696C643B613B613D612E6E6578745369626C696E6729632B3D652861297D656C736520696628333D3D3D667C7C343D3D3D662972657475726E20612E6E6F646556616C75657D656C7365207768696C6528623D615B642B2B5D29632B3D65286229';
wwv_flow_api.g_varchar2_table(134) := '3B72657475726E20637D2C643D66612E73656C6563746F72733D7B63616368654C656E6774683A35302C63726561746550736575646F3A68612C6D617463683A572C6174747248616E646C653A7B7D2C66696E643A7B7D2C72656C61746976653A7B223E';
wwv_flow_api.g_varchar2_table(135) := '223A7B6469723A22706172656E744E6F6465222C66697273743A21307D2C2220223A7B6469723A22706172656E744E6F6465227D2C222B223A7B6469723A2270726576696F75735369626C696E67222C66697273743A21307D2C227E223A7B6469723A22';
wwv_flow_api.g_varchar2_table(136) := '70726576696F75735369626C696E67227D7D2C70726546696C7465723A7B415454523A66756E6374696F6E2861297B72657475726E20615B315D3D615B315D2E7265706C6163652862612C6361292C615B335D3D28615B335D7C7C615B345D7C7C615B35';
wwv_flow_api.g_varchar2_table(137) := '5D7C7C2222292E7265706C6163652862612C6361292C227E3D223D3D3D615B325D262628615B335D3D2220222B615B335D2B222022292C612E736C69636528302C34297D2C4348494C443A66756E6374696F6E2861297B72657475726E20615B315D3D61';
wwv_flow_api.g_varchar2_table(138) := '5B315D2E746F4C6F7765724361736528292C226E7468223D3D3D615B315D2E736C69636528302C33293F28615B335D7C7C66612E6572726F7228615B305D292C615B345D3D2B28615B345D3F615B355D2B28615B365D7C7C31293A322A28226576656E22';
wwv_flow_api.g_varchar2_table(139) := '3D3D3D615B335D7C7C226F6464223D3D3D615B335D29292C615B355D3D2B28615B375D2B615B385D7C7C226F6464223D3D3D615B335D29293A615B335D262666612E6572726F7228615B305D292C617D2C50534555444F3A66756E6374696F6E2861297B';
wwv_flow_api.g_varchar2_table(140) := '76617220622C633D21615B365D2626615B325D3B72657475726E20572E4348494C442E7465737428615B305D293F6E756C6C3A28615B335D3F615B325D3D615B345D7C7C615B355D7C7C22223A632626552E74657374286329262628623D6728632C2130';
wwv_flow_api.g_varchar2_table(141) := '2929262628623D632E696E6465784F66282229222C632E6C656E6774682D62292D632E6C656E67746829262628615B305D3D615B305D2E736C69636528302C62292C615B325D3D632E736C69636528302C6229292C612E736C69636528302C3329297D7D';
wwv_flow_api.g_varchar2_table(142) := '2C66696C7465723A7B5441473A66756E6374696F6E2861297B76617220623D612E7265706C6163652862612C6361292E746F4C6F7765724361736528293B72657475726E222A223D3D3D613F66756E6374696F6E28297B72657475726E21307D3A66756E';
wwv_flow_api.g_varchar2_table(143) := '6374696F6E2861297B72657475726E20612E6E6F64654E616D652626612E6E6F64654E616D652E746F4C6F7765724361736528293D3D3D627D7D2C434C4153533A66756E6374696F6E2861297B76617220623D795B612B2220225D3B72657475726E2062';
wwv_flow_api.g_varchar2_table(144) := '7C7C28623D6E6577205265674578702822285E7C222B4C2B2229222B612B2228222B4C2B227C242922292926267928612C66756E6374696F6E2861297B72657475726E20622E746573742822737472696E67223D3D747970656F6620612E636C6173734E';
wwv_flow_api.g_varchar2_table(145) := '616D652626612E636C6173734E616D657C7C22756E646566696E656422213D747970656F6620612E6765744174747269627574652626612E6765744174747269627574652822636C61737322297C7C2222297D297D2C415454523A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(146) := '612C622C63297B72657475726E2066756E6374696F6E2864297B76617220653D66612E6174747228642C61293B72657475726E206E756C6C3D3D653F22213D223D3D3D623A623F28652B3D22222C223D223D3D3D623F653D3D3D633A22213D223D3D3D62';
wwv_flow_api.g_varchar2_table(147) := '3F65213D3D633A225E3D223D3D3D623F632626303D3D3D652E696E6465784F662863293A222A3D223D3D3D623F632626652E696E6465784F662863293E2D313A22243D223D3D3D623F632626652E736C696365282D632E6C656E677468293D3D3D633A22';
wwv_flow_api.g_varchar2_table(148) := '7E3D223D3D3D623F282220222B652E7265706C61636528502C222022292B222022292E696E6465784F662863293E2D313A227C3D223D3D3D623F653D3D3D637C7C652E736C69636528302C632E6C656E6774682B31293D3D3D632B222D223A2131293A21';
wwv_flow_api.g_varchar2_table(149) := '307D7D2C4348494C443A66756E6374696F6E28612C622C632C642C65297B76617220663D226E746822213D3D612E736C69636528302C33292C673D226C61737422213D3D612E736C696365282D34292C683D226F662D74797065223D3D3D623B72657475';
wwv_flow_api.g_varchar2_table(150) := '726E20313D3D3D642626303D3D3D653F66756E6374696F6E2861297B72657475726E2121612E706172656E744E6F64657D3A66756E6374696F6E28622C632C69297B766172206A2C6B2C6C2C6D2C6E2C6F2C703D66213D3D673F226E6578745369626C69';
wwv_flow_api.g_varchar2_table(151) := '6E67223A2270726576696F75735369626C696E67222C713D622E706172656E744E6F64652C723D682626622E6E6F64654E616D652E746F4C6F7765724361736528292C733D2169262621682C743D21313B69662871297B69662866297B7768696C652870';
wwv_flow_api.g_varchar2_table(152) := '297B6D3D623B7768696C65286D3D6D5B705D29696628683F6D2E6E6F64654E616D652E746F4C6F7765724361736528293D3D3D723A313D3D3D6D2E6E6F6465547970652972657475726E21313B6F3D703D226F6E6C79223D3D3D612626216F2626226E65';
wwv_flow_api.g_varchar2_table(153) := '78745369626C696E67227D72657475726E21307D6966286F3D5B673F712E66697273744368696C643A712E6C6173744368696C645D2C67262673297B6D3D712C6C3D6D5B755D7C7C286D5B755D3D7B7D292C6B3D6C5B6D2E756E6971756549445D7C7C28';
wwv_flow_api.g_varchar2_table(154) := '6C5B6D2E756E6971756549445D3D7B7D292C6A3D6B5B615D7C7C5B5D2C6E3D6A5B305D3D3D3D7726266A5B315D2C743D6E26266A5B325D2C6D3D6E2626712E6368696C644E6F6465735B6E5D3B7768696C65286D3D2B2B6E26266D26266D5B705D7C7C28';
wwv_flow_api.g_varchar2_table(155) := '743D6E3D30297C7C6F2E706F70282929696628313D3D3D6D2E6E6F64655479706526262B2B7426266D3D3D3D62297B6B5B615D3D5B772C6E2C745D3B627265616B7D7D656C736520696628732626286D3D622C6C3D6D5B755D7C7C286D5B755D3D7B7D29';
wwv_flow_api.g_varchar2_table(156) := '2C6B3D6C5B6D2E756E6971756549445D7C7C286C5B6D2E756E6971756549445D3D7B7D292C6A3D6B5B615D7C7C5B5D2C6E3D6A5B305D3D3D3D7726266A5B315D2C743D6E292C743D3D3D2131297768696C65286D3D2B2B6E26266D26266D5B705D7C7C28';
wwv_flow_api.g_varchar2_table(157) := '743D6E3D30297C7C6F2E706F7028292969662828683F6D2E6E6F64654E616D652E746F4C6F7765724361736528293D3D3D723A313D3D3D6D2E6E6F6465547970652926262B2B74262628732626286C3D6D5B755D7C7C286D5B755D3D7B7D292C6B3D6C5B';
wwv_flow_api.g_varchar2_table(158) := '6D2E756E6971756549445D7C7C286C5B6D2E756E6971756549445D3D7B7D292C6B5B615D3D5B772C745D292C6D3D3D3D622929627265616B3B72657475726E20742D3D652C743D3D3D647C7C7425643D3D3D302626742F643E3D307D7D7D2C5053455544';
wwv_flow_api.g_varchar2_table(159) := '4F3A66756E6374696F6E28612C62297B76617220632C653D642E70736575646F735B615D7C7C642E73657446696C746572735B612E746F4C6F7765724361736528295D7C7C66612E6572726F722822756E737570706F727465642070736575646F3A2022';
wwv_flow_api.g_varchar2_table(160) := '2B61293B72657475726E20655B755D3F652862293A652E6C656E6774683E313F28633D5B612C612C22222C625D2C642E73657446696C746572732E6861734F776E50726F706572747928612E746F4C6F776572436173652829293F68612866756E637469';
wwv_flow_api.g_varchar2_table(161) := '6F6E28612C63297B76617220642C663D6528612C62292C673D662E6C656E6774683B7768696C6528672D2D29643D4A28612C665B675D292C615B645D3D2128635B645D3D665B675D297D293A66756E6374696F6E2861297B72657475726E206528612C30';
wwv_flow_api.g_varchar2_table(162) := '2C63297D293A657D7D2C70736575646F733A7B6E6F743A68612866756E6374696F6E2861297B76617220623D5B5D2C633D5B5D2C643D6828612E7265706C61636528512C2224312229293B72657475726E20645B755D3F68612866756E6374696F6E2861';
wwv_flow_api.g_varchar2_table(163) := '2C622C632C65297B76617220662C673D6428612C6E756C6C2C652C5B5D292C683D612E6C656E6774683B7768696C6528682D2D2928663D675B685D29262628615B685D3D2128625B685D3D6629297D293A66756E6374696F6E28612C652C66297B726574';
wwv_flow_api.g_varchar2_table(164) := '75726E20625B305D3D612C6428622C6E756C6C2C662C63292C625B305D3D6E756C6C2C21632E706F7028297D7D292C6861733A68612866756E6374696F6E2861297B72657475726E2066756E6374696F6E2862297B72657475726E20666128612C62292E';
wwv_flow_api.g_varchar2_table(165) := '6C656E6774683E307D7D292C636F6E7461696E733A68612866756E6374696F6E2861297B72657475726E20613D612E7265706C6163652862612C6361292C66756E6374696F6E2862297B72657475726E28622E74657874436F6E74656E747C7C622E696E';
wwv_flow_api.g_varchar2_table(166) := '6E6572546578747C7C65286229292E696E6465784F662861293E2D317D7D292C6C616E673A68612866756E6374696F6E2861297B72657475726E20562E7465737428617C7C2222297C7C66612E6572726F722822756E737570706F72746564206C616E67';
wwv_flow_api.g_varchar2_table(167) := '3A20222B61292C613D612E7265706C6163652862612C6361292E746F4C6F7765724361736528292C66756E6374696F6E2862297B76617220633B646F20696628633D703F622E6C616E673A622E6765744174747269627574652822786D6C3A6C616E6722';
wwv_flow_api.g_varchar2_table(168) := '297C7C622E67657441747472696275746528226C616E6722292972657475726E20633D632E746F4C6F7765724361736528292C633D3D3D617C7C303D3D3D632E696E6465784F6628612B222D22293B7768696C652828623D622E706172656E744E6F6465';
wwv_flow_api.g_varchar2_table(169) := '292626313D3D3D622E6E6F646554797065293B72657475726E21317D7D292C7461726765743A66756E6374696F6E2862297B76617220633D612E6C6F636174696F6E2626612E6C6F636174696F6E2E686173683B72657475726E20632626632E736C6963';
wwv_flow_api.g_varchar2_table(170) := '652831293D3D3D622E69647D2C726F6F743A66756E6374696F6E2861297B72657475726E20613D3D3D6F7D2C666F6375733A66756E6374696F6E2861297B72657475726E20613D3D3D6E2E616374697665456C656D656E74262628216E2E686173466F63';
wwv_flow_api.g_varchar2_table(171) := '75737C7C6E2E686173466F6375732829292626212128612E747970657C7C612E687265667C7C7E612E746162496E646578297D2C656E61626C65643A66756E6374696F6E2861297B72657475726E20612E64697361626C65643D3D3D21317D2C64697361';
wwv_flow_api.g_varchar2_table(172) := '626C65643A66756E6374696F6E2861297B72657475726E20612E64697361626C65643D3D3D21307D2C636865636B65643A66756E6374696F6E2861297B76617220623D612E6E6F64654E616D652E746F4C6F7765724361736528293B72657475726E2269';
wwv_flow_api.g_varchar2_table(173) := '6E707574223D3D3D6226262121612E636865636B65647C7C226F7074696F6E223D3D3D6226262121612E73656C65637465647D2C73656C65637465643A66756E6374696F6E2861297B72657475726E20612E706172656E744E6F64652626612E70617265';
wwv_flow_api.g_varchar2_table(174) := '6E744E6F64652E73656C6563746564496E6465782C612E73656C65637465643D3D3D21307D2C656D7074793A66756E6374696F6E2861297B666F7228613D612E66697273744368696C643B613B613D612E6E6578745369626C696E6729696628612E6E6F';
wwv_flow_api.g_varchar2_table(175) := '6465547970653C362972657475726E21313B72657475726E21307D2C706172656E743A66756E6374696F6E2861297B72657475726E21642E70736575646F732E656D7074792861297D2C6865616465723A66756E6374696F6E2861297B72657475726E20';
wwv_flow_api.g_varchar2_table(176) := '592E7465737428612E6E6F64654E616D65297D2C696E7075743A66756E6374696F6E2861297B72657475726E20582E7465737428612E6E6F64654E616D65297D2C627574746F6E3A66756E6374696F6E2861297B76617220623D612E6E6F64654E616D65';
wwv_flow_api.g_varchar2_table(177) := '2E746F4C6F7765724361736528293B72657475726E22696E707574223D3D3D62262622627574746F6E223D3D3D612E747970657C7C22627574746F6E223D3D3D627D2C746578743A66756E6374696F6E2861297B76617220623B72657475726E22696E70';
wwv_flow_api.g_varchar2_table(178) := '7574223D3D3D612E6E6F64654E616D652E746F4C6F77657243617365282926262274657874223D3D3D612E747970652626286E756C6C3D3D28623D612E6765744174747269627574652822747970652229297C7C2274657874223D3D3D622E746F4C6F77';
wwv_flow_api.g_varchar2_table(179) := '6572436173652829297D2C66697273743A6E612866756E6374696F6E28297B72657475726E5B305D7D292C6C6173743A6E612866756E6374696F6E28612C62297B72657475726E5B622D315D7D292C65713A6E612866756E6374696F6E28612C622C6329';
wwv_flow_api.g_varchar2_table(180) := '7B72657475726E5B303E633F632B623A635D7D292C6576656E3A6E612866756E6374696F6E28612C62297B666F722876617220633D303B623E633B632B3D3229612E707573682863293B72657475726E20617D292C6F64643A6E612866756E6374696F6E';
wwv_flow_api.g_varchar2_table(181) := '28612C62297B666F722876617220633D313B623E633B632B3D3229612E707573682863293B72657475726E20617D292C6C743A6E612866756E6374696F6E28612C622C63297B666F722876617220643D303E633F632B623A633B2D2D643E3D303B29612E';
wwv_flow_api.g_varchar2_table(182) := '707573682864293B72657475726E20617D292C67743A6E612866756E6374696F6E28612C622C63297B666F722876617220643D303E633F632B623A633B2B2B643C623B29612E707573682864293B72657475726E20617D297D7D2C642E70736575646F73';
wwv_flow_api.g_varchar2_table(183) := '2E6E74683D642E70736575646F732E65713B666F72286220696E7B726164696F3A21302C636865636B626F783A21302C66696C653A21302C70617373776F72643A21302C696D6167653A21307D29642E70736575646F735B625D3D6C612862293B666F72';
wwv_flow_api.g_varchar2_table(184) := '286220696E7B7375626D69743A21302C72657365743A21307D29642E70736575646F735B625D3D6D612862293B66756E6374696F6E20706128297B7D70612E70726F746F747970653D642E66696C746572733D642E70736575646F732C642E7365744669';
wwv_flow_api.g_varchar2_table(185) := '6C746572733D6E65772070612C673D66612E746F6B656E697A653D66756E6374696F6E28612C62297B76617220632C652C662C672C682C692C6A2C6B3D7A5B612B2220225D3B6966286B2972657475726E20623F303A6B2E736C6963652830293B683D61';
wwv_flow_api.g_varchar2_table(186) := '2C693D5B5D2C6A3D642E70726546696C7465723B7768696C652868297B6326262128653D522E65786563286829297C7C2865262628683D682E736C69636528655B305D2E6C656E677468297C7C68292C692E7075736828663D5B5D29292C633D21312C28';
wwv_flow_api.g_varchar2_table(187) := '653D532E6578656328682929262628633D652E736869667428292C662E70757368287B76616C75653A632C747970653A655B305D2E7265706C61636528512C222022297D292C683D682E736C69636528632E6C656E67746829293B666F72286720696E20';
wwv_flow_api.g_varchar2_table(188) := '642E66696C746572292128653D575B675D2E65786563286829297C7C6A5B675D26262128653D6A5B675D286529297C7C28633D652E736869667428292C662E70757368287B76616C75653A632C747970653A672C6D6174636865733A657D292C683D682E';
wwv_flow_api.g_varchar2_table(189) := '736C69636528632E6C656E67746829293B696628216329627265616B7D72657475726E20623F682E6C656E6774683A683F66612E6572726F722861293A7A28612C69292E736C6963652830297D3B66756E6374696F6E2071612861297B666F7228766172';
wwv_flow_api.g_varchar2_table(190) := '20623D302C633D612E6C656E6774682C643D22223B633E623B622B2B29642B3D615B625D2E76616C75653B72657475726E20647D66756E6374696F6E20726128612C622C63297B76617220643D622E6469722C653D63262622706172656E744E6F646522';
wwv_flow_api.g_varchar2_table(191) := '3D3D3D642C663D782B2B3B72657475726E20622E66697273743F66756E6374696F6E28622C632C66297B7768696C6528623D625B645D29696628313D3D3D622E6E6F6465547970657C7C652972657475726E206128622C632C66297D3A66756E6374696F';
wwv_flow_api.g_varchar2_table(192) := '6E28622C632C67297B76617220682C692C6A2C6B3D5B772C665D3B69662867297B7768696C6528623D625B645D2969662828313D3D3D622E6E6F6465547970657C7C652926266128622C632C67292972657475726E21307D656C7365207768696C652862';
wwv_flow_api.g_varchar2_table(193) := '3D625B645D29696628313D3D3D622E6E6F6465547970657C7C65297B6966286A3D625B755D7C7C28625B755D3D7B7D292C693D6A5B622E756E6971756549445D7C7C286A5B622E756E6971756549445D3D7B7D292C28683D695B645D292626685B305D3D';
wwv_flow_api.g_varchar2_table(194) := '3D3D772626685B315D3D3D3D662972657475726E206B5B325D3D685B325D3B696628695B645D3D6B2C6B5B325D3D6128622C632C67292972657475726E21307D7D7D66756E6374696F6E2073612861297B72657475726E20612E6C656E6774683E313F66';
wwv_flow_api.g_varchar2_table(195) := '756E6374696F6E28622C632C64297B76617220653D612E6C656E6774683B7768696C6528652D2D2969662821615B655D28622C632C64292972657475726E21313B72657475726E21307D3A615B305D7D66756E6374696F6E20746128612C622C63297B66';
wwv_flow_api.g_varchar2_table(196) := '6F722876617220643D302C653D622E6C656E6774683B653E643B642B2B29666128612C625B645D2C63293B72657475726E20637D66756E6374696F6E20756128612C622C632C642C65297B666F722876617220662C673D5B5D2C683D302C693D612E6C65';
wwv_flow_api.g_varchar2_table(197) := '6E6774682C6A3D6E756C6C213D623B693E683B682B2B2928663D615B685D29262628632626216328662C642C65297C7C28672E707573682866292C6A2626622E7075736828682929293B72657475726E20677D66756E6374696F6E20766128612C622C63';
wwv_flow_api.g_varchar2_table(198) := '2C642C652C66297B72657475726E2064262621645B755D262628643D7661286429292C65262621655B755D262628653D766128652C6629292C68612866756E6374696F6E28662C672C682C69297B766172206A2C6B2C6C2C6D3D5B5D2C6E3D5B5D2C6F3D';
wwv_flow_api.g_varchar2_table(199) := '672E6C656E6774682C703D667C7C746128627C7C222A222C682E6E6F6465547970653F5B685D3A682C5B5D292C713D21617C7C21662626623F703A756128702C6D2C612C682C69292C723D633F657C7C28663F613A6F7C7C64293F5B5D3A673A713B6966';
wwv_flow_api.g_varchar2_table(200) := '286326266328712C722C682C69292C64297B6A3D756128722C6E292C64286A2C5B5D2C682C69292C6B3D6A2E6C656E6774683B7768696C65286B2D2D29286C3D6A5B6B5D29262628725B6E5B6B5D5D3D2128715B6E5B6B5D5D3D6C29297D69662866297B';
wwv_flow_api.g_varchar2_table(201) := '696628657C7C61297B69662865297B6A3D5B5D2C6B3D722E6C656E6774683B7768696C65286B2D2D29286C3D725B6B5D2926266A2E7075736828715B6B5D3D6C293B65286E756C6C2C723D5B5D2C6A2C69297D6B3D722E6C656E6774683B7768696C6528';
wwv_flow_api.g_varchar2_table(202) := '6B2D2D29286C3D725B6B5D292626286A3D653F4A28662C6C293A6D5B6B5D293E2D31262628665B6A5D3D2128675B6A5D3D6C29297D7D656C736520723D756128723D3D3D673F722E73706C696365286F2C722E6C656E677468293A72292C653F65286E75';
wwv_flow_api.g_varchar2_table(203) := '6C6C2C672C722C69293A482E6170706C7928672C72297D297D66756E6374696F6E2077612861297B666F722876617220622C632C652C663D612E6C656E6774682C673D642E72656C61746976655B615B305D2E747970655D2C683D677C7C642E72656C61';
wwv_flow_api.g_varchar2_table(204) := '746976655B2220225D2C693D673F313A302C6B3D72612866756E6374696F6E2861297B72657475726E20613D3D3D627D2C682C2130292C6C3D72612866756E6374696F6E2861297B72657475726E204A28622C61293E2D317D2C682C2130292C6D3D5B66';
wwv_flow_api.g_varchar2_table(205) := '756E6374696F6E28612C632C64297B76617220653D2167262628647C7C63213D3D6A297C7C2828623D63292E6E6F6465547970653F6B28612C632C64293A6C28612C632C6429293B72657475726E20623D6E756C6C2C657D5D3B663E693B692B2B296966';
wwv_flow_api.g_varchar2_table(206) := '28633D642E72656C61746976655B615B695D2E747970655D296D3D5B7261287361286D292C63295D3B656C73657B696628633D642E66696C7465725B615B695D2E747970655D2E6170706C79286E756C6C2C615B695D2E6D617463686573292C635B755D';
wwv_flow_api.g_varchar2_table(207) := '297B666F7228653D2B2B693B663E653B652B2B29696628642E72656C61746976655B615B655D2E747970655D29627265616B3B72657475726E20766128693E3126267361286D292C693E312626716128612E736C69636528302C692D31292E636F6E6361';
wwv_flow_api.g_varchar2_table(208) := '74287B76616C75653A2220223D3D3D615B692D325D2E747970653F222A223A22227D29292E7265706C61636528512C22243122292C632C653E692626776128612E736C69636528692C6529292C663E652626776128613D612E736C696365286529292C66';
wwv_flow_api.g_varchar2_table(209) := '3E6526267161286129297D6D2E707573682863297D72657475726E207361286D297D66756E6374696F6E20786128612C62297B76617220633D622E6C656E6774683E302C653D612E6C656E6774683E302C663D66756E6374696F6E28662C672C682C692C';
wwv_flow_api.g_varchar2_table(210) := '6B297B766172206C2C6F2C712C723D302C733D2230222C743D6626265B5D2C753D5B5D2C763D6A2C783D667C7C652626642E66696E642E54414728222A222C6B292C793D772B3D6E756C6C3D3D763F313A4D6174682E72616E646F6D28297C7C2E312C7A';
wwv_flow_api.g_varchar2_table(211) := '3D782E6C656E6774683B666F72286B2626286A3D673D3D3D6E7C7C677C7C6B293B73213D3D7A26266E756C6C213D286C3D785B735D293B732B2B297B6966286526266C297B6F3D302C677C7C6C2E6F776E6572446F63756D656E743D3D3D6E7C7C286D28';
wwv_flow_api.g_varchar2_table(212) := '6C292C683D2170293B7768696C6528713D615B6F2B2B5D2969662871286C2C677C7C6E2C6829297B692E70757368286C293B627265616B7D6B262628773D79297D63262628286C3D217126266C292626722D2D2C662626742E70757368286C29297D6966';
wwv_flow_api.g_varchar2_table(213) := '28722B3D732C63262673213D3D72297B6F3D303B7768696C6528713D625B6F2B2B5D297128742C752C672C68293B69662866297B696628723E30297768696C6528732D2D29745B735D7C7C755B735D7C7C28755B735D3D462E63616C6C286929293B753D';
wwv_flow_api.g_varchar2_table(214) := '75612875297D482E6170706C7928692C75292C6B262621662626752E6C656E6774683E302626722B622E6C656E6774683E31262666612E756E69717565536F72742869297D72657475726E206B262628773D792C6A3D76292C747D3B72657475726E2063';
wwv_flow_api.g_varchar2_table(215) := '3F68612866293A667D72657475726E20683D66612E636F6D70696C653D66756E6374696F6E28612C62297B76617220632C643D5B5D2C653D5B5D2C663D415B612B2220225D3B6966282166297B627C7C28623D67286129292C633D622E6C656E6774683B';
wwv_flow_api.g_varchar2_table(216) := '7768696C6528632D2D29663D776128625B635D292C665B755D3F642E707573682866293A652E707573682866293B663D4128612C786128652C6429292C662E73656C6563746F723D617D72657475726E20667D2C693D66612E73656C6563743D66756E63';
wwv_flow_api.g_varchar2_table(217) := '74696F6E28612C622C652C66297B76617220692C6A2C6B2C6C2C6D2C6E3D2266756E6374696F6E223D3D747970656F6620612626612C6F3D216626266728613D6E2E73656C6563746F727C7C61293B696628653D657C7C5B5D2C313D3D3D6F2E6C656E67';
wwv_flow_api.g_varchar2_table(218) := '7468297B6966286A3D6F5B305D3D6F5B305D2E736C6963652830292C6A2E6C656E6774683E322626224944223D3D3D286B3D6A5B305D292E747970652626632E676574427949642626393D3D3D622E6E6F6465547970652626702626642E72656C617469';
wwv_flow_api.g_varchar2_table(219) := '76655B6A5B315D2E747970655D297B696628623D28642E66696E642E4944286B2E6D6174636865735B305D2E7265706C6163652862612C6361292C62297C7C5B5D295B305D2C21622972657475726E20653B6E262628623D622E706172656E744E6F6465';
wwv_flow_api.g_varchar2_table(220) := '292C613D612E736C696365286A2E736869667428292E76616C75652E6C656E677468297D693D572E6E65656473436F6E746578742E746573742861293F303A6A2E6C656E6774683B7768696C6528692D2D297B6966286B3D6A5B695D2C642E72656C6174';
wwv_flow_api.g_varchar2_table(221) := '6976655B6C3D6B2E747970655D29627265616B3B696628286D3D642E66696E645B6C5D29262628663D6D286B2E6D6174636865735B305D2E7265706C6163652862612C6361292C5F2E74657374286A5B305D2E747970652926266F6128622E706172656E';
wwv_flow_api.g_varchar2_table(222) := '744E6F6465297C7C622929297B6966286A2E73706C69636528692C31292C613D662E6C656E67746826267161286A292C21612972657475726E20482E6170706C7928652C66292C653B627265616B7D7D7D72657475726E286E7C7C6828612C6F29292866';
wwv_flow_api.g_varchar2_table(223) := '2C622C21702C652C21627C7C5F2E7465737428612926266F6128622E706172656E744E6F6465297C7C62292C657D2C632E736F7274537461626C653D752E73706C6974282222292E736F72742842292E6A6F696E282222293D3D3D752C632E6465746563';
wwv_flow_api.g_varchar2_table(224) := '744475706C6963617465733D21216C2C6D28292C632E736F727444657461636865643D69612866756E6374696F6E2861297B72657475726E203126612E636F6D70617265446F63756D656E74506F736974696F6E286E2E637265617465456C656D656E74';
wwv_flow_api.g_varchar2_table(225) := '28226469762229297D292C69612866756E6374696F6E2861297B72657475726E20612E696E6E657248544D4C3D223C6120687265663D2723273E3C2F613E222C2223223D3D3D612E66697273744368696C642E6765744174747269627574652822687265';
wwv_flow_api.g_varchar2_table(226) := '6622297D297C7C6A612822747970657C687265667C6865696768747C7769647468222C66756E6374696F6E28612C622C63297B72657475726E20633F766F696420303A612E67657441747472696275746528622C2274797065223D3D3D622E746F4C6F77';
wwv_flow_api.g_varchar2_table(227) := '65724361736528293F313A32297D292C632E61747472696275746573262669612866756E6374696F6E2861297B72657475726E20612E696E6E657248544D4C3D223C696E7075742F3E222C612E66697273744368696C642E736574417474726962757465';
wwv_flow_api.g_varchar2_table(228) := '282276616C7565222C2222292C22223D3D3D612E66697273744368696C642E676574417474726962757465282276616C756522297D297C7C6A61282276616C7565222C66756E6374696F6E28612C622C63297B72657475726E20637C7C22696E70757422';
wwv_flow_api.g_varchar2_table(229) := '213D3D612E6E6F64654E616D652E746F4C6F7765724361736528293F766F696420303A612E64656661756C7456616C75657D292C69612866756E6374696F6E2861297B72657475726E206E756C6C3D3D612E676574417474726962757465282264697361';
wwv_flow_api.g_varchar2_table(230) := '626C656422297D297C7C6A61284B2C66756E6374696F6E28612C622C63297B76617220643B72657475726E20633F766F696420303A615B625D3D3D3D21303F622E746F4C6F7765724361736528293A28643D612E6765744174747269627574654E6F6465';
wwv_flow_api.g_varchar2_table(231) := '286229292626642E7370656369666965643F642E76616C75653A6E756C6C7D292C66617D2861293B6E2E66696E643D742C6E2E657870723D742E73656C6563746F72732C6E2E657870725B223A225D3D6E2E657870722E70736575646F732C6E2E756E69';
wwv_flow_api.g_varchar2_table(232) := '717565536F72743D6E2E756E697175653D742E756E69717565536F72742C6E2E746578743D742E676574546578742C6E2E6973584D4C446F633D742E6973584D4C2C6E2E636F6E7461696E733D742E636F6E7461696E733B76617220753D66756E637469';
wwv_flow_api.g_varchar2_table(233) := '6F6E28612C622C63297B76617220643D5B5D2C653D766F69642030213D3D633B7768696C652828613D615B625D29262639213D3D612E6E6F64655479706529696628313D3D3D612E6E6F646554797065297B6966286526266E2861292E69732863292962';
wwv_flow_api.g_varchar2_table(234) := '7265616B3B642E707573682861297D72657475726E20647D2C763D66756E6374696F6E28612C62297B666F722876617220633D5B5D3B613B613D612E6E6578745369626C696E6729313D3D3D612E6E6F646554797065262661213D3D622626632E707573';
wwv_flow_api.g_varchar2_table(235) := '682861293B72657475726E20637D2C773D6E2E657870722E6D617463682E6E65656473436F6E746578742C783D2F5E3C285B5C772D5D2B295C732A5C2F3F3E283F3A3C5C2F5C313E7C29242F2C793D2F5E2E5B5E3A235C5B5C2E2C5D2A242F3B66756E63';
wwv_flow_api.g_varchar2_table(236) := '74696F6E207A28612C622C63297B6966286E2E697346756E6374696F6E2862292972657475726E206E2E6772657028612C66756E6374696F6E28612C64297B72657475726E2121622E63616C6C28612C642C6129213D3D637D293B696628622E6E6F6465';
wwv_flow_api.g_varchar2_table(237) := '547970652972657475726E206E2E6772657028612C66756E6374696F6E2861297B72657475726E20613D3D3D62213D3D637D293B69662822737472696E67223D3D747970656F662062297B696628792E746573742862292972657475726E206E2E66696C';
wwv_flow_api.g_varchar2_table(238) := '74657228622C612C63293B623D6E2E66696C74657228622C61297D72657475726E206E2E6772657028612C66756E6374696F6E2861297B72657475726E206E2E696E417272617928612C62293E2D31213D3D637D297D6E2E66696C7465723D66756E6374';
wwv_flow_api.g_varchar2_table(239) := '696F6E28612C622C63297B76617220643D625B305D3B72657475726E2063262628613D223A6E6F7428222B612B222922292C313D3D3D622E6C656E6774682626313D3D3D642E6E6F6465547970653F6E2E66696E642E6D61746368657353656C6563746F';
wwv_flow_api.g_varchar2_table(240) := '7228642C61293F5B645D3A5B5D3A6E2E66696E642E6D61746368657328612C6E2E6772657028622C66756E6374696F6E2861297B72657475726E20313D3D3D612E6E6F6465547970657D29297D2C6E2E666E2E657874656E64287B66696E643A66756E63';
wwv_flow_api.g_varchar2_table(241) := '74696F6E2861297B76617220622C633D5B5D2C643D746869732C653D642E6C656E6774683B69662822737472696E6722213D747970656F6620612972657475726E20746869732E70757368537461636B286E2861292E66696C7465722866756E6374696F';
wwv_flow_api.g_varchar2_table(242) := '6E28297B666F7228623D303B653E623B622B2B296966286E2E636F6E7461696E7328645B625D2C74686973292972657475726E21307D29293B666F7228623D303B653E623B622B2B296E2E66696E6428612C645B625D2C63293B72657475726E20633D74';
wwv_flow_api.g_varchar2_table(243) := '6869732E70757368537461636B28653E313F6E2E756E697175652863293A63292C632E73656C6563746F723D746869732E73656C6563746F723F746869732E73656C6563746F722B2220222B613A612C637D2C66696C7465723A66756E6374696F6E2861';
wwv_flow_api.g_varchar2_table(244) := '297B72657475726E20746869732E70757368537461636B287A28746869732C617C7C5B5D2C213129297D2C6E6F743A66756E6374696F6E2861297B72657475726E20746869732E70757368537461636B287A28746869732C617C7C5B5D2C213029297D2C';
wwv_flow_api.g_varchar2_table(245) := '69733A66756E6374696F6E2861297B72657475726E21217A28746869732C22737472696E67223D3D747970656F6620612626772E746573742861293F6E2861293A617C7C5B5D2C2131292E6C656E6774687D7D293B76617220412C423D2F5E283F3A5C73';
wwv_flow_api.g_varchar2_table(246) := '2A283C5B5C775C575D2B3E295B5E3E5D2A7C23285B5C772D5D2A2929242F2C433D6E2E666E2E696E69743D66756E6374696F6E28612C622C63297B76617220652C663B69662821612972657475726E20746869733B696628633D637C7C412C2273747269';
wwv_flow_api.g_varchar2_table(247) := '6E67223D3D747970656F662061297B696628653D223C223D3D3D612E6368617241742830292626223E223D3D3D612E63686172417428612E6C656E6774682D31292626612E6C656E6774683E3D333F5B6E756C6C2C612C6E756C6C5D3A422E6578656328';
wwv_flow_api.g_varchar2_table(248) := '61292C21657C7C21655B315D2626622972657475726E21627C7C622E6A71756572793F28627C7C63292E66696E642861293A746869732E636F6E7374727563746F722862292E66696E642861293B696628655B315D297B696628623D6220696E7374616E';
wwv_flow_api.g_varchar2_table(249) := '63656F66206E3F625B305D3A622C6E2E6D6572676528746869732C6E2E706172736548544D4C28655B315D2C622626622E6E6F6465547970653F622E6F776E6572446F63756D656E747C7C623A642C213029292C782E7465737428655B315D2926266E2E';
wwv_flow_api.g_varchar2_table(250) := '6973506C61696E4F626A65637428622929666F72286520696E2062296E2E697346756E6374696F6E28746869735B655D293F746869735B655D28625B655D293A746869732E6174747228652C625B655D293B72657475726E20746869737D696628663D64';
wwv_flow_api.g_varchar2_table(251) := '2E676574456C656D656E744279496428655B325D292C662626662E706172656E744E6F6465297B696628662E6964213D3D655B325D2972657475726E20412E66696E642861293B746869732E6C656E6774683D312C746869735B305D3D667D7265747572';
wwv_flow_api.g_varchar2_table(252) := '6E20746869732E636F6E746578743D642C746869732E73656C6563746F723D612C746869737D72657475726E20612E6E6F6465547970653F28746869732E636F6E746578743D746869735B305D3D612C746869732E6C656E6774683D312C74686973293A';
wwv_flow_api.g_varchar2_table(253) := '6E2E697346756E6374696F6E2861293F22756E646566696E656422213D747970656F6620632E72656164793F632E72656164792861293A61286E293A28766F69642030213D3D612E73656C6563746F72262628746869732E73656C6563746F723D612E73';
wwv_flow_api.g_varchar2_table(254) := '656C6563746F722C746869732E636F6E746578743D612E636F6E74657874292C6E2E6D616B65417272617928612C7468697329297D3B432E70726F746F747970653D6E2E666E2C413D6E2864293B76617220443D2F5E283F3A706172656E74737C707265';
wwv_flow_api.g_varchar2_table(255) := '76283F3A556E74696C7C416C6C29292F2C453D7B6368696C6472656E3A21302C636F6E74656E74733A21302C6E6578743A21302C707265763A21307D3B6E2E666E2E657874656E64287B6861733A66756E6374696F6E2861297B76617220622C633D6E28';
wwv_flow_api.g_varchar2_table(256) := '612C74686973292C643D632E6C656E6774683B72657475726E20746869732E66696C7465722866756E6374696F6E28297B666F7228623D303B643E623B622B2B296966286E2E636F6E7461696E7328746869732C635B625D292972657475726E21307D29';
wwv_flow_api.g_varchar2_table(257) := '7D2C636C6F736573743A66756E6374696F6E28612C62297B666F722876617220632C643D302C653D746869732E6C656E6774682C663D5B5D2C673D772E746573742861297C7C22737472696E6722213D747970656F6620613F6E28612C627C7C74686973';
wwv_flow_api.g_varchar2_table(258) := '2E636F6E74657874293A303B653E643B642B2B29666F7228633D746869735B645D3B63262663213D3D623B633D632E706172656E744E6F646529696628632E6E6F6465547970653C3131262628673F672E696E6465782863293E2D313A313D3D3D632E6E';
wwv_flow_api.g_varchar2_table(259) := '6F64655479706526266E2E66696E642E6D61746368657353656C6563746F7228632C612929297B662E707573682863293B627265616B7D72657475726E20746869732E70757368537461636B28662E6C656E6774683E313F6E2E756E69717565536F7274';
wwv_flow_api.g_varchar2_table(260) := '2866293A66297D2C696E6465783A66756E6374696F6E2861297B72657475726E20613F22737472696E67223D3D747970656F6620613F6E2E696E417272617928746869735B305D2C6E286129293A6E2E696E417272617928612E6A71756572793F615B30';
wwv_flow_api.g_varchar2_table(261) := '5D3A612C74686973293A746869735B305D2626746869735B305D2E706172656E744E6F64653F746869732E666972737428292E70726576416C6C28292E6C656E6774683A2D317D2C6164643A66756E6374696F6E28612C62297B72657475726E20746869';
wwv_flow_api.g_varchar2_table(262) := '732E70757368537461636B286E2E756E69717565536F7274286E2E6D6572676528746869732E67657428292C6E28612C62292929297D2C6164644261636B3A66756E6374696F6E2861297B72657475726E20746869732E616464286E756C6C3D3D613F74';
wwv_flow_api.g_varchar2_table(263) := '6869732E707265764F626A6563743A746869732E707265764F626A6563742E66696C746572286129297D7D293B66756E6374696F6E204628612C62297B646F20613D615B625D3B7768696C652861262631213D3D612E6E6F646554797065293B72657475';
wwv_flow_api.g_varchar2_table(264) := '726E20617D6E2E65616368287B706172656E743A66756E6374696F6E2861297B76617220623D612E706172656E744E6F64653B72657475726E206226263131213D3D622E6E6F6465547970653F623A6E756C6C7D2C706172656E74733A66756E6374696F';
wwv_flow_api.g_varchar2_table(265) := '6E2861297B72657475726E207528612C22706172656E744E6F646522297D2C706172656E7473556E74696C3A66756E6374696F6E28612C622C63297B72657475726E207528612C22706172656E744E6F6465222C63297D2C6E6578743A66756E6374696F';
wwv_flow_api.g_varchar2_table(266) := '6E2861297B72657475726E204628612C226E6578745369626C696E6722297D2C707265763A66756E6374696F6E2861297B72657475726E204628612C2270726576696F75735369626C696E6722297D2C6E657874416C6C3A66756E6374696F6E2861297B';
wwv_flow_api.g_varchar2_table(267) := '72657475726E207528612C226E6578745369626C696E6722297D2C70726576416C6C3A66756E6374696F6E2861297B72657475726E207528612C2270726576696F75735369626C696E6722297D2C6E657874556E74696C3A66756E6374696F6E28612C62';
wwv_flow_api.g_varchar2_table(268) := '2C63297B72657475726E207528612C226E6578745369626C696E67222C63297D2C70726576556E74696C3A66756E6374696F6E28612C622C63297B72657475726E207528612C2270726576696F75735369626C696E67222C63297D2C7369626C696E6773';
wwv_flow_api.g_varchar2_table(269) := '3A66756E6374696F6E2861297B72657475726E20762828612E706172656E744E6F64657C7C7B7D292E66697273744368696C642C61297D2C6368696C6472656E3A66756E6374696F6E2861297B72657475726E207628612E66697273744368696C64297D';
wwv_flow_api.g_varchar2_table(270) := '2C636F6E74656E74733A66756E6374696F6E2861297B72657475726E206E2E6E6F64654E616D6528612C22696672616D6522293F612E636F6E74656E74446F63756D656E747C7C612E636F6E74656E7457696E646F772E646F63756D656E743A6E2E6D65';
wwv_flow_api.g_varchar2_table(271) := '726765285B5D2C612E6368696C644E6F646573297D7D2C66756E6374696F6E28612C62297B6E2E666E5B615D3D66756E6374696F6E28632C64297B76617220653D6E2E6D617028746869732C622C63293B72657475726E22556E74696C22213D3D612E73';
wwv_flow_api.g_varchar2_table(272) := '6C696365282D3529262628643D63292C64262622737472696E67223D3D747970656F662064262628653D6E2E66696C74657228642C6529292C746869732E6C656E6774683E31262628455B615D7C7C28653D6E2E756E69717565536F7274286529292C44';
wwv_flow_api.g_varchar2_table(273) := '2E74657374286129262628653D652E72657665727365282929292C746869732E70757368537461636B2865297D7D293B76617220473D2F5C532B2F673B66756E6374696F6E20482861297B76617220623D7B7D3B72657475726E206E2E6561636828612E';
wwv_flow_api.g_varchar2_table(274) := '6D617463682847297C7C5B5D2C66756E6374696F6E28612C63297B625B635D3D21307D292C627D6E2E43616C6C6261636B733D66756E6374696F6E2861297B613D22737472696E67223D3D747970656F6620613F482861293A6E2E657874656E64287B7D';
wwv_flow_api.g_varchar2_table(275) := '2C61293B76617220622C632C642C652C663D5B5D2C673D5B5D2C683D2D312C693D66756E6374696F6E28297B666F7228653D612E6F6E63652C643D623D21303B672E6C656E6774683B683D2D31297B633D672E736869667428293B7768696C65282B2B68';
wwv_flow_api.g_varchar2_table(276) := '3C662E6C656E67746829665B685D2E6170706C7928635B305D2C635B315D293D3D3D21312626612E73746F704F6E46616C7365262628683D662E6C656E6774682C633D2131297D612E6D656D6F72797C7C28633D2131292C623D21312C65262628663D63';
wwv_flow_api.g_varchar2_table(277) := '3F5B5D3A2222297D2C6A3D7B6164643A66756E6374696F6E28297B72657475726E20662626286326262162262628683D662E6C656E6774682D312C672E70757368286329292C66756E6374696F6E20642862297B6E2E6561636828622C66756E6374696F';
wwv_flow_api.g_varchar2_table(278) := '6E28622C63297B6E2E697346756E6374696F6E2863293F612E756E6971756526266A2E6861732863297C7C662E707573682863293A632626632E6C656E677468262622737472696E6722213D3D6E2E747970652863292626642863297D297D2861726775';
wwv_flow_api.g_varchar2_table(279) := '6D656E7473292C63262621622626692829292C746869737D2C72656D6F76653A66756E6374696F6E28297B72657475726E206E2E6561636828617267756D656E74732C66756E6374696F6E28612C62297B76617220633B7768696C652828633D6E2E696E';
wwv_flow_api.g_varchar2_table(280) := '417272617928622C662C6329293E2D3129662E73706C69636528632C31292C683E3D632626682D2D7D292C746869737D2C6861733A66756E6374696F6E2861297B72657475726E20613F6E2E696E417272617928612C66293E2D313A662E6C656E677468';
wwv_flow_api.g_varchar2_table(281) := '3E307D2C656D7074793A66756E6374696F6E28297B72657475726E2066262628663D5B5D292C746869737D2C64697361626C653A66756E6374696F6E28297B72657475726E20653D673D5B5D2C663D633D22222C746869737D2C64697361626C65643A66';
wwv_flow_api.g_varchar2_table(282) := '756E6374696F6E28297B72657475726E21667D2C6C6F636B3A66756E6374696F6E28297B72657475726E20653D21302C637C7C6A2E64697361626C6528292C746869737D2C6C6F636B65643A66756E6374696F6E28297B72657475726E2121657D2C6669';
wwv_flow_api.g_varchar2_table(283) := '7265576974683A66756E6374696F6E28612C63297B72657475726E20657C7C28633D637C7C5B5D2C633D5B612C632E736C6963653F632E736C69636528293A635D2C672E707573682863292C627C7C692829292C746869737D2C666972653A66756E6374';
wwv_flow_api.g_varchar2_table(284) := '696F6E28297B72657475726E206A2E666972655769746828746869732C617267756D656E7473292C746869737D2C66697265643A66756E6374696F6E28297B72657475726E2121647D7D3B72657475726E206A7D2C6E2E657874656E64287B4465666572';
wwv_flow_api.g_varchar2_table(285) := '7265643A66756E6374696F6E2861297B76617220623D5B5B227265736F6C7665222C22646F6E65222C6E2E43616C6C6261636B7328226F6E6365206D656D6F727922292C227265736F6C766564225D2C5B2272656A656374222C226661696C222C6E2E43';
wwv_flow_api.g_varchar2_table(286) := '616C6C6261636B7328226F6E6365206D656D6F727922292C2272656A6563746564225D2C5B226E6F74696679222C2270726F6772657373222C6E2E43616C6C6261636B7328226D656D6F727922295D5D2C633D2270656E64696E67222C643D7B73746174';
wwv_flow_api.g_varchar2_table(287) := '653A66756E6374696F6E28297B72657475726E20637D2C616C776179733A66756E6374696F6E28297B72657475726E20652E646F6E6528617267756D656E7473292E6661696C28617267756D656E7473292C746869737D2C7468656E3A66756E6374696F';
wwv_flow_api.g_varchar2_table(288) := '6E28297B76617220613D617267756D656E74733B72657475726E206E2E44656665727265642866756E6374696F6E2863297B6E2E6561636828622C66756E6374696F6E28622C66297B76617220673D6E2E697346756E6374696F6E28615B625D29262661';
wwv_flow_api.g_varchar2_table(289) := '5B625D3B655B665B315D5D2866756E6374696F6E28297B76617220613D672626672E6170706C7928746869732C617267756D656E7473293B6126266E2E697346756E6374696F6E28612E70726F6D697365293F612E70726F6D69736528292E70726F6772';
wwv_flow_api.g_varchar2_table(290) := '65737328632E6E6F74696679292E646F6E6528632E7265736F6C7665292E6661696C28632E72656A656374293A635B665B305D2B2257697468225D28746869733D3D3D643F632E70726F6D69736528293A746869732C673F5B615D3A617267756D656E74';
wwv_flow_api.g_varchar2_table(291) := '73297D297D292C613D6E756C6C7D292E70726F6D69736528297D2C70726F6D6973653A66756E6374696F6E2861297B72657475726E206E756C6C213D613F6E2E657874656E6428612C64293A647D7D2C653D7B7D3B72657475726E20642E706970653D64';
wwv_flow_api.g_varchar2_table(292) := '2E7468656E2C6E2E6561636828622C66756E6374696F6E28612C66297B76617220673D665B325D2C683D665B335D3B645B665B315D5D3D672E6164642C682626672E6164642866756E6374696F6E28297B633D687D2C625B315E615D5B325D2E64697361';
wwv_flow_api.g_varchar2_table(293) := '626C652C625B325D5B325D2E6C6F636B292C655B665B305D5D3D66756E6374696F6E28297B72657475726E20655B665B305D2B2257697468225D28746869733D3D3D653F643A746869732C617267756D656E7473292C746869737D2C655B665B305D2B22';
wwv_flow_api.g_varchar2_table(294) := '57697468225D3D672E66697265576974687D292C642E70726F6D6973652865292C612626612E63616C6C28652C65292C657D2C7768656E3A66756E6374696F6E2861297B76617220623D302C633D652E63616C6C28617267756D656E7473292C643D632E';
wwv_flow_api.g_varchar2_table(295) := '6C656E6774682C663D31213D3D647C7C6126266E2E697346756E6374696F6E28612E70726F6D697365293F643A302C673D313D3D3D663F613A6E2E446566657272656428292C683D66756E6374696F6E28612C622C63297B72657475726E2066756E6374';
wwv_flow_api.g_varchar2_table(296) := '696F6E2864297B625B615D3D746869732C635B615D3D617267756D656E74732E6C656E6774683E313F652E63616C6C28617267756D656E7473293A642C633D3D3D693F672E6E6F746966795769746828622C63293A2D2D667C7C672E7265736F6C766557';
wwv_flow_api.g_varchar2_table(297) := '69746828622C63297D7D2C692C6A2C6B3B696628643E3129666F7228693D6E65772041727261792864292C6A3D6E65772041727261792864292C6B3D6E65772041727261792864293B643E623B622B2B29635B625D26266E2E697346756E6374696F6E28';
wwv_flow_api.g_varchar2_table(298) := '635B625D2E70726F6D697365293F635B625D2E70726F6D69736528292E70726F6772657373286828622C6A2C6929292E646F6E65286828622C6B2C6329292E6661696C28672E72656A656374293A2D2D663B72657475726E20667C7C672E7265736F6C76';
wwv_flow_api.g_varchar2_table(299) := '6557697468286B2C63292C672E70726F6D69736528297D7D293B76617220493B6E2E666E2E72656164793D66756E6374696F6E2861297B72657475726E206E2E72656164792E70726F6D69736528292E646F6E652861292C746869737D2C6E2E65787465';
wwv_flow_api.g_varchar2_table(300) := '6E64287B697352656164793A21312C7265616479576169743A312C686F6C6452656164793A66756E6374696F6E2861297B613F6E2E7265616479576169742B2B3A6E2E7265616479282130297D2C72656164793A66756E6374696F6E2861297B28613D3D';
wwv_flow_api.g_varchar2_table(301) := '3D21303F2D2D6E2E7265616479576169743A6E2E69735265616479297C7C286E2E697352656164793D21302C61213D3D213026262D2D6E2E7265616479576169743E307C7C28492E7265736F6C76655769746828642C5B6E5D292C6E2E666E2E74726967';
wwv_flow_api.g_varchar2_table(302) := '67657248616E646C65722626286E2864292E7472696767657248616E646C65722822726561647922292C6E2864292E6F66662822726561647922292929297D7D293B66756E6374696F6E204A28297B642E6164644576656E744C697374656E65723F2864';
wwv_flow_api.g_varchar2_table(303) := '2E72656D6F76654576656E744C697374656E65722822444F4D436F6E74656E744C6F61646564222C4B292C612E72656D6F76654576656E744C697374656E657228226C6F6164222C4B29293A28642E6465746163684576656E7428226F6E726561647973';
wwv_flow_api.g_varchar2_table(304) := '746174656368616E6765222C4B292C612E6465746163684576656E7428226F6E6C6F6164222C4B29297D66756E6374696F6E204B28297B28642E6164644576656E744C697374656E65727C7C226C6F6164223D3D3D612E6576656E742E747970657C7C22';
wwv_flow_api.g_varchar2_table(305) := '636F6D706C657465223D3D3D642E72656164795374617465292626284A28292C6E2E72656164792829297D6E2E72656164792E70726F6D6973653D66756E6374696F6E2862297B696628214929696628493D6E2E446566657272656428292C22636F6D70';
wwv_flow_api.g_varchar2_table(306) := '6C657465223D3D3D642E726561647953746174657C7C226C6F6164696E6722213D3D642E72656164795374617465262621642E646F63756D656E74456C656D656E742E646F5363726F6C6C29612E73657454696D656F7574286E2E7265616479293B656C';
wwv_flow_api.g_varchar2_table(307) := '736520696628642E6164644576656E744C697374656E657229642E6164644576656E744C697374656E65722822444F4D436F6E74656E744C6F61646564222C4B292C612E6164644576656E744C697374656E657228226C6F6164222C4B293B656C73657B';
wwv_flow_api.g_varchar2_table(308) := '642E6174746163684576656E7428226F6E726561647973746174656368616E6765222C4B292C612E6174746163684576656E7428226F6E6C6F6164222C4B293B76617220633D21313B7472797B633D6E756C6C3D3D612E6672616D65456C656D656E7426';
wwv_flow_api.g_varchar2_table(309) := '26642E646F63756D656E74456C656D656E747D63617463682865297B7D632626632E646F5363726F6C6C26262166756E6374696F6E206628297B696628216E2E69735265616479297B7472797B632E646F5363726F6C6C28226C65667422297D63617463';
wwv_flow_api.g_varchar2_table(310) := '682862297B72657475726E20612E73657454696D656F757428662C3530297D4A28292C6E2E726561647928297D7D28297D72657475726E20492E70726F6D6973652862297D2C6E2E72656164792E70726F6D69736528293B766172204C3B666F72284C20';
wwv_flow_api.g_varchar2_table(311) := '696E206E286C2929627265616B3B6C2E6F776E46697273743D2230223D3D3D4C2C6C2E696E6C696E65426C6F636B4E656564734C61796F75743D21312C6E2866756E6374696F6E28297B76617220612C622C632C653B633D642E676574456C656D656E74';
wwv_flow_api.g_varchar2_table(312) := '7342795461674E616D652822626F647922295B305D2C632626632E7374796C65262628623D642E637265617465456C656D656E74282264697622292C653D642E637265617465456C656D656E74282264697622292C652E7374796C652E63737354657874';
wwv_flow_api.g_varchar2_table(313) := '3D22706F736974696F6E3A6162736F6C7574653B626F726465723A303B77696474683A303B6865696768743A303B746F703A303B6C6566743A2D393939397078222C632E617070656E644368696C642865292E617070656E644368696C642862292C2275';
wwv_flow_api.g_varchar2_table(314) := '6E646566696E656422213D747970656F6620622E7374796C652E7A6F6F6D262628622E7374796C652E637373546578743D22646973706C61793A696E6C696E653B6D617267696E3A303B626F726465723A303B70616464696E673A3170783B7769647468';
wwv_flow_api.g_varchar2_table(315) := '3A3170783B7A6F6F6D3A31222C6C2E696E6C696E65426C6F636B4E656564734C61796F75743D613D333D3D3D622E6F666673657457696474682C61262628632E7374796C652E7A6F6F6D3D3129292C632E72656D6F76654368696C64286529297D292C66';
wwv_flow_api.g_varchar2_table(316) := '756E6374696F6E28297B76617220613D642E637265617465456C656D656E74282264697622293B6C2E64656C657465457870616E646F3D21303B7472797B64656C65746520612E746573747D63617463682862297B6C2E64656C657465457870616E646F';
wwv_flow_api.g_varchar2_table(317) := '3D21317D613D6E756C6C7D28293B766172204D3D66756E6374696F6E2861297B76617220623D6E2E6E6F446174615B28612E6E6F64654E616D652B222022292E746F4C6F7765724361736528295D2C633D2B612E6E6F6465547970657C7C313B72657475';
wwv_flow_api.g_varchar2_table(318) := '726E2031213D3D63262639213D3D633F21313A21627C7C62213D3D21302626612E6765744174747269627574652822636C617373696422293D3D3D627D2C4E3D2F5E283F3A5C7B5B5C775C575D2A5C7D7C5C5B5B5C775C575D2A5C5D29242F2C4F3D2F28';
wwv_flow_api.g_varchar2_table(319) := '5B412D5A5D292F673B66756E6374696F6E205028612C622C63297B696628766F696420303D3D3D632626313D3D3D612E6E6F646554797065297B76617220643D22646174612D222B622E7265706C616365284F2C222D243122292E746F4C6F7765724361';
wwv_flow_api.g_varchar2_table(320) := '736528293B696628633D612E6765744174747269627574652864292C22737472696E67223D3D747970656F662063297B7472797B633D2274727565223D3D3D633F21303A2266616C7365223D3D3D633F21313A226E756C6C223D3D3D633F6E756C6C3A2B';
wwv_flow_api.g_varchar2_table(321) := '632B22223D3D3D633F2B633A4E2E746573742863293F6E2E70617273654A534F4E2863293A637D63617463682865297B7D6E2E6461746128612C622C63297D656C736520633D766F696420303B0A7D72657475726E20637D66756E6374696F6E20512861';
wwv_flow_api.g_varchar2_table(322) := '297B76617220623B666F72286220696E20612969662828226461746122213D3D627C7C216E2E6973456D7074794F626A65637428615B625D2929262622746F4A534F4E22213D3D622972657475726E21313B72657475726E21307D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(323) := '5228612C622C642C65297B6966284D286129297B76617220662C672C683D6E2E657870616E646F2C693D612E6E6F6465547970652C6A3D693F6E2E63616368653A612C6B3D693F615B685D3A615B685D2626683B6966286B26266A5B6B5D262628657C7C';
wwv_flow_api.g_varchar2_table(324) := '6A5B6B5D2E64617461297C7C766F69642030213D3D647C7C22737472696E6722213D747970656F6620622972657475726E206B7C7C286B3D693F615B685D3D632E706F7028297C7C6E2E677569642B2B3A68292C6A5B6B5D7C7C286A5B6B5D3D693F7B7D';
wwv_flow_api.g_varchar2_table(325) := '3A7B746F4A534F4E3A6E2E6E6F6F707D292C226F626A65637422213D747970656F66206226262266756E6374696F6E22213D747970656F6620627C7C28653F6A5B6B5D3D6E2E657874656E64286A5B6B5D2C62293A6A5B6B5D2E646174613D6E2E657874';
wwv_flow_api.g_varchar2_table(326) := '656E64286A5B6B5D2E646174612C6229292C673D6A5B6B5D2C657C7C28672E646174617C7C28672E646174613D7B7D292C673D672E64617461292C766F69642030213D3D64262628675B6E2E63616D656C436173652862295D3D64292C22737472696E67';
wwv_flow_api.g_varchar2_table(327) := '223D3D747970656F6620623F28663D675B625D2C6E756C6C3D3D66262628663D675B6E2E63616D656C436173652862295D29293A663D672C667D7D66756E6374696F6E205328612C622C63297B6966284D286129297B76617220642C652C663D612E6E6F';
wwv_flow_api.g_varchar2_table(328) := '6465547970652C673D663F6E2E63616368653A612C683D663F615B6E2E657870616E646F5D3A6E2E657870616E646F3B696628675B685D297B69662862262628643D633F675B685D3A675B685D2E6461746129297B6E2E697341727261792862293F623D';
wwv_flow_api.g_varchar2_table(329) := '622E636F6E636174286E2E6D617028622C6E2E63616D656C4361736529293A6220696E20643F623D5B625D3A28623D6E2E63616D656C436173652862292C623D6220696E20643F5B625D3A622E73706C69742822202229292C653D622E6C656E6774683B';
wwv_flow_api.g_varchar2_table(330) := '7768696C6528652D2D2964656C65746520645B625B655D5D3B696628633F21512864293A216E2E6973456D7074794F626A6563742864292972657475726E7D28637C7C2864656C65746520675B685D2E646174612C5128675B685D292929262628663F6E';
wwv_flow_api.g_varchar2_table(331) := '2E636C65616E44617461285B615D2C2130293A6C2E64656C657465457870616E646F7C7C67213D672E77696E646F773F64656C65746520675B685D3A675B685D3D766F69642030297D7D7D6E2E657874656E64287B63616368653A7B7D2C6E6F44617461';
wwv_flow_api.g_varchar2_table(332) := '3A7B226170706C657420223A21302C22656D62656420223A21302C226F626A65637420223A22636C7369643A44323743444236452D414536442D313163662D393642382D343434353533353430303030227D2C686173446174613A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(333) := '61297B72657475726E20613D612E6E6F6465547970653F6E2E63616368655B615B6E2E657870616E646F5D5D3A615B6E2E657870616E646F5D2C212161262621512861297D2C646174613A66756E6374696F6E28612C622C63297B72657475726E205228';
wwv_flow_api.g_varchar2_table(334) := '612C622C63297D2C72656D6F7665446174613A66756E6374696F6E28612C62297B72657475726E205328612C62297D2C5F646174613A66756E6374696F6E28612C622C63297B72657475726E205228612C622C632C2130297D2C5F72656D6F7665446174';
wwv_flow_api.g_varchar2_table(335) := '613A66756E6374696F6E28612C62297B72657475726E205328612C622C2130297D7D292C6E2E666E2E657874656E64287B646174613A66756E6374696F6E28612C62297B76617220632C642C652C663D746869735B305D2C673D662626662E6174747269';
wwv_flow_api.g_varchar2_table(336) := '62757465733B696628766F696420303D3D3D61297B696628746869732E6C656E677468262628653D6E2E646174612866292C313D3D3D662E6E6F6465547970652626216E2E5F6461746128662C227061727365644174747273222929297B633D672E6C65';
wwv_flow_api.g_varchar2_table(337) := '6E6774683B7768696C6528632D2D29675B635D262628643D675B635D2E6E616D652C303D3D3D642E696E6465784F662822646174612D2229262628643D6E2E63616D656C4361736528642E736C696365283529292C5028662C642C655B645D2929293B6E';
wwv_flow_api.g_varchar2_table(338) := '2E5F6461746128662C227061727365644174747273222C2130297D72657475726E20657D72657475726E226F626A656374223D3D747970656F6620613F746869732E656163682866756E6374696F6E28297B6E2E6461746128746869732C61297D293A61';
wwv_flow_api.g_varchar2_table(339) := '7267756D656E74732E6C656E6774683E313F746869732E656163682866756E6374696F6E28297B6E2E6461746128746869732C612C62297D293A663F5028662C612C6E2E6461746128662C6129293A766F696420307D2C72656D6F7665446174613A6675';
wwv_flow_api.g_varchar2_table(340) := '6E6374696F6E2861297B72657475726E20746869732E656163682866756E6374696F6E28297B6E2E72656D6F76654461746128746869732C61297D297D7D292C6E2E657874656E64287B71756575653A66756E6374696F6E28612C622C63297B76617220';
wwv_flow_api.g_varchar2_table(341) := '643B72657475726E20613F28623D28627C7C22667822292B227175657565222C643D6E2E5F6461746128612C62292C6326262821647C7C6E2E697341727261792863293F643D6E2E5F6461746128612C622C6E2E6D616B654172726179286329293A642E';
wwv_flow_api.g_varchar2_table(342) := '70757368286329292C647C7C5B5D293A766F696420307D2C646571756575653A66756E6374696F6E28612C62297B623D627C7C226678223B76617220633D6E2E717565756528612C62292C643D632E6C656E6774682C653D632E736869667428292C663D';
wwv_flow_api.g_varchar2_table(343) := '6E2E5F7175657565486F6F6B7328612C62292C673D66756E6374696F6E28297B6E2E6465717565756528612C62297D3B22696E70726F6772657373223D3D3D65262628653D632E736869667428292C642D2D292C65262628226678223D3D3D622626632E';
wwv_flow_api.g_varchar2_table(344) := '756E73686966742822696E70726F677265737322292C64656C65746520662E73746F702C652E63616C6C28612C672C6629292C21642626662626662E656D7074792E6669726528297D2C5F7175657565486F6F6B733A66756E6374696F6E28612C62297B';
wwv_flow_api.g_varchar2_table(345) := '76617220633D622B227175657565486F6F6B73223B72657475726E206E2E5F6461746128612C63297C7C6E2E5F6461746128612C632C7B656D7074793A6E2E43616C6C6261636B7328226F6E6365206D656D6F727922292E6164642866756E6374696F6E';
wwv_flow_api.g_varchar2_table(346) := '28297B6E2E5F72656D6F76654461746128612C622B22717565756522292C6E2E5F72656D6F76654461746128612C63297D297D297D7D292C6E2E666E2E657874656E64287B71756575653A66756E6374696F6E28612C62297B76617220633D323B726574';
wwv_flow_api.g_varchar2_table(347) := '75726E22737472696E6722213D747970656F662061262628623D612C613D226678222C632D2D292C617267756D656E74732E6C656E6774683C633F6E2E717565756528746869735B305D2C61293A766F696420303D3D3D623F746869733A746869732E65';
wwv_flow_api.g_varchar2_table(348) := '6163682866756E6374696F6E28297B76617220633D6E2E717565756528746869732C612C62293B6E2E5F7175657565486F6F6B7328746869732C61292C226678223D3D3D61262622696E70726F677265737322213D3D635B305D26266E2E646571756575';
wwv_flow_api.g_varchar2_table(349) := '6528746869732C61297D297D2C646571756575653A66756E6374696F6E2861297B72657475726E20746869732E656163682866756E6374696F6E28297B6E2E6465717565756528746869732C61297D297D2C636C65617251756575653A66756E6374696F';
wwv_flow_api.g_varchar2_table(350) := '6E2861297B72657475726E20746869732E717565756528617C7C226678222C5B5D297D2C70726F6D6973653A66756E6374696F6E28612C62297B76617220632C643D312C653D6E2E446566657272656428292C663D746869732C673D746869732E6C656E';
wwv_flow_api.g_varchar2_table(351) := '6774682C683D66756E6374696F6E28297B2D2D647C7C652E7265736F6C76655769746828662C5B665D297D3B22737472696E6722213D747970656F662061262628623D612C613D766F69642030292C613D617C7C226678223B7768696C6528672D2D2963';
wwv_flow_api.g_varchar2_table(352) := '3D6E2E5F6461746128665B675D2C612B227175657565486F6F6B7322292C632626632E656D707479262628642B2B2C632E656D7074792E616464286829293B72657475726E206828292C652E70726F6D6973652862297D7D292C66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(353) := '7B76617220613B6C2E736872696E6B57726170426C6F636B733D66756E6374696F6E28297B6966286E756C6C213D612972657475726E20613B613D21313B76617220622C632C653B72657475726E20633D642E676574456C656D656E747342795461674E';
wwv_flow_api.g_varchar2_table(354) := '616D652822626F647922295B305D2C632626632E7374796C653F28623D642E637265617465456C656D656E74282264697622292C653D642E637265617465456C656D656E74282264697622292C652E7374796C652E637373546578743D22706F73697469';
wwv_flow_api.g_varchar2_table(355) := '6F6E3A6162736F6C7574653B626F726465723A303B77696474683A303B6865696768743A303B746F703A303B6C6566743A2D393939397078222C632E617070656E644368696C642865292E617070656E644368696C642862292C22756E646566696E6564';
wwv_flow_api.g_varchar2_table(356) := '22213D747970656F6620622E7374796C652E7A6F6F6D262628622E7374796C652E637373546578743D222D7765626B69742D626F782D73697A696E673A636F6E74656E742D626F783B2D6D6F7A2D626F782D73697A696E673A636F6E74656E742D626F78';
wwv_flow_api.g_varchar2_table(357) := '3B626F782D73697A696E673A636F6E74656E742D626F783B646973706C61793A626C6F636B3B6D617267696E3A303B626F726465723A303B70616464696E673A3170783B77696474683A3170783B7A6F6F6D3A31222C622E617070656E644368696C6428';
wwv_flow_api.g_varchar2_table(358) := '642E637265617465456C656D656E7428226469762229292E7374796C652E77696474683D22357078222C613D33213D3D622E6F66667365745769647468292C632E72656D6F76654368696C642865292C61293A766F696420307D7D28293B76617220543D';
wwv_flow_api.g_varchar2_table(359) := '2F5B2B2D5D3F283F3A5C642A5C2E7C295C642B283F3A5B65455D5B2B2D5D3F5C642B7C292F2E736F757263652C553D6E65772052656745787028225E283F3A285B2B2D5D293D7C2928222B542B2229285B612D7A255D2A2924222C226922292C563D5B22';
wwv_flow_api.g_varchar2_table(360) := '546F70222C225269676874222C22426F74746F6D222C224C656674225D2C573D66756E6374696F6E28612C62297B72657475726E20613D627C7C612C226E6F6E65223D3D3D6E2E63737328612C22646973706C617922297C7C216E2E636F6E7461696E73';
wwv_flow_api.g_varchar2_table(361) := '28612E6F776E6572446F63756D656E742C61297D3B66756E6374696F6E205828612C622C632C64297B76617220652C663D312C673D32302C683D643F66756E6374696F6E28297B72657475726E20642E63757228297D3A66756E6374696F6E28297B7265';
wwv_flow_api.g_varchar2_table(362) := '7475726E206E2E63737328612C622C2222297D2C693D6828292C6A3D632626635B335D7C7C286E2E6373734E756D6265725B625D3F22223A22707822292C6B3D286E2E6373734E756D6265725B625D7C7C22707822213D3D6A26262B69292626552E6578';
wwv_flow_api.g_varchar2_table(363) := '6563286E2E63737328612C6229293B6966286B26266B5B335D213D3D6A297B6A3D6A7C7C6B5B335D2C633D637C7C5B5D2C6B3D2B697C7C313B646F20663D667C7C222E35222C6B2F3D662C6E2E7374796C6528612C622C6B2B6A293B7768696C65286621';
wwv_flow_api.g_varchar2_table(364) := '3D3D28663D6828292F6929262631213D3D6626262D2D67297D72657475726E20632626286B3D2B6B7C7C2B697C7C302C653D635B315D3F6B2B28635B315D2B31292A635B325D3A2B635B325D2C64262628642E756E69743D6A2C642E73746172743D6B2C';
wwv_flow_api.g_varchar2_table(365) := '642E656E643D6529292C657D76617220593D66756E6374696F6E28612C622C632C642C652C662C67297B76617220683D302C693D612E6C656E6774682C6A3D6E756C6C3D3D633B696628226F626A656374223D3D3D6E2E74797065286329297B653D2130';
wwv_flow_api.g_varchar2_table(366) := '3B666F72286820696E2063295928612C622C682C635B685D2C21302C662C67297D656C736520696628766F69642030213D3D64262628653D21302C6E2E697346756E6374696F6E2864297C7C28673D2130292C6A262628673F28622E63616C6C28612C64';
wwv_flow_api.g_varchar2_table(367) := '292C623D6E756C6C293A286A3D622C623D66756E6374696F6E28612C622C63297B72657475726E206A2E63616C6C286E2861292C63297D29292C622929666F72283B693E683B682B2B296228615B685D2C632C673F643A642E63616C6C28615B685D2C68';
wwv_flow_api.g_varchar2_table(368) := '2C6228615B685D2C632929293B72657475726E20653F613A6A3F622E63616C6C2861293A693F6228615B305D2C63293A667D2C5A3D2F5E283F3A636865636B626F787C726164696F29242F692C243D2F3C285B5C773A2D5D2B292F2C5F3D2F5E247C5C2F';
wwv_flow_api.g_varchar2_table(369) := '283F3A6A6176617C65636D61297363726970742F692C61613D2F5E5C732B2F2C62613D22616262727C61727469636C657C61736964657C617564696F7C6264697C63616E7661737C646174617C646174616C6973747C64657461696C737C6469616C6F67';
wwv_flow_api.g_varchar2_table(370) := '7C66696763617074696F6E7C6669677572657C666F6F7465727C6865616465727C6867726F75707C6D61696E7C6D61726B7C6D657465727C6E61767C6F75747075747C706963747572657C70726F67726573737C73656374696F6E7C73756D6D6172797C';
wwv_flow_api.g_varchar2_table(371) := '74656D706C6174657C74696D657C766964656F223B66756E6374696F6E2063612861297B76617220623D62612E73706C697428227C22292C633D612E637265617465446F63756D656E74467261676D656E7428293B696628632E637265617465456C656D';
wwv_flow_api.g_varchar2_table(372) := '656E74297768696C6528622E6C656E67746829632E637265617465456C656D656E7428622E706F702829293B72657475726E20637D2166756E6374696F6E28297B76617220613D642E637265617465456C656D656E74282264697622292C623D642E6372';
wwv_flow_api.g_varchar2_table(373) := '65617465446F63756D656E74467261676D656E7428292C633D642E637265617465456C656D656E742822696E70757422293B612E696E6E657248544D4C3D2220203C6C696E6B2F3E3C7461626C653E3C2F7461626C653E3C6120687265663D272F61273E';
wwv_flow_api.g_varchar2_table(374) := '613C2F613E3C696E70757420747970653D27636865636B626F78272F3E222C6C2E6C656164696E67576869746573706163653D333D3D3D612E66697273744368696C642E6E6F6465547970652C6C2E74626F64793D21612E676574456C656D656E747342';
wwv_flow_api.g_varchar2_table(375) := '795461674E616D65282274626F647922292E6C656E6774682C6C2E68746D6C53657269616C697A653D2121612E676574456C656D656E747342795461674E616D6528226C696E6B22292E6C656E6774682C6C2E68746D6C35436C6F6E653D223C3A6E6176';
wwv_flow_api.g_varchar2_table(376) := '3E3C2F3A6E61763E22213D3D642E637265617465456C656D656E7428226E617622292E636C6F6E654E6F6465282130292E6F7574657248544D4C2C632E747970653D22636865636B626F78222C632E636865636B65643D21302C622E617070656E644368';
wwv_flow_api.g_varchar2_table(377) := '696C642863292C6C2E617070656E64436865636B65643D632E636865636B65642C612E696E6E657248544D4C3D223C74657874617265613E783C2F74657874617265613E222C6C2E6E6F436C6F6E65436865636B65643D2121612E636C6F6E654E6F6465';
wwv_flow_api.g_varchar2_table(378) := '282130292E6C6173744368696C642E64656661756C7456616C75652C622E617070656E644368696C642861292C633D642E637265617465456C656D656E742822696E70757422292C632E736574417474726962757465282274797065222C22726164696F';
wwv_flow_api.g_varchar2_table(379) := '22292C632E7365744174747269627574652822636865636B6564222C22636865636B656422292C632E73657441747472696275746528226E616D65222C227422292C612E617070656E644368696C642863292C6C2E636865636B436C6F6E653D612E636C';
wwv_flow_api.g_varchar2_table(380) := '6F6E654E6F6465282130292E636C6F6E654E6F6465282130292E6C6173744368696C642E636865636B65642C6C2E6E6F436C6F6E654576656E743D2121612E6164644576656E744C697374656E65722C615B6E2E657870616E646F5D3D312C6C2E617474';
wwv_flow_api.g_varchar2_table(381) := '726962757465733D21612E676574417474726962757465286E2E657870616E646F297D28293B7661722064613D7B6F7074696F6E3A5B312C223C73656C656374206D756C7469706C653D276D756C7469706C65273E222C223C2F73656C6563743E225D2C';
wwv_flow_api.g_varchar2_table(382) := '6C6567656E643A5B312C223C6669656C647365743E222C223C2F6669656C647365743E225D2C617265613A5B312C223C6D61703E222C223C2F6D61703E225D2C706172616D3A5B312C223C6F626A6563743E222C223C2F6F626A6563743E225D2C746865';
wwv_flow_api.g_varchar2_table(383) := '61643A5B312C223C7461626C653E222C223C2F7461626C653E225D2C74723A5B322C223C7461626C653E3C74626F64793E222C223C2F74626F64793E3C2F7461626C653E225D2C636F6C3A5B322C223C7461626C653E3C74626F64793E3C2F74626F6479';
wwv_flow_api.g_varchar2_table(384) := '3E3C636F6C67726F75703E222C223C2F636F6C67726F75703E3C2F7461626C653E225D2C74643A5B332C223C7461626C653E3C74626F64793E3C74723E222C223C2F74723E3C2F74626F64793E3C2F7461626C653E225D2C5F64656661756C743A6C2E68';
wwv_flow_api.g_varchar2_table(385) := '746D6C53657269616C697A653F5B302C22222C22225D3A5B312C22583C6469763E222C223C2F6469763E225D7D3B64612E6F707467726F75703D64612E6F7074696F6E2C64612E74626F64793D64612E74666F6F743D64612E636F6C67726F75703D6461';
wwv_flow_api.g_varchar2_table(386) := '2E63617074696F6E3D64612E74686561642C64612E74683D64612E74643B66756E6374696F6E20656128612C62297B76617220632C642C653D302C663D22756E646566696E656422213D747970656F6620612E676574456C656D656E747342795461674E';
wwv_flow_api.g_varchar2_table(387) := '616D653F612E676574456C656D656E747342795461674E616D6528627C7C222A22293A22756E646566696E656422213D747970656F6620612E717565727953656C6563746F72416C6C3F612E717565727953656C6563746F72416C6C28627C7C222A2229';
wwv_flow_api.g_varchar2_table(388) := '3A766F696420303B696628216629666F7228663D5B5D2C633D612E6368696C644E6F6465737C7C613B6E756C6C213D28643D635B655D293B652B2B2921627C7C6E2E6E6F64654E616D6528642C62293F662E707573682864293A6E2E6D6572676528662C';
wwv_flow_api.g_varchar2_table(389) := '656128642C6229293B72657475726E20766F696420303D3D3D627C7C6226266E2E6E6F64654E616D6528612C62293F6E2E6D65726765285B615D2C66293A667D66756E6374696F6E20666128612C62297B666F722876617220632C643D303B6E756C6C21';
wwv_flow_api.g_varchar2_table(390) := '3D28633D615B645D293B642B2B296E2E5F6461746128632C22676C6F62616C4576616C222C21627C7C6E2E5F6461746128625B645D2C22676C6F62616C4576616C2229297D7661722067613D2F3C7C26233F5C772B3B2F2C68613D2F3C74626F64792F69';
wwv_flow_api.g_varchar2_table(391) := '3B66756E6374696F6E2069612861297B5A2E7465737428612E7479706529262628612E64656661756C74436865636B65643D612E636865636B6564297D66756E6374696F6E206A6128612C622C632C642C65297B666F722876617220662C672C682C692C';
wwv_flow_api.g_varchar2_table(392) := '6A2C6B2C6D2C6F3D612E6C656E6774682C703D63612862292C713D5B5D2C723D303B6F3E723B722B2B29696628673D615B725D2C677C7C303D3D3D6729696628226F626A656374223D3D3D6E2E74797065286729296E2E6D6572676528712C672E6E6F64';
wwv_flow_api.g_varchar2_table(393) := '65547970653F5B675D3A67293B656C73652069662867612E74657374286729297B693D697C7C702E617070656E644368696C6428622E637265617465456C656D656E7428226469762229292C6A3D28242E657865632867297C7C5B22222C22225D295B31';
wwv_flow_api.g_varchar2_table(394) := '5D2E746F4C6F7765724361736528292C6D3D64615B6A5D7C7C64612E5F64656661756C742C692E696E6E657248544D4C3D6D5B315D2B6E2E68746D6C50726566696C7465722867292B6D5B325D2C663D6D5B305D3B7768696C6528662D2D29693D692E6C';
wwv_flow_api.g_varchar2_table(395) := '6173744368696C643B696628216C2E6C656164696E6757686974657370616365262661612E746573742867292626712E7075736828622E637265617465546578744E6F64652861612E657865632867295B305D29292C216C2E74626F6479297B673D2274';
wwv_flow_api.g_varchar2_table(396) := '61626C6522213D3D6A7C7C68612E746573742867293F223C7461626C653E22213D3D6D5B315D7C7C68612E746573742867293F303A693A692E66697273744368696C642C663D672626672E6368696C644E6F6465732E6C656E6774683B7768696C652866';
wwv_flow_api.g_varchar2_table(397) := '2D2D296E2E6E6F64654E616D65286B3D672E6368696C644E6F6465735B665D2C2274626F647922292626216B2E6368696C644E6F6465732E6C656E6774682626672E72656D6F76654368696C64286B297D6E2E6D6572676528712C692E6368696C644E6F';
wwv_flow_api.g_varchar2_table(398) := '646573292C692E74657874436F6E74656E743D22223B7768696C6528692E66697273744368696C6429692E72656D6F76654368696C6428692E66697273744368696C64293B693D702E6C6173744368696C647D656C736520712E7075736828622E637265';
wwv_flow_api.g_varchar2_table(399) := '617465546578744E6F6465286729293B692626702E72656D6F76654368696C642869292C6C2E617070656E64436865636B65647C7C6E2E6772657028656128712C22696E70757422292C6961292C723D303B7768696C6528673D715B722B2B5D29696628';
wwv_flow_api.g_varchar2_table(400) := '6426266E2E696E417272617928672C64293E2D3129652626652E707573682867293B656C736520696628683D6E2E636F6E7461696E7328672E6F776E6572446F63756D656E742C67292C693D656128702E617070656E644368696C642867292C22736372';
wwv_flow_api.g_varchar2_table(401) := '69707422292C68262666612869292C63297B663D303B7768696C6528673D695B662B2B5D295F2E7465737428672E747970657C7C2222292626632E707573682867297D72657475726E20693D6E756C6C2C707D2166756E6374696F6E28297B7661722062';
wwv_flow_api.g_varchar2_table(402) := '2C632C653D642E637265617465456C656D656E74282264697622293B666F72286220696E7B7375626D69743A21302C6368616E67653A21302C666F637573696E3A21307D29633D226F6E222B622C286C5B625D3D6320696E2061297C7C28652E73657441';
wwv_flow_api.g_varchar2_table(403) := '747472696275746528632C227422292C6C5B625D3D652E617474726962757465735B635D2E657870616E646F3D3D3D2131293B653D6E756C6C7D28293B766172206B613D2F5E283F3A696E7075747C73656C6563747C746578746172656129242F692C6C';
wwv_flow_api.g_varchar2_table(404) := '613D2F5E6B65792F2C6D613D2F5E283F3A6D6F7573657C706F696E7465727C636F6E746578746D656E757C647261677C64726F70297C636C69636B2F2C6E613D2F5E283F3A666F637573696E666F6375737C666F6375736F7574626C757229242F2C6F61';
wwv_flow_api.g_varchar2_table(405) := '3D2F5E285B5E2E5D2A29283F3A5C2E282E2B297C292F3B66756E6374696F6E20706128297B72657475726E21307D66756E6374696F6E20716128297B72657475726E21317D66756E6374696F6E20726128297B7472797B72657475726E20642E61637469';
wwv_flow_api.g_varchar2_table(406) := '7665456C656D656E747D63617463682861297B7D7D66756E6374696F6E20736128612C622C632C642C652C66297B76617220672C683B696628226F626A656374223D3D747970656F662062297B22737472696E6722213D747970656F662063262628643D';
wwv_flow_api.g_varchar2_table(407) := '647C7C632C633D766F69642030293B666F72286820696E206229736128612C682C632C642C625B685D2C66293B72657475726E20617D6966286E756C6C3D3D6426266E756C6C3D3D653F28653D632C643D633D766F69642030293A6E756C6C3D3D652626';
wwv_flow_api.g_varchar2_table(408) := '2822737472696E67223D3D747970656F6620633F28653D642C643D766F69642030293A28653D642C643D632C633D766F6964203029292C653D3D3D213129653D71613B656C73652069662821652972657475726E20613B72657475726E20313D3D3D6626';
wwv_flow_api.g_varchar2_table(409) := '2628673D652C653D66756E6374696F6E2861297B72657475726E206E28292E6F66662861292C672E6170706C7928746869732C617267756D656E7473297D2C652E677569643D672E677569647C7C28672E677569643D6E2E677569642B2B29292C612E65';
wwv_flow_api.g_varchar2_table(410) := '6163682866756E6374696F6E28297B6E2E6576656E742E61646428746869732C622C652C642C63297D297D6E2E6576656E743D7B676C6F62616C3A7B7D2C6164643A66756E6374696F6E28612C622C632C642C65297B76617220662C672C682C692C6A2C';
wwv_flow_api.g_varchar2_table(411) := '6B2C6C2C6D2C6F2C702C712C723D6E2E5F646174612861293B69662872297B632E68616E646C6572262628693D632C633D692E68616E646C65722C653D692E73656C6563746F72292C632E677569647C7C28632E677569643D6E2E677569642B2B292C28';
wwv_flow_api.g_varchar2_table(412) := '673D722E6576656E7473297C7C28673D722E6576656E74733D7B7D292C286B3D722E68616E646C65297C7C286B3D722E68616E646C653D66756E6374696F6E2861297B72657475726E22756E646566696E6564223D3D747970656F66206E7C7C6126266E';
wwv_flow_api.g_varchar2_table(413) := '2E6576656E742E7472696767657265643D3D3D612E747970653F766F696420303A6E2E6576656E742E64697370617463682E6170706C79286B2E656C656D2C617267756D656E7473297D2C6B2E656C656D3D61292C623D28627C7C2222292E6D61746368';
wwv_flow_api.g_varchar2_table(414) := '2847297C7C5B22225D2C683D622E6C656E6774683B7768696C6528682D2D29663D6F612E6578656328625B685D297C7C5B5D2C6F3D713D665B315D2C703D28665B325D7C7C2222292E73706C697428222E22292E736F727428292C6F2626286A3D6E2E65';
wwv_flow_api.g_varchar2_table(415) := '76656E742E7370656369616C5B6F5D7C7C7B7D2C6F3D28653F6A2E64656C6567617465547970653A6A2E62696E6454797065297C7C6F2C6A3D6E2E6576656E742E7370656369616C5B6F5D7C7C7B7D2C6C3D6E2E657874656E64287B747970653A6F2C6F';
wwv_flow_api.g_varchar2_table(416) := '726967547970653A712C646174613A642C68616E646C65723A632C677569643A632E677569642C73656C6563746F723A652C6E65656473436F6E746578743A6526266E2E657870722E6D617463682E6E65656473436F6E746578742E746573742865292C';
wwv_flow_api.g_varchar2_table(417) := '6E616D6573706163653A702E6A6F696E28222E22297D2C69292C286D3D675B6F5D297C7C286D3D675B6F5D3D5B5D2C6D2E64656C6567617465436F756E743D302C6A2E736574757026266A2E73657475702E63616C6C28612C642C702C6B29213D3D2131';
wwv_flow_api.g_varchar2_table(418) := '7C7C28612E6164644576656E744C697374656E65723F612E6164644576656E744C697374656E6572286F2C6B2C2131293A612E6174746163684576656E742626612E6174746163684576656E7428226F6E222B6F2C6B2929292C6A2E6164642626286A2E';
wwv_flow_api.g_varchar2_table(419) := '6164642E63616C6C28612C6C292C6C2E68616E646C65722E677569647C7C286C2E68616E646C65722E677569643D632E6775696429292C653F6D2E73706C696365286D2E64656C6567617465436F756E742B2B2C302C6C293A6D2E70757368286C292C6E';
wwv_flow_api.g_varchar2_table(420) := '2E6576656E742E676C6F62616C5B6F5D3D2130293B613D6E756C6C7D7D2C72656D6F76653A66756E6374696F6E28612C622C632C642C65297B76617220662C672C682C692C6A2C6B2C6C2C6D2C6F2C702C712C723D6E2E6861734461746128612926266E';
wwv_flow_api.g_varchar2_table(421) := '2E5F646174612861293B696628722626286B3D722E6576656E747329297B623D28627C7C2222292E6D617463682847297C7C5B22225D2C6A3D622E6C656E6774683B7768696C65286A2D2D29696628683D6F612E6578656328625B6A5D297C7C5B5D2C6F';
wwv_flow_api.g_varchar2_table(422) := '3D713D685B315D2C703D28685B325D7C7C2222292E73706C697428222E22292E736F727428292C6F297B6C3D6E2E6576656E742E7370656369616C5B6F5D7C7C7B7D2C6F3D28643F6C2E64656C6567617465547970653A6C2E62696E6454797065297C7C';
wwv_flow_api.g_varchar2_table(423) := '6F2C6D3D6B5B6F5D7C7C5B5D2C683D685B325D26266E6577205265674578702822285E7C5C5C2E29222B702E6A6F696E28225C5C2E283F3A2E2A5C5C2E7C2922292B22285C5C2E7C242922292C693D663D6D2E6C656E6774683B7768696C6528662D2D29';
wwv_flow_api.g_varchar2_table(424) := '673D6D5B665D2C2165262671213D3D672E6F726967547970657C7C632626632E67756964213D3D672E677569647C7C68262621682E7465737428672E6E616D657370616365297C7C64262664213D3D672E73656C6563746F72262628222A2A22213D3D64';
wwv_flow_api.g_varchar2_table(425) := '7C7C21672E73656C6563746F72297C7C286D2E73706C69636528662C31292C672E73656C6563746F7226266D2E64656C6567617465436F756E742D2D2C6C2E72656D6F766526266C2E72656D6F76652E63616C6C28612C6729293B692626216D2E6C656E';
wwv_flow_api.g_varchar2_table(426) := '6774682626286C2E74656172646F776E26266C2E74656172646F776E2E63616C6C28612C702C722E68616E646C6529213D3D21317C7C6E2E72656D6F76654576656E7428612C6F2C722E68616E646C65292C64656C657465206B5B6F5D297D656C736520';
wwv_flow_api.g_varchar2_table(427) := '666F72286F20696E206B296E2E6576656E742E72656D6F766528612C6F2B625B6A5D2C632C642C2130293B6E2E6973456D7074794F626A656374286B2926262864656C65746520722E68616E646C652C6E2E5F72656D6F76654461746128612C22657665';
wwv_flow_api.g_varchar2_table(428) := '6E74732229297D7D2C747269676765723A66756E6374696F6E28622C632C652C66297B76617220672C682C692C6A2C6C2C6D2C6F2C703D5B657C7C645D2C713D6B2E63616C6C28622C227479706522293F622E747970653A622C723D6B2E63616C6C2862';
wwv_flow_api.g_varchar2_table(429) := '2C226E616D65737061636522293F622E6E616D6573706163652E73706C697428222E22293A5B5D3B696628693D6D3D653D657C7C642C33213D3D652E6E6F646554797065262638213D3D652E6E6F6465547970652626216E612E7465737428712B6E2E65';
wwv_flow_api.g_varchar2_table(430) := '76656E742E74726967676572656429262628712E696E6465784F6628222E22293E2D31262628723D712E73706C697428222E22292C713D722E736869667428292C722E736F72742829292C683D712E696E6465784F6628223A22293C302626226F6E222B';
wwv_flow_api.g_varchar2_table(431) := '712C623D625B6E2E657870616E646F5D3F623A6E6577206E2E4576656E7428712C226F626A656374223D3D747970656F662062262662292C622E6973547269676765723D663F323A332C622E6E616D6573706163653D722E6A6F696E28222E22292C622E';
wwv_flow_api.g_varchar2_table(432) := '726E616D6573706163653D622E6E616D6573706163653F6E6577205265674578702822285E7C5C5C2E29222B722E6A6F696E28225C5C2E283F3A2E2A5C5C2E7C2922292B22285C5C2E7C242922293A6E756C6C2C622E726573756C743D766F696420302C';
wwv_flow_api.g_varchar2_table(433) := '622E7461726765747C7C28622E7461726765743D65292C633D6E756C6C3D3D633F5B625D3A6E2E6D616B65417272617928632C5B625D292C6C3D6E2E6576656E742E7370656369616C5B715D7C7C7B7D2C667C7C216C2E747269676765727C7C6C2E7472';
wwv_flow_api.g_varchar2_table(434) := '69676765722E6170706C7928652C6329213D3D213129297B69662821662626216C2E6E6F427562626C652626216E2E697357696E646F77286529297B666F72286A3D6C2E64656C6567617465547970657C7C712C6E612E74657374286A2B71297C7C2869';
wwv_flow_api.g_varchar2_table(435) := '3D692E706172656E744E6F6465293B693B693D692E706172656E744E6F646529702E707573682869292C6D3D693B6D3D3D3D28652E6F776E6572446F63756D656E747C7C64292626702E70757368286D2E64656661756C74566965777C7C6D2E70617265';
wwv_flow_api.g_varchar2_table(436) := '6E7457696E646F777C7C61297D6F3D303B7768696C652828693D705B6F2B2B5D29262621622E697350726F7061676174696F6E53746F70706564282929622E747970653D6F3E313F6A3A6C2E62696E64547970657C7C712C673D286E2E5F646174612869';
wwv_flow_api.g_varchar2_table(437) := '2C226576656E747322297C7C7B7D295B622E747970655D26266E2E5F6461746128692C2268616E646C6522292C672626672E6170706C7928692C63292C673D682626695B685D2C672626672E6170706C7926264D286929262628622E726573756C743D67';
wwv_flow_api.g_varchar2_table(438) := '2E6170706C7928692C63292C622E726573756C743D3D3D21312626622E70726576656E7444656661756C742829293B696628622E747970653D712C2166262621622E697344656661756C7450726576656E7465642829262628216C2E5F64656661756C74';
wwv_flow_api.g_varchar2_table(439) := '7C7C6C2E5F64656661756C742E6170706C7928702E706F7028292C63293D3D3D21312926264D2865292626682626655B715D2626216E2E697357696E646F77286529297B6D3D655B685D2C6D262628655B685D3D6E756C6C292C6E2E6576656E742E7472';
wwv_flow_api.g_varchar2_table(440) := '696767657265643D713B7472797B655B715D28297D63617463682873297B7D6E2E6576656E742E7472696767657265643D766F696420302C6D262628655B685D3D6D297D72657475726E20622E726573756C747D7D2C64697370617463683A66756E6374';
wwv_flow_api.g_varchar2_table(441) := '696F6E2861297B613D6E2E6576656E742E6669782861293B76617220622C632C642C662C672C683D5B5D2C693D652E63616C6C28617267756D656E7473292C6A3D286E2E5F6461746128746869732C226576656E747322297C7C7B7D295B612E74797065';
wwv_flow_api.g_varchar2_table(442) := '5D7C7C5B5D2C6B3D6E2E6576656E742E7370656369616C5B612E747970655D7C7C7B7D3B696628695B305D3D612C612E64656C65676174655461726765743D746869732C216B2E70726544697370617463687C7C6B2E70726544697370617463682E6361';
wwv_flow_api.g_varchar2_table(443) := '6C6C28746869732C6129213D3D2131297B683D6E2E6576656E742E68616E646C6572732E63616C6C28746869732C612C6A292C623D303B7768696C652828663D685B622B2B5D29262621612E697350726F7061676174696F6E53746F707065642829297B';
wwv_flow_api.g_varchar2_table(444) := '612E63757272656E745461726765743D662E656C656D2C633D303B7768696C652828673D662E68616E646C6572735B632B2B5D29262621612E6973496D6D65646961746550726F7061676174696F6E53746F70706564282929612E726E616D6573706163';
wwv_flow_api.g_varchar2_table(445) := '65262621612E726E616D6573706163652E7465737428672E6E616D657370616365297C7C28612E68616E646C654F626A3D672C612E646174613D672E646174612C643D28286E2E6576656E742E7370656369616C5B672E6F726967547970655D7C7C7B7D';
wwv_flow_api.g_varchar2_table(446) := '292E68616E646C657C7C672E68616E646C6572292E6170706C7928662E656C656D2C69292C766F69642030213D3D64262628612E726573756C743D64293D3D3D2131262628612E70726576656E7444656661756C7428292C612E73746F7050726F706167';
wwv_flow_api.g_varchar2_table(447) := '6174696F6E282929297D72657475726E206B2E706F7374446973706174636826266B2E706F737444697370617463682E63616C6C28746869732C61292C612E726573756C747D7D2C68616E646C6572733A66756E6374696F6E28612C62297B7661722063';
wwv_flow_api.g_varchar2_table(448) := '2C642C652C662C673D5B5D2C683D622E64656C6567617465436F756E742C693D612E7461726765743B696628682626692E6E6F64655479706526262822636C69636B22213D3D612E747970657C7C69734E614E28612E627574746F6E297C7C612E627574';
wwv_flow_api.g_varchar2_table(449) := '746F6E3C312929666F72283B69213D746869733B693D692E706172656E744E6F64657C7C7468697329696628313D3D3D692E6E6F646554797065262628692E64697361626C6564213D3D21307C7C22636C69636B22213D3D612E7479706529297B666F72';
wwv_flow_api.g_varchar2_table(450) := '28643D5B5D2C633D303B683E633B632B2B29663D625B635D2C653D662E73656C6563746F722B2220222C766F696420303D3D3D645B655D262628645B655D3D662E6E65656473436F6E746578743F6E28652C74686973292E696E6465782869293E2D313A';
wwv_flow_api.g_varchar2_table(451) := '6E2E66696E6428652C746869732C6E756C6C2C5B695D292E6C656E677468292C645B655D2626642E707573682866293B642E6C656E6774682626672E70757368287B656C656D3A692C68616E646C6572733A647D297D72657475726E20683C622E6C656E';
wwv_flow_api.g_varchar2_table(452) := '6774682626672E70757368287B656C656D3A746869732C68616E646C6572733A622E736C6963652868297D292C677D2C6669783A66756E6374696F6E2861297B696628615B6E2E657870616E646F5D2972657475726E20613B76617220622C632C652C66';
wwv_flow_api.g_varchar2_table(453) := '3D612E747970652C673D612C683D746869732E666978486F6F6B735B665D3B687C7C28746869732E666978486F6F6B735B665D3D683D6D612E746573742866293F746869732E6D6F757365486F6F6B733A6C612E746573742866293F746869732E6B6579';
wwv_flow_api.g_varchar2_table(454) := '486F6F6B733A7B7D292C653D682E70726F70733F746869732E70726F70732E636F6E63617428682E70726F7073293A746869732E70726F70732C613D6E6577206E2E4576656E742867292C623D652E6C656E6774683B7768696C6528622D2D29633D655B';
wwv_flow_api.g_varchar2_table(455) := '625D2C615B635D3D675B635D3B72657475726E20612E7461726765747C7C28612E7461726765743D672E737263456C656D656E747C7C64292C333D3D3D612E7461726765742E6E6F646554797065262628612E7461726765743D612E7461726765742E70';
wwv_flow_api.g_varchar2_table(456) := '6172656E744E6F6465292C612E6D6574614B65793D2121612E6D6574614B65792C682E66696C7465723F682E66696C74657228612C67293A617D2C70726F70733A22616C744B657920627562626C65732063616E63656C61626C65206374726C4B657920';
wwv_flow_api.g_varchar2_table(457) := '63757272656E745461726765742064657461696C206576656E745068617365206D6574614B65792072656C617465645461726765742073686966744B6579207461726765742074696D655374616D702076696577207768696368222E73706C6974282220';
wwv_flow_api.g_varchar2_table(458) := '22292C666978486F6F6B733A7B7D2C6B6579486F6F6B733A7B70726F70733A22636861722063686172436F6465206B6579206B6579436F6465222E73706C697428222022292C66696C7465723A66756E6374696F6E28612C62297B72657475726E206E75';
wwv_flow_api.g_varchar2_table(459) := '6C6C3D3D612E7768696368262628612E77686963683D6E756C6C213D622E63686172436F64653F622E63686172436F64653A622E6B6579436F6465292C617D7D2C6D6F757365486F6F6B733A7B70726F70733A22627574746F6E20627574746F6E732063';
wwv_flow_api.g_varchar2_table(460) := '6C69656E745820636C69656E74592066726F6D456C656D656E74206F666673657458206F6666736574592070616765582070616765592073637265656E582073637265656E5920746F456C656D656E74222E73706C697428222022292C66696C7465723A';
wwv_flow_api.g_varchar2_table(461) := '66756E6374696F6E28612C62297B76617220632C652C662C673D622E627574746F6E2C683D622E66726F6D456C656D656E743B72657475726E206E756C6C3D3D612E706167655826266E756C6C213D622E636C69656E7458262628653D612E7461726765';
wwv_flow_api.g_varchar2_table(462) := '742E6F776E6572446F63756D656E747C7C642C663D652E646F63756D656E74456C656D656E742C633D652E626F64792C612E70616765583D622E636C69656E74582B28662626662E7363726F6C6C4C6566747C7C632626632E7363726F6C6C4C6566747C';
wwv_flow_api.g_varchar2_table(463) := '7C30292D28662626662E636C69656E744C6566747C7C632626632E636C69656E744C6566747C7C30292C612E70616765593D622E636C69656E74592B28662626662E7363726F6C6C546F707C7C632626632E7363726F6C6C546F707C7C30292D28662626';
wwv_flow_api.g_varchar2_table(464) := '662E636C69656E74546F707C7C632626632E636C69656E74546F707C7C3029292C21612E72656C61746564546172676574262668262628612E72656C617465645461726765743D683D3D3D612E7461726765743F622E746F456C656D656E743A68292C61';
wwv_flow_api.g_varchar2_table(465) := '2E77686963687C7C766F696420303D3D3D677C7C28612E77686963683D3126673F313A3226673F333A3426673F323A30292C617D7D2C7370656369616C3A7B6C6F61643A7B6E6F427562626C653A21307D2C666F6375733A7B747269676765723A66756E';
wwv_flow_api.g_varchar2_table(466) := '6374696F6E28297B69662874686973213D3D726128292626746869732E666F637573297472797B72657475726E20746869732E666F63757328292C21317D63617463682861297B7D7D2C64656C6567617465547970653A22666F637573696E227D2C626C';
wwv_flow_api.g_varchar2_table(467) := '75723A7B747269676765723A66756E6374696F6E28297B72657475726E20746869733D3D3D726128292626746869732E626C75723F28746869732E626C757228292C2131293A766F696420307D2C64656C6567617465547970653A22666F6375736F7574';
wwv_flow_api.g_varchar2_table(468) := '227D2C636C69636B3A7B747269676765723A66756E6374696F6E28297B72657475726E206E2E6E6F64654E616D6528746869732C22696E7075742229262622636865636B626F78223D3D3D746869732E747970652626746869732E636C69636B3F287468';
wwv_flow_api.g_varchar2_table(469) := '69732E636C69636B28292C2131293A766F696420307D2C5F64656661756C743A66756E6374696F6E2861297B72657475726E206E2E6E6F64654E616D6528612E7461726765742C226122297D7D2C6265666F7265756E6C6F61643A7B706F737444697370';
wwv_flow_api.g_varchar2_table(470) := '617463683A66756E6374696F6E2861297B766F69642030213D3D612E726573756C742626612E6F726967696E616C4576656E74262628612E6F726967696E616C4576656E742E72657475726E56616C75653D612E726573756C74297D7D7D2C73696D756C';
wwv_flow_api.g_varchar2_table(471) := '6174653A66756E6374696F6E28612C622C63297B76617220643D6E2E657874656E64286E6577206E2E4576656E742C632C7B747970653A612C697353696D756C617465643A21307D293B6E2E6576656E742E7472696767657228642C6E756C6C2C62292C';
wwv_flow_api.g_varchar2_table(472) := '642E697344656661756C7450726576656E74656428292626632E70726576656E7444656661756C7428297D7D2C6E2E72656D6F76654576656E743D642E72656D6F76654576656E744C697374656E65723F66756E6374696F6E28612C622C63297B612E72';
wwv_flow_api.g_varchar2_table(473) := '656D6F76654576656E744C697374656E65722626612E72656D6F76654576656E744C697374656E657228622C63297D3A66756E6374696F6E28612C622C63297B76617220643D226F6E222B623B612E6465746163684576656E7426262822756E64656669';
wwv_flow_api.g_varchar2_table(474) := '6E6564223D3D747970656F6620615B645D262628615B645D3D6E756C6C292C612E6465746163684576656E7428642C6329297D2C6E2E4576656E743D66756E6374696F6E28612C62297B72657475726E207468697320696E7374616E63656F66206E2E45';
wwv_flow_api.g_varchar2_table(475) := '76656E743F28612626612E747970653F28746869732E6F726967696E616C4576656E743D612C746869732E747970653D612E747970652C746869732E697344656661756C7450726576656E7465643D612E64656661756C7450726576656E7465647C7C76';
wwv_flow_api.g_varchar2_table(476) := '6F696420303D3D3D612E64656661756C7450726576656E7465642626612E72657475726E56616C75653D3D3D21313F70613A7161293A746869732E747970653D612C6226266E2E657874656E6428746869732C62292C746869732E74696D655374616D70';
wwv_flow_api.g_varchar2_table(477) := '3D612626612E74696D655374616D707C7C6E2E6E6F7728292C766F696428746869735B6E2E657870616E646F5D3D213029293A6E6577206E2E4576656E7428612C62297D2C6E2E4576656E742E70726F746F747970653D7B636F6E7374727563746F723A';
wwv_flow_api.g_varchar2_table(478) := '6E2E4576656E742C697344656661756C7450726576656E7465643A71612C697350726F7061676174696F6E53746F707065643A71612C6973496D6D65646961746550726F7061676174696F6E53746F707065643A71612C70726576656E7444656661756C';
wwv_flow_api.g_varchar2_table(479) := '743A66756E6374696F6E28297B76617220613D746869732E6F726967696E616C4576656E743B746869732E697344656661756C7450726576656E7465643D70612C61262628612E70726576656E7444656661756C743F612E70726576656E744465666175';
wwv_flow_api.g_varchar2_table(480) := '6C7428293A612E72657475726E56616C75653D2131297D2C73746F7050726F7061676174696F6E3A66756E6374696F6E28297B76617220613D746869732E6F726967696E616C4576656E743B746869732E697350726F7061676174696F6E53746F707065';
wwv_flow_api.g_varchar2_table(481) := '643D70612C61262621746869732E697353696D756C61746564262628612E73746F7050726F7061676174696F6E2626612E73746F7050726F7061676174696F6E28292C612E63616E63656C427562626C653D2130297D2C73746F70496D6D656469617465';
wwv_flow_api.g_varchar2_table(482) := '50726F7061676174696F6E3A66756E6374696F6E28297B76617220613D746869732E6F726967696E616C4576656E743B746869732E6973496D6D65646961746550726F7061676174696F6E53746F707065643D70612C612626612E73746F70496D6D6564';
wwv_flow_api.g_varchar2_table(483) := '6961746550726F7061676174696F6E2626612E73746F70496D6D65646961746550726F7061676174696F6E28292C746869732E73746F7050726F7061676174696F6E28297D7D2C6E2E65616368287B6D6F757365656E7465723A226D6F7573656F766572';
wwv_flow_api.g_varchar2_table(484) := '222C6D6F7573656C656176653A226D6F7573656F7574222C706F696E746572656E7465723A22706F696E7465726F766572222C706F696E7465726C656176653A22706F696E7465726F7574227D2C66756E6374696F6E28612C62297B6E2E6576656E742E';
wwv_flow_api.g_varchar2_table(485) := '7370656369616C5B615D3D7B64656C6567617465547970653A622C62696E64547970653A622C68616E646C653A66756E6374696F6E2861297B76617220632C643D746869732C653D612E72656C617465645461726765742C663D612E68616E646C654F62';
wwv_flow_api.g_varchar2_table(486) := '6A3B72657475726E2065262628653D3D3D647C7C6E2E636F6E7461696E7328642C6529297C7C28612E747970653D662E6F726967547970652C633D662E68616E646C65722E6170706C7928746869732C617267756D656E7473292C612E747970653D6229';
wwv_flow_api.g_varchar2_table(487) := '2C637D7D7D292C6C2E7375626D69747C7C286E2E6576656E742E7370656369616C2E7375626D69743D7B73657475703A66756E6374696F6E28297B72657475726E206E2E6E6F64654E616D6528746869732C22666F726D22293F21313A766F6964206E2E';
wwv_flow_api.g_varchar2_table(488) := '6576656E742E61646428746869732C22636C69636B2E5F7375626D6974206B657970726573732E5F7375626D6974222C66756E6374696F6E2861297B76617220623D612E7461726765742C633D6E2E6E6F64654E616D6528622C22696E70757422297C7C';
wwv_flow_api.g_varchar2_table(489) := '6E2E6E6F64654E616D6528622C22627574746F6E22293F6E2E70726F7028622C22666F726D22293A766F696420303B632626216E2E5F6461746128632C227375626D697422292626286E2E6576656E742E61646428632C227375626D69742E5F7375626D';
wwv_flow_api.g_varchar2_table(490) := '6974222C66756E6374696F6E2861297B612E5F7375626D6974427562626C653D21307D292C6E2E5F6461746128632C227375626D6974222C213029297D297D2C706F737444697370617463683A66756E6374696F6E2861297B612E5F7375626D69744275';
wwv_flow_api.g_varchar2_table(491) := '62626C6526262864656C65746520612E5F7375626D6974427562626C652C746869732E706172656E744E6F6465262621612E69735472696767657226266E2E6576656E742E73696D756C61746528227375626D6974222C746869732E706172656E744E6F';
wwv_flow_api.g_varchar2_table(492) := '64652C6129297D2C74656172646F776E3A66756E6374696F6E28297B72657475726E206E2E6E6F64654E616D6528746869732C22666F726D22293F21313A766F6964206E2E6576656E742E72656D6F766528746869732C222E5F7375626D697422297D7D';
wwv_flow_api.g_varchar2_table(493) := '292C6C2E6368616E67657C7C286E2E6576656E742E7370656369616C2E6368616E67653D7B73657475703A66756E6374696F6E28297B72657475726E206B612E7465737428746869732E6E6F64654E616D65293F2822636865636B626F7822213D3D7468';
wwv_flow_api.g_varchar2_table(494) := '69732E74797065262622726164696F22213D3D746869732E747970657C7C286E2E6576656E742E61646428746869732C2270726F70657274796368616E67652E5F6368616E6765222C66756E6374696F6E2861297B22636865636B6564223D3D3D612E6F';
wwv_flow_api.g_varchar2_table(495) := '726967696E616C4576656E742E70726F70657274794E616D65262628746869732E5F6A7573744368616E6765643D2130297D292C6E2E6576656E742E61646428746869732C22636C69636B2E5F6368616E6765222C66756E6374696F6E2861297B746869';
wwv_flow_api.g_varchar2_table(496) := '732E5F6A7573744368616E676564262621612E697354726967676572262628746869732E5F6A7573744368616E6765643D2131292C6E2E6576656E742E73696D756C61746528226368616E6765222C746869732C61297D29292C2131293A766F6964206E';
wwv_flow_api.g_varchar2_table(497) := '2E6576656E742E61646428746869732C226265666F726561637469766174652E5F6368616E6765222C66756E6374696F6E2861297B76617220623D612E7461726765743B6B612E7465737428622E6E6F64654E616D65292626216E2E5F6461746128622C';
wwv_flow_api.g_varchar2_table(498) := '226368616E676522292626286E2E6576656E742E61646428622C226368616E67652E5F6368616E6765222C66756E6374696F6E2861297B21746869732E706172656E744E6F64657C7C612E697353696D756C617465647C7C612E6973547269676765727C';
wwv_flow_api.g_varchar2_table(499) := '7C6E2E6576656E742E73696D756C61746528226368616E6765222C746869732E706172656E744E6F64652C61297D292C6E2E5F6461746128622C226368616E6765222C213029297D297D2C68616E646C653A66756E6374696F6E2861297B76617220623D';
wwv_flow_api.g_varchar2_table(500) := '612E7461726765743B72657475726E2074686973213D3D627C7C612E697353696D756C617465647C7C612E6973547269676765727C7C22726164696F22213D3D622E74797065262622636865636B626F7822213D3D622E747970653F612E68616E646C65';
wwv_flow_api.g_varchar2_table(501) := '4F626A2E68616E646C65722E6170706C7928746869732C617267756D656E7473293A766F696420307D2C74656172646F776E3A66756E6374696F6E28297B72657475726E206E2E6576656E742E72656D6F766528746869732C222E5F6368616E67652229';
wwv_flow_api.g_varchar2_table(502) := '2C216B612E7465737428746869732E6E6F64654E616D65297D7D292C6C2E666F637573696E7C7C6E2E65616368287B666F6375733A22666F637573696E222C626C75723A22666F6375736F7574227D2C66756E6374696F6E28612C62297B76617220633D';
wwv_flow_api.g_varchar2_table(503) := '66756E6374696F6E2861297B6E2E6576656E742E73696D756C61746528622C612E7461726765742C6E2E6576656E742E666978286129297D3B6E2E6576656E742E7370656369616C5B625D3D7B73657475703A66756E6374696F6E28297B76617220643D';
wwv_flow_api.g_varchar2_table(504) := '746869732E6F776E6572446F63756D656E747C7C746869732C653D6E2E5F6461746128642C62293B657C7C642E6164644576656E744C697374656E657228612C632C2130292C6E2E5F6461746128642C622C28657C7C30292B31297D2C74656172646F77';
wwv_flow_api.g_varchar2_table(505) := '6E3A66756E6374696F6E28297B76617220643D746869732E6F776E6572446F63756D656E747C7C746869732C653D6E2E5F6461746128642C62292D313B653F6E2E5F6461746128642C622C65293A28642E72656D6F76654576656E744C697374656E6572';
wwv_flow_api.g_varchar2_table(506) := '28612C632C2130292C6E2E5F72656D6F76654461746128642C6229297D7D7D292C6E2E666E2E657874656E64287B6F6E3A66756E6374696F6E28612C622C632C64297B72657475726E20736128746869732C612C622C632C64297D2C6F6E653A66756E63';
wwv_flow_api.g_varchar2_table(507) := '74696F6E28612C622C632C64297B72657475726E20736128746869732C612C622C632C642C31297D2C6F66663A66756E6374696F6E28612C622C63297B76617220642C653B696628612626612E70726576656E7444656661756C742626612E68616E646C';
wwv_flow_api.g_varchar2_table(508) := '654F626A2972657475726E20643D612E68616E646C654F626A2C6E28612E64656C6567617465546172676574292E6F666628642E6E616D6573706163653F642E6F726967547970652B222E222B642E6E616D6573706163653A642E6F726967547970652C';
wwv_flow_api.g_varchar2_table(509) := '642E73656C6563746F722C642E68616E646C6572292C746869733B696628226F626A656374223D3D747970656F662061297B666F72286520696E206129746869732E6F666628652C622C615B655D293B72657475726E20746869737D72657475726E2062';
wwv_flow_api.g_varchar2_table(510) := '213D3D213126262266756E6374696F6E22213D747970656F6620627C7C28633D622C623D766F69642030292C633D3D3D2131262628633D7161292C746869732E656163682866756E6374696F6E28297B6E2E6576656E742E72656D6F766528746869732C';
wwv_flow_api.g_varchar2_table(511) := '612C632C62297D297D2C747269676765723A66756E6374696F6E28612C62297B72657475726E20746869732E656163682866756E6374696F6E28297B6E2E6576656E742E7472696767657228612C622C74686973297D297D2C7472696767657248616E64';
wwv_flow_api.g_varchar2_table(512) := '6C65723A66756E6374696F6E28612C62297B76617220633D746869735B305D3B72657475726E20633F6E2E6576656E742E7472696767657228612C622C632C2130293A766F696420307D7D293B7661722074613D2F206A51756572795C642B3D22283F3A';
wwv_flow_api.g_varchar2_table(513) := '6E756C6C7C5C642B29222F672C75613D6E65772052656745787028223C283F3A222B62612B22295B5C5C732F3E5D222C226922292C76613D2F3C283F21617265617C62727C636F6C7C656D6265647C68727C696D677C696E7075747C6C696E6B7C6D6574';
wwv_flow_api.g_varchar2_table(514) := '617C706172616D2928285B5C773A2D5D2B295B5E3E5D2A295C2F3E2F67692C77613D2F3C7363726970747C3C7374796C657C3C6C696E6B2F692C78613D2F636865636B65645C732A283F3A5B5E3D5D7C3D5C732A2E636865636B65642E292F692C79613D';
wwv_flow_api.g_varchar2_table(515) := '2F5E747275655C2F282E2A292F2C7A613D2F5E5C732A3C21283F3A5C5B43444154415C5B7C2D2D297C283F3A5C5D5C5D7C2D2D293E5C732A242F672C41613D63612864292C42613D41612E617070656E644368696C6428642E637265617465456C656D65';
wwv_flow_api.g_varchar2_table(516) := '6E7428226469762229293B66756E6374696F6E20436128612C62297B72657475726E206E2E6E6F64654E616D6528612C227461626C65222926266E2E6E6F64654E616D65283131213D3D622E6E6F6465547970653F623A622E66697273744368696C642C';
wwv_flow_api.g_varchar2_table(517) := '22747222293F612E676574456C656D656E747342795461674E616D65282274626F647922295B305D7C7C612E617070656E644368696C6428612E6F776E6572446F63756D656E742E637265617465456C656D656E74282274626F64792229293A617D6675';
wwv_flow_api.g_varchar2_table(518) := '6E6374696F6E2044612861297B72657475726E20612E747970653D286E756C6C213D3D6E2E66696E642E6174747228612C22747970652229292B222F222B612E747970652C617D66756E6374696F6E2045612861297B76617220623D79612E6578656328';
wwv_flow_api.g_varchar2_table(519) := '612E74797065293B72657475726E20623F612E747970653D625B315D3A612E72656D6F766541747472696275746528227479706522292C617D66756E6374696F6E20466128612C62297B696628313D3D3D622E6E6F64655479706526266E2E6861734461';
wwv_flow_api.g_varchar2_table(520) := '7461286129297B76617220632C642C652C663D6E2E5F646174612861292C673D6E2E5F6461746128622C66292C683D662E6576656E74733B69662868297B64656C65746520672E68616E646C652C672E6576656E74733D7B7D3B666F72286320696E2068';
wwv_flow_api.g_varchar2_table(521) := '29666F7228643D302C653D685B635D2E6C656E6774683B653E643B642B2B296E2E6576656E742E61646428622C632C685B635D5B645D297D672E64617461262628672E646174613D6E2E657874656E64287B7D2C672E6461746129297D7D66756E637469';
wwv_flow_api.g_varchar2_table(522) := '6F6E20476128612C62297B76617220632C642C653B696628313D3D3D622E6E6F646554797065297B696628633D622E6E6F64654E616D652E746F4C6F7765724361736528292C216C2E6E6F436C6F6E654576656E742626625B6E2E657870616E646F5D29';
wwv_flow_api.g_varchar2_table(523) := '7B653D6E2E5F646174612862293B666F72286420696E20652E6576656E7473296E2E72656D6F76654576656E7428622C642C652E68616E646C65293B622E72656D6F7665417474726962757465286E2E657870616E646F297D22736372697074223D3D3D';
wwv_flow_api.g_varchar2_table(524) := '632626622E74657874213D3D612E746578743F2844612862292E746578743D612E746578742C4561286229293A226F626A656374223D3D3D633F28622E706172656E744E6F6465262628622E6F7574657248544D4C3D612E6F7574657248544D4C292C6C';
wwv_flow_api.g_varchar2_table(525) := '2E68746D6C35436C6F6E652626612E696E6E657248544D4C2626216E2E7472696D28622E696E6E657248544D4C29262628622E696E6E657248544D4C3D612E696E6E657248544D4C29293A22696E707574223D3D3D6326265A2E7465737428612E747970';
wwv_flow_api.g_varchar2_table(526) := '65293F28622E64656661756C74436865636B65643D622E636865636B65643D612E636865636B65642C622E76616C7565213D3D612E76616C7565262628622E76616C75653D612E76616C756529293A226F7074696F6E223D3D3D633F622E64656661756C';
wwv_flow_api.g_varchar2_table(527) := '7453656C65637465643D622E73656C65637465643D612E64656661756C7453656C65637465643A22696E70757422213D3D63262622746578746172656122213D3D637C7C28622E64656661756C7456616C75653D612E64656661756C7456616C7565297D';
wwv_flow_api.g_varchar2_table(528) := '7D66756E6374696F6E20486128612C622C632C64297B623D662E6170706C79285B5D2C62293B76617220652C672C682C692C6A2C6B2C6D3D302C6F3D612E6C656E6774682C703D6F2D312C713D625B305D2C723D6E2E697346756E6374696F6E2871293B';
wwv_flow_api.g_varchar2_table(529) := '696628727C7C6F3E31262622737472696E67223D3D747970656F6620712626216C2E636865636B436C6F6E65262678612E746573742871292972657475726E20612E656163682866756E6374696F6E2865297B76617220663D612E65712865293B722626';
wwv_flow_api.g_varchar2_table(530) := '28625B305D3D712E63616C6C28746869732C652C662E68746D6C282929292C486128662C622C632C64297D293B6966286F2626286B3D6A6128622C615B305D2E6F776E6572446F63756D656E742C21312C612C64292C653D6B2E66697273744368696C64';
wwv_flow_api.g_varchar2_table(531) := '2C313D3D3D6B2E6368696C644E6F6465732E6C656E6774682626286B3D65292C657C7C6429297B666F7228693D6E2E6D6170286561286B2C2273637269707422292C4461292C683D692E6C656E6774683B6F3E6D3B6D2B2B29673D6B2C6D213D3D702626';
wwv_flow_api.g_varchar2_table(532) := '28673D6E2E636C6F6E6528672C21302C2130292C6826266E2E6D6572676528692C656128672C22736372697074222929292C632E63616C6C28615B6D5D2C672C6D293B6966286829666F72286A3D695B692E6C656E6774682D315D2E6F776E6572446F63';
wwv_flow_api.g_varchar2_table(533) := '756D656E742C6E2E6D617028692C4561292C6D3D303B683E6D3B6D2B2B29673D695B6D5D2C5F2E7465737428672E747970657C7C2222292626216E2E5F6461746128672C22676C6F62616C4576616C222926266E2E636F6E7461696E73286A2C67292626';
wwv_flow_api.g_varchar2_table(534) := '28672E7372633F6E2E5F6576616C55726C26266E2E5F6576616C55726C28672E737263293A6E2E676C6F62616C4576616C2828672E746578747C7C672E74657874436F6E74656E747C7C672E696E6E657248544D4C7C7C2222292E7265706C616365287A';
wwv_flow_api.g_varchar2_table(535) := '612C22222929293B6B3D653D6E756C6C7D72657475726E20617D66756E6374696F6E20496128612C622C63297B666F722876617220642C653D623F6E2E66696C74657228622C61293A612C663D303B6E756C6C213D28643D655B665D293B662B2B29637C';
wwv_flow_api.g_varchar2_table(536) := '7C31213D3D642E6E6F6465547970657C7C6E2E636C65616E44617461286561286429292C642E706172656E744E6F64652626286326266E2E636F6E7461696E7328642E6F776E6572446F63756D656E742C64292626666128656128642C22736372697074';
wwv_flow_api.g_varchar2_table(537) := '2229292C642E706172656E744E6F64652E72656D6F76654368696C64286429293B72657475726E20617D6E2E657874656E64287B68746D6C50726566696C7465723A66756E6374696F6E2861297B72657475726E20612E7265706C6163652876612C223C';
wwv_flow_api.g_varchar2_table(538) := '24313E3C2F24323E22297D2C636C6F6E653A66756E6374696F6E28612C622C63297B76617220642C652C662C672C682C693D6E2E636F6E7461696E7328612E6F776E6572446F63756D656E742C61293B6966286C2E68746D6C35436C6F6E657C7C6E2E69';
wwv_flow_api.g_varchar2_table(539) := '73584D4C446F632861297C7C2175612E7465737428223C222B612E6E6F64654E616D652B223E22293F663D612E636C6F6E654E6F6465282130293A2842612E696E6E657248544D4C3D612E6F7574657248544D4C2C42612E72656D6F76654368696C6428';
wwv_flow_api.g_varchar2_table(540) := '663D42612E66697273744368696C6429292C21286C2E6E6F436C6F6E654576656E7426266C2E6E6F436C6F6E65436865636B65647C7C31213D3D612E6E6F64655479706526263131213D3D612E6E6F6465547970657C7C6E2E6973584D4C446F63286129';
wwv_flow_api.g_varchar2_table(541) := '2929666F7228643D65612866292C683D65612861292C673D303B6E756C6C213D28653D685B675D293B2B2B6729645B675D2626476128652C645B675D293B69662862296966286329666F7228683D687C7C65612861292C643D647C7C65612866292C673D';
wwv_flow_api.g_varchar2_table(542) := '303B6E756C6C213D28653D685B675D293B672B2B29466128652C645B675D293B656C736520466128612C66293B72657475726E20643D656128662C2273637269707422292C642E6C656E6774683E302626666128642C21692626656128612C2273637269';
wwv_flow_api.g_varchar2_table(543) := '70742229292C643D683D653D6E756C6C2C667D2C636C65616E446174613A66756E6374696F6E28612C62297B666F722876617220642C652C662C672C683D302C693D6E2E657870616E646F2C6A3D6E2E63616368652C6B3D6C2E61747472696275746573';
wwv_flow_api.g_varchar2_table(544) := '2C6D3D6E2E6576656E742E7370656369616C3B6E756C6C213D28643D615B685D293B682B2B2969662828627C7C4D28642929262628663D645B695D2C673D6626266A5B665D29297B696628672E6576656E747329666F72286520696E20672E6576656E74';
wwv_flow_api.g_varchar2_table(545) := '73296D5B655D3F6E2E6576656E742E72656D6F766528642C65293A6E2E72656D6F76654576656E7428642C652C672E68616E646C65293B6A5B665D26262864656C657465206A5B665D2C6B7C7C22756E646566696E6564223D3D747970656F6620642E72';
wwv_flow_api.g_varchar2_table(546) := '656D6F76654174747269627574653F645B695D3D766F696420303A642E72656D6F76654174747269627574652869292C632E70757368286629297D7D7D292C6E2E666E2E657874656E64287B646F6D4D616E69703A48612C6465746163683A66756E6374';
wwv_flow_api.g_varchar2_table(547) := '696F6E2861297B72657475726E20496128746869732C612C2130297D2C72656D6F76653A66756E6374696F6E2861297B72657475726E20496128746869732C61297D2C746578743A66756E6374696F6E2861297B72657475726E205928746869732C6675';
wwv_flow_api.g_varchar2_table(548) := '6E6374696F6E2861297B72657475726E20766F696420303D3D3D613F6E2E746578742874686973293A746869732E656D70747928292E617070656E642828746869735B305D2626746869735B305D2E6F776E6572446F63756D656E747C7C64292E637265';
wwv_flow_api.g_varchar2_table(549) := '617465546578744E6F6465286129297D2C6E756C6C2C612C617267756D656E74732E6C656E677468297D2C617070656E643A66756E6374696F6E28297B72657475726E20486128746869732C617267756D656E74732C66756E6374696F6E2861297B6966';
wwv_flow_api.g_varchar2_table(550) := '28313D3D3D746869732E6E6F6465547970657C7C31313D3D3D746869732E6E6F6465547970657C7C393D3D3D746869732E6E6F646554797065297B76617220623D436128746869732C61293B622E617070656E644368696C642861297D7D297D2C707265';
wwv_flow_api.g_varchar2_table(551) := '70656E643A66756E6374696F6E28297B72657475726E20486128746869732C617267756D656E74732C66756E6374696F6E2861297B696628313D3D3D746869732E6E6F6465547970657C7C31313D3D3D746869732E6E6F6465547970657C7C393D3D3D74';
wwv_flow_api.g_varchar2_table(552) := '6869732E6E6F646554797065297B76617220623D436128746869732C61293B622E696E736572744265666F726528612C622E66697273744368696C64297D7D297D2C6265666F72653A66756E6374696F6E28297B72657475726E20486128746869732C61';
wwv_flow_api.g_varchar2_table(553) := '7267756D656E74732C66756E6374696F6E2861297B746869732E706172656E744E6F64652626746869732E706172656E744E6F64652E696E736572744265666F726528612C74686973297D297D2C61667465723A66756E6374696F6E28297B7265747572';
wwv_flow_api.g_varchar2_table(554) := '6E20486128746869732C617267756D656E74732C66756E6374696F6E2861297B746869732E706172656E744E6F64652626746869732E706172656E744E6F64652E696E736572744265666F726528612C746869732E6E6578745369626C696E67297D297D';
wwv_flow_api.g_varchar2_table(555) := '2C656D7074793A66756E6374696F6E28297B666F722876617220612C623D303B6E756C6C213D28613D746869735B625D293B622B2B297B313D3D3D612E6E6F64655479706526266E2E636C65616E4461746128656128612C213129293B7768696C652861';
wwv_flow_api.g_varchar2_table(556) := '2E66697273744368696C6429612E72656D6F76654368696C6428612E66697273744368696C64293B612E6F7074696F6E7326266E2E6E6F64654E616D6528612C2273656C6563742229262628612E6F7074696F6E732E6C656E6774683D30297D72657475';
wwv_flow_api.g_varchar2_table(557) := '726E20746869737D2C636C6F6E653A66756E6374696F6E28612C62297B72657475726E20613D6E756C6C3D3D613F21313A612C623D6E756C6C3D3D623F613A622C746869732E6D61702866756E6374696F6E28297B72657475726E206E2E636C6F6E6528';
wwv_flow_api.g_varchar2_table(558) := '746869732C612C62297D297D2C68746D6C3A66756E6374696F6E2861297B72657475726E205928746869732C66756E6374696F6E2861297B76617220623D746869735B305D7C7C7B7D2C633D302C643D746869732E6C656E6774683B696628766F696420';
wwv_flow_api.g_varchar2_table(559) := '303D3D3D612972657475726E20313D3D3D622E6E6F6465547970653F622E696E6E657248544D4C2E7265706C6163652874612C2222293A766F696420303B69662822737472696E67223D3D747970656F66206126262177612E746573742861292626286C';
wwv_flow_api.g_varchar2_table(560) := '2E68746D6C53657269616C697A657C7C2175612E74657374286129292626286C2E6C656164696E67576869746573706163657C7C2161612E746573742861292926262164615B28242E657865632861297C7C5B22222C22225D295B315D2E746F4C6F7765';
wwv_flow_api.g_varchar2_table(561) := '724361736528295D297B613D6E2E68746D6C50726566696C7465722861293B7472797B666F72283B643E633B632B2B29623D746869735B635D7C7C7B7D2C313D3D3D622E6E6F6465547970652626286E2E636C65616E4461746128656128622C21312929';
wwv_flow_api.g_varchar2_table(562) := '2C622E696E6E657248544D4C3D61293B623D307D63617463682865297B7D7D622626746869732E656D70747928292E617070656E642861297D2C6E756C6C2C612C617267756D656E74732E6C656E677468297D2C7265706C616365576974683A66756E63';
wwv_flow_api.g_varchar2_table(563) := '74696F6E28297B76617220613D5B5D3B72657475726E20486128746869732C617267756D656E74732C66756E6374696F6E2862297B76617220633D746869732E706172656E744E6F64653B6E2E696E417272617928746869732C61293C302626286E2E63';
wwv_flow_api.g_varchar2_table(564) := '6C65616E44617461286561287468697329292C632626632E7265706C6163654368696C6428622C7468697329297D2C61297D7D292C6E2E65616368287B617070656E64546F3A22617070656E64222C70726570656E64546F3A2270726570656E64222C69';
wwv_flow_api.g_varchar2_table(565) := '6E736572744265666F72653A226265666F7265222C696E7365727441667465723A226166746572222C7265706C616365416C6C3A227265706C61636557697468227D2C66756E6374696F6E28612C62297B6E2E666E5B615D3D66756E6374696F6E286129';
wwv_flow_api.g_varchar2_table(566) := '7B666F722876617220632C643D302C653D5B5D2C663D6E2861292C683D662E6C656E6774682D313B683E3D643B642B2B29633D643D3D3D683F746869733A746869732E636C6F6E65282130292C6E28665B645D295B625D2863292C672E6170706C792865';
wwv_flow_api.g_varchar2_table(567) := '2C632E6765742829293B72657475726E20746869732E70757368537461636B2865297D7D293B766172204A612C4B613D7B48544D4C3A22626C6F636B222C424F44593A22626C6F636B227D3B66756E6374696F6E204C6128612C62297B76617220633D6E';
wwv_flow_api.g_varchar2_table(568) := '28622E637265617465456C656D656E74286129292E617070656E64546F28622E626F6479292C643D6E2E63737328635B305D2C22646973706C617922293B72657475726E20632E64657461636828292C647D66756E6374696F6E204D612861297B766172';
wwv_flow_api.g_varchar2_table(569) := '20623D642C633D4B615B615D3B72657475726E20637C7C28633D4C6128612C62292C226E6F6E6522213D3D632626637C7C284A613D284A617C7C6E28223C696672616D65206672616D65626F726465723D2730272077696474683D273027206865696768';
wwv_flow_api.g_varchar2_table(570) := '743D2730272F3E2229292E617070656E64546F28622E646F63756D656E74456C656D656E74292C623D284A615B305D2E636F6E74656E7457696E646F777C7C4A615B305D2E636F6E74656E74446F63756D656E74292E646F63756D656E742C622E777269';
wwv_flow_api.g_varchar2_table(571) := '746528292C622E636C6F736528292C633D4C6128612C62292C4A612E6465746163682829292C4B615B615D3D63292C637D766172204E613D2F5E6D617267696E2F2C4F613D6E65772052656745787028225E28222B542B2229283F217078295B612D7A25';
wwv_flow_api.g_varchar2_table(572) := '5D2B24222C226922292C50613D66756E6374696F6E28612C622C632C64297B76617220652C662C673D7B7D3B666F72286620696E206229675B665D3D612E7374796C655B665D2C612E7374796C655B665D3D625B665D3B653D632E6170706C7928612C64';
wwv_flow_api.g_varchar2_table(573) := '7C7C5B5D293B666F72286620696E206229612E7374796C655B665D3D675B665D3B72657475726E20657D2C51613D642E646F63756D656E74456C656D656E743B2166756E6374696F6E28297B76617220622C632C652C662C672C682C693D642E63726561';
wwv_flow_api.g_varchar2_table(574) := '7465456C656D656E74282264697622292C6A3D642E637265617465456C656D656E74282264697622293B6966286A2E7374796C65297B6A2E7374796C652E637373546578743D22666C6F61743A6C6566743B6F7061636974793A2E35222C6C2E6F706163';
wwv_flow_api.g_varchar2_table(575) := '6974793D22302E35223D3D3D6A2E7374796C652E6F7061636974792C6C2E637373466C6F61743D21216A2E7374796C652E637373466C6F61742C6A2E7374796C652E6261636B67726F756E64436C69703D22636F6E74656E742D626F78222C6A2E636C6F';
wwv_flow_api.g_varchar2_table(576) := '6E654E6F6465282130292E7374796C652E6261636B67726F756E64436C69703D22222C6C2E636C656172436C6F6E655374796C653D22636F6E74656E742D626F78223D3D3D6A2E7374796C652E6261636B67726F756E64436C69702C693D642E63726561';
wwv_flow_api.g_varchar2_table(577) := '7465456C656D656E74282264697622292C692E7374796C652E637373546578743D22626F726465723A303B77696474683A3870783B6865696768743A303B746F703A303B6C6566743A2D3939393970783B70616464696E673A303B6D617267696E2D746F';
wwv_flow_api.g_varchar2_table(578) := '703A3170783B706F736974696F6E3A6162736F6C757465222C6A2E696E6E657248544D4C3D22222C692E617070656E644368696C64286A292C6C2E626F7853697A696E673D22223D3D3D6A2E7374796C652E626F7853697A696E677C7C22223D3D3D6A2E';
wwv_flow_api.g_varchar2_table(579) := '7374796C652E4D6F7A426F7853697A696E677C7C22223D3D3D6A2E7374796C652E5765626B6974426F7853697A696E672C6E2E657874656E64286C2C7B72656C6961626C6548696464656E4F6666736574733A66756E6374696F6E28297B72657475726E';
wwv_flow_api.g_varchar2_table(580) := '206E756C6C3D3D6226266B28292C667D2C626F7853697A696E6752656C6961626C653A66756E6374696F6E28297B72657475726E206E756C6C3D3D6226266B28292C657D2C706978656C4D617267696E52696768743A66756E6374696F6E28297B726574';
wwv_flow_api.g_varchar2_table(581) := '75726E206E756C6C3D3D6226266B28292C637D2C706978656C506F736974696F6E3A66756E6374696F6E28297B72657475726E206E756C6C3D3D6226266B28292C627D2C72656C6961626C654D617267696E52696768743A66756E6374696F6E28297B72';
wwv_flow_api.g_varchar2_table(582) := '657475726E206E756C6C3D3D6226266B28292C677D2C72656C6961626C654D617267696E4C6566743A66756E6374696F6E28297B72657475726E206E756C6C3D3D6226266B28292C687D7D293B66756E6374696F6E206B28297B766172206B2C6C2C6D3D';
wwv_flow_api.g_varchar2_table(583) := '642E646F63756D656E74456C656D656E743B6D2E617070656E644368696C642869292C6A2E7374796C652E637373546578743D222D7765626B69742D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E673A626F726465722D';
wwv_flow_api.g_varchar2_table(584) := '626F783B706F736974696F6E3A72656C61746976653B646973706C61793A626C6F636B3B6D617267696E3A6175746F3B626F726465723A3170783B70616464696E673A3170783B746F703A31253B77696474683A353025222C623D653D683D21312C633D';
wwv_flow_api.g_varchar2_table(585) := '673D21302C612E676574436F6D70757465645374796C652626286C3D612E676574436F6D70757465645374796C65286A292C623D22312522213D3D286C7C7C7B7D292E746F702C683D22327078223D3D3D286C7C7C7B7D292E6D617267696E4C6566742C';
wwv_flow_api.g_varchar2_table(586) := '653D22347078223D3D3D286C7C7C7B77696474683A22347078227D292E77696474682C6A2E7374796C652E6D617267696E52696768743D22353025222C633D22347078223D3D3D286C7C7C7B6D617267696E52696768743A22347078227D292E6D617267';
wwv_flow_api.g_varchar2_table(587) := '696E52696768742C6B3D6A2E617070656E644368696C6428642E637265617465456C656D656E7428226469762229292C6B2E7374796C652E637373546578743D6A2E7374796C652E637373546578743D222D7765626B69742D626F782D73697A696E673A';
wwv_flow_api.g_varchar2_table(588) := '636F6E74656E742D626F783B2D6D6F7A2D626F782D73697A696E673A636F6E74656E742D626F783B626F782D73697A696E673A636F6E74656E742D626F783B646973706C61793A626C6F636B3B6D617267696E3A303B626F726465723A303B7061646469';
wwv_flow_api.g_varchar2_table(589) := '6E673A30222C6B2E7374796C652E6D617267696E52696768743D6B2E7374796C652E77696474683D2230222C6A2E7374796C652E77696474683D22317078222C673D217061727365466C6F61742828612E676574436F6D70757465645374796C65286B29';
wwv_flow_api.g_varchar2_table(590) := '7C7C7B7D292E6D617267696E5269676874292C6A2E72656D6F76654368696C64286B29292C6A2E7374796C652E646973706C61793D226E6F6E65222C663D303D3D3D6A2E676574436C69656E74526563747328292E6C656E6774682C662626286A2E7374';
wwv_flow_api.g_varchar2_table(591) := '796C652E646973706C61793D22222C6A2E696E6E657248544D4C3D223C7461626C653E3C74723E3C74643E3C2F74643E3C74643E743C2F74643E3C2F74723E3C2F7461626C653E222C6A2E6368696C644E6F6465735B305D2E7374796C652E626F726465';
wwv_flow_api.g_varchar2_table(592) := '72436F6C6C617073653D227365706172617465222C6B3D6A2E676574456C656D656E747342795461674E616D652822746422292C6B5B305D2E7374796C652E637373546578743D226D617267696E3A303B626F726465723A303B70616464696E673A303B';
wwv_flow_api.g_varchar2_table(593) := '646973706C61793A6E6F6E65222C663D303D3D3D6B5B305D2E6F66667365744865696768742C662626286B5B305D2E7374796C652E646973706C61793D22222C6B5B315D2E7374796C652E646973706C61793D226E6F6E65222C663D303D3D3D6B5B305D';
wwv_flow_api.g_varchar2_table(594) := '2E6F666673657448656967687429292C6D2E72656D6F76654368696C642869297D7D7D28293B7661722052612C53612C54613D2F5E28746F707C72696768747C626F74746F6D7C6C65667429242F3B612E676574436F6D70757465645374796C653F2852';
wwv_flow_api.g_varchar2_table(595) := '613D66756E6374696F6E2862297B76617220633D622E6F776E6572446F63756D656E742E64656661756C74566965773B72657475726E20632626632E6F70656E65727C7C28633D61292C632E676574436F6D70757465645374796C652862297D2C53613D';
wwv_flow_api.g_varchar2_table(596) := '66756E6374696F6E28612C622C63297B76617220642C652C662C672C683D612E7374796C653B72657475726E20633D637C7C52612861292C673D633F632E67657450726F706572747956616C75652862297C7C635B625D3A766F696420302C2222213D3D';
wwv_flow_api.g_varchar2_table(597) := '672626766F69642030213D3D677C7C6E2E636F6E7461696E7328612E6F776E6572446F63756D656E742C61297C7C28673D6E2E7374796C6528612C6229292C632626216C2E706978656C4D617267696E5269676874282926264F612E7465737428672926';
wwv_flow_api.g_varchar2_table(598) := '264E612E74657374286229262628643D682E77696474682C653D682E6D696E57696474682C663D682E6D617857696474682C682E6D696E57696474683D682E6D617857696474683D682E77696474683D672C673D632E77696474682C682E77696474683D';
wwv_flow_api.g_varchar2_table(599) := '642C682E6D696E57696474683D652C682E6D617857696474683D66292C766F696420303D3D3D673F673A672B22227D293A51612E63757272656E745374796C6526262852613D66756E6374696F6E2861297B72657475726E20612E63757272656E745374';
wwv_flow_api.g_varchar2_table(600) := '796C657D2C53613D66756E6374696F6E28612C622C63297B76617220642C652C662C672C683D612E7374796C653B72657475726E20633D637C7C52612861292C673D633F635B625D3A766F696420302C6E756C6C3D3D672626682626685B625D26262867';
wwv_flow_api.g_varchar2_table(601) := '3D685B625D292C4F612E7465737428672926262154612E74657374286229262628643D682E6C6566742C653D612E72756E74696D655374796C652C663D652626652E6C6566742C66262628652E6C6566743D612E63757272656E745374796C652E6C6566';
wwv_flow_api.g_varchar2_table(602) := '74292C682E6C6566743D22666F6E7453697A65223D3D3D623F2231656D223A672C673D682E706978656C4C6566742B227078222C682E6C6566743D642C66262628652E6C6566743D6629292C766F696420303D3D3D673F673A672B22227C7C226175746F';
wwv_flow_api.g_varchar2_table(603) := '227D293B66756E6374696F6E20556128612C62297B72657475726E7B6765743A66756E6374696F6E28297B72657475726E206128293F766F69642064656C65746520746869732E6765743A28746869732E6765743D62292E6170706C7928746869732C61';
wwv_flow_api.g_varchar2_table(604) := '7267756D656E7473297D7D7D7661722056613D2F616C7068615C285B5E295D2A5C292F692C57613D2F6F7061636974795C732A3D5C732A285B5E295D2A292F692C58613D2F5E286E6F6E657C7461626C65283F212D635B65615D292E2B292F2C59613D6E';
wwv_flow_api.g_varchar2_table(605) := '65772052656745787028225E28222B542B2229282E2A2924222C226922292C5A613D7B706F736974696F6E3A226162736F6C757465222C7669736962696C6974793A2268696464656E222C646973706C61793A22626C6F636B227D2C24613D7B6C657474';
wwv_flow_api.g_varchar2_table(606) := '657253706163696E673A2230222C666F6E745765696768743A22343030227D2C5F613D5B225765626B6974222C224F222C224D6F7A222C226D73225D2C61623D642E637265617465456C656D656E74282264697622292E7374796C653B66756E6374696F';
wwv_flow_api.g_varchar2_table(607) := '6E2062622861297B6966286120696E2061622972657475726E20613B76617220623D612E6368617241742830292E746F55707065724361736528292B612E736C6963652831292C633D5F612E6C656E6774683B7768696C6528632D2D29696628613D5F61';
wwv_flow_api.g_varchar2_table(608) := '5B635D2B622C6120696E2061622972657475726E20617D66756E6374696F6E20636228612C62297B666F722876617220632C642C652C663D5B5D2C673D302C683D612E6C656E6774683B683E673B672B2B29643D615B675D2C642E7374796C6526262866';
wwv_flow_api.g_varchar2_table(609) := '5B675D3D6E2E5F6461746128642C226F6C64646973706C617922292C633D642E7374796C652E646973706C61792C623F28665B675D7C7C226E6F6E6522213D3D637C7C28642E7374796C652E646973706C61793D2222292C22223D3D3D642E7374796C65';
wwv_flow_api.g_varchar2_table(610) := '2E646973706C6179262657286429262628665B675D3D6E2E5F6461746128642C226F6C64646973706C6179222C4D6128642E6E6F64654E616D65292929293A28653D572864292C28632626226E6F6E6522213D3D637C7C21652926266E2E5F6461746128';
wwv_flow_api.g_varchar2_table(611) := '642C226F6C64646973706C6179222C653F633A6E2E63737328642C22646973706C617922292929293B666F7228673D303B683E673B672B2B29643D615B675D2C642E7374796C65262628622626226E6F6E6522213D3D642E7374796C652E646973706C61';
wwv_flow_api.g_varchar2_table(612) := '7926262222213D3D642E7374796C652E646973706C61797C7C28642E7374796C652E646973706C61793D623F665B675D7C7C22223A226E6F6E652229293B72657475726E20617D66756E6374696F6E20646228612C622C63297B76617220643D59612E65';
wwv_flow_api.g_varchar2_table(613) := '7865632862293B72657475726E20643F4D6174682E6D617828302C645B315D2D28637C7C3029292B28645B325D7C7C22707822293A627D66756E6374696F6E20656228612C622C632C642C65297B666F722876617220663D633D3D3D28643F22626F7264';
wwv_flow_api.g_varchar2_table(614) := '6572223A22636F6E74656E7422293F343A227769647468223D3D3D623F313A302C673D303B343E663B662B3D3229226D617267696E223D3D3D63262628672B3D6E2E63737328612C632B565B665D2C21302C6529292C643F2822636F6E74656E74223D3D';
wwv_flow_api.g_varchar2_table(615) := '3D63262628672D3D6E2E63737328612C2270616464696E67222B565B665D2C21302C6529292C226D617267696E22213D3D63262628672D3D6E2E63737328612C22626F72646572222B565B665D2B225769647468222C21302C652929293A28672B3D6E2E';
wwv_flow_api.g_varchar2_table(616) := '63737328612C2270616464696E67222B565B665D2C21302C65292C2270616464696E6722213D3D63262628672B3D6E2E63737328612C22626F72646572222B565B665D2B225769647468222C21302C652929293B72657475726E20677D66756E6374696F';
wwv_flow_api.g_varchar2_table(617) := '6E20666228612C622C63297B76617220643D21302C653D227769647468223D3D3D623F612E6F666673657457696474683A612E6F66667365744865696768742C663D52612861292C673D6C2E626F7853697A696E67262622626F726465722D626F78223D';
wwv_flow_api.g_varchar2_table(618) := '3D3D6E2E63737328612C22626F7853697A696E67222C21312C66293B696628303E3D657C7C6E756C6C3D3D65297B696628653D536128612C622C66292C28303E657C7C6E756C6C3D3D6529262628653D612E7374796C655B625D292C4F612E7465737428';
wwv_flow_api.g_varchar2_table(619) := '65292972657475726E20653B643D672626286C2E626F7853697A696E6752656C6961626C6528297C7C653D3D3D612E7374796C655B625D292C653D7061727365466C6F61742865297C7C307D72657475726E20652B656228612C622C637C7C28673F2262';
wwv_flow_api.g_varchar2_table(620) := '6F72646572223A22636F6E74656E7422292C642C66292B227078227D6E2E657874656E64287B637373486F6F6B733A7B6F7061636974793A7B6765743A66756E6374696F6E28612C62297B69662862297B76617220633D536128612C226F706163697479';
wwv_flow_api.g_varchar2_table(621) := '22293B72657475726E22223D3D3D633F2231223A637D7D7D7D2C6373734E756D6265723A7B616E696D6174696F6E497465726174696F6E436F756E743A21302C636F6C756D6E436F756E743A21302C66696C6C4F7061636974793A21302C666C65784772';
wwv_flow_api.g_varchar2_table(622) := '6F773A21302C666C6578536872696E6B3A21302C666F6E745765696768743A21302C6C696E654865696768743A21302C6F7061636974793A21302C6F726465723A21302C6F727068616E733A21302C7769646F77733A21302C7A496E6465783A21302C7A';
wwv_flow_api.g_varchar2_table(623) := '6F6F6D3A21307D2C63737350726F70733A7B22666C6F6174223A6C2E637373466C6F61743F22637373466C6F6174223A227374796C65466C6F6174227D2C7374796C653A66756E6374696F6E28612C622C632C64297B69662861262633213D3D612E6E6F';
wwv_flow_api.g_varchar2_table(624) := '646554797065262638213D3D612E6E6F6465547970652626612E7374796C65297B76617220652C662C672C683D6E2E63616D656C436173652862292C693D612E7374796C653B696628623D6E2E63737350726F70735B685D7C7C286E2E63737350726F70';
wwv_flow_api.g_varchar2_table(625) := '735B685D3D62622868297C7C68292C673D6E2E637373486F6F6B735B625D7C7C6E2E637373486F6F6B735B685D2C766F696420303D3D3D632972657475726E206726262267657422696E20672626766F69642030213D3D28653D672E67657428612C2131';
wwv_flow_api.g_varchar2_table(626) := '2C6429293F653A695B625D3B696628663D747970656F6620632C22737472696E67223D3D3D66262628653D552E65786563286329292626655B315D262628633D5828612C622C65292C663D226E756D62657222292C6E756C6C213D632626633D3D3D6326';
wwv_flow_api.g_varchar2_table(627) := '2628226E756D626572223D3D3D66262628632B3D652626655B335D7C7C286E2E6373734E756D6265725B685D3F22223A2270782229292C6C2E636C656172436C6F6E655374796C657C7C2222213D3D637C7C30213D3D622E696E6465784F662822626163';
wwv_flow_api.g_varchar2_table(628) := '6B67726F756E6422297C7C28695B625D3D22696E686572697422292C21286726262273657422696E20672626766F696420303D3D3D28633D672E73657428612C632C6429292929297472797B695B625D3D637D6361746368286A297B7D7D7D2C6373733A';
wwv_flow_api.g_varchar2_table(629) := '66756E6374696F6E28612C622C632C64297B76617220652C662C672C683D6E2E63616D656C436173652862293B72657475726E20623D6E2E63737350726F70735B685D7C7C286E2E63737350726F70735B685D3D62622868297C7C68292C673D6E2E6373';
wwv_flow_api.g_varchar2_table(630) := '73486F6F6B735B625D7C7C6E2E637373486F6F6B735B685D2C6726262267657422696E2067262628663D672E67657428612C21302C6329292C766F696420303D3D3D66262628663D536128612C622C6429292C226E6F726D616C223D3D3D662626622069';
wwv_flow_api.g_varchar2_table(631) := '6E202461262628663D24615B625D292C22223D3D3D637C7C633F28653D7061727365466C6F61742866292C633D3D3D21307C7C697346696E6974652865293F657C7C303A66293A667D7D292C6E2E65616368285B22686569676874222C22776964746822';
wwv_flow_api.g_varchar2_table(632) := '5D2C66756E6374696F6E28612C62297B6E2E637373486F6F6B735B625D3D7B6765743A66756E6374696F6E28612C632C64297B72657475726E20633F58612E74657374286E2E63737328612C22646973706C61792229292626303D3D3D612E6F66667365';
wwv_flow_api.g_varchar2_table(633) := '7457696474683F506128612C5A612C66756E6374696F6E28297B72657475726E20666228612C622C64297D293A666228612C622C64293A766F696420307D2C7365743A66756E6374696F6E28612C632C64297B76617220653D64262652612861293B7265';
wwv_flow_api.g_varchar2_table(634) := '7475726E20646228612C632C643F656228612C622C642C6C2E626F7853697A696E67262622626F726465722D626F78223D3D3D6E2E63737328612C22626F7853697A696E67222C21312C65292C65293A30297D7D7D292C6C2E6F7061636974797C7C286E';
wwv_flow_api.g_varchar2_table(635) := '2E637373486F6F6B732E6F7061636974793D7B6765743A66756E6374696F6E28612C62297B72657475726E2057612E746573742828622626612E63757272656E745374796C653F612E63757272656E745374796C652E66696C7465723A612E7374796C65';
wwv_flow_api.g_varchar2_table(636) := '2E66696C746572297C7C2222293F2E30312A7061727365466C6F6174285265674578702E2431292B22223A623F2231223A22227D2C7365743A66756E6374696F6E28612C62297B76617220633D612E7374796C652C643D612E63757272656E745374796C';
wwv_flow_api.g_varchar2_table(637) := '652C653D6E2E69734E756D657269632862293F22616C706861286F7061636974793D222B3130302A622B2229223A22222C663D642626642E66696C7465727C7C632E66696C7465727C7C22223B632E7A6F6F6D3D312C28623E3D317C7C22223D3D3D6229';
wwv_flow_api.g_varchar2_table(638) := '262622223D3D3D6E2E7472696D28662E7265706C6163652856612C222229292626632E72656D6F7665417474726962757465262628632E72656D6F7665417474726962757465282266696C74657222292C22223D3D3D627C7C64262621642E66696C7465';
wwv_flow_api.g_varchar2_table(639) := '72297C7C28632E66696C7465723D56612E746573742866293F662E7265706C6163652856612C65293A662B2220222B65297D7D292C6E2E637373486F6F6B732E6D617267696E52696768743D5561286C2E72656C6961626C654D617267696E5269676874';
wwv_flow_api.g_varchar2_table(640) := '2C66756E6374696F6E28612C62297B72657475726E20623F506128612C7B646973706C61793A22696E6C696E652D626C6F636B227D2C53612C5B612C226D617267696E5269676874225D293A766F696420307D292C6E2E637373486F6F6B732E6D617267';
wwv_flow_api.g_varchar2_table(641) := '696E4C6566743D5561286C2E72656C6961626C654D617267696E4C6566742C66756E6374696F6E28612C62297B72657475726E20623F287061727365466C6F617428536128612C226D617267696E4C6566742229297C7C286E2E636F6E7461696E732861';
wwv_flow_api.g_varchar2_table(642) := '2E6F776E6572446F63756D656E742C61293F612E676574426F756E64696E67436C69656E745265637428292E6C6566742D506128612C7B0A6D617267696E4C6566743A307D2C66756E6374696F6E28297B72657475726E20612E676574426F756E64696E';
wwv_flow_api.g_varchar2_table(643) := '67436C69656E745265637428292E6C6566747D293A3029292B227078223A766F696420307D292C6E2E65616368287B6D617267696E3A22222C70616464696E673A22222C626F726465723A225769647468227D2C66756E6374696F6E28612C62297B6E2E';
wwv_flow_api.g_varchar2_table(644) := '637373486F6F6B735B612B625D3D7B657870616E643A66756E6374696F6E2863297B666F722876617220643D302C653D7B7D2C663D22737472696E67223D3D747970656F6620633F632E73706C697428222022293A5B635D3B343E643B642B2B29655B61';
wwv_flow_api.g_varchar2_table(645) := '2B565B645D2B625D3D665B645D7C7C665B642D325D7C7C665B305D3B72657475726E20657D7D2C4E612E746573742861297C7C286E2E637373486F6F6B735B612B625D2E7365743D6462297D292C6E2E666E2E657874656E64287B6373733A66756E6374';
wwv_flow_api.g_varchar2_table(646) := '696F6E28612C62297B72657475726E205928746869732C66756E6374696F6E28612C622C63297B76617220642C652C663D7B7D2C673D303B6966286E2E69734172726179286229297B666F7228643D52612861292C653D622E6C656E6774683B653E673B';
wwv_flow_api.g_varchar2_table(647) := '672B2B29665B625B675D5D3D6E2E63737328612C625B675D2C21312C64293B72657475726E20667D72657475726E20766F69642030213D3D633F6E2E7374796C6528612C622C63293A6E2E63737328612C62297D2C612C622C617267756D656E74732E6C';
wwv_flow_api.g_varchar2_table(648) := '656E6774683E31297D2C73686F773A66756E6374696F6E28297B72657475726E20636228746869732C2130297D2C686964653A66756E6374696F6E28297B72657475726E2063622874686973297D2C746F67676C653A66756E6374696F6E2861297B7265';
wwv_flow_api.g_varchar2_table(649) := '7475726E22626F6F6C65616E223D3D747970656F6620613F613F746869732E73686F7728293A746869732E6869646528293A746869732E656163682866756E6374696F6E28297B572874686973293F6E2874686973292E73686F7728293A6E2874686973';
wwv_flow_api.g_varchar2_table(650) := '292E6869646528297D297D7D293B66756E6374696F6E20676228612C622C632C642C65297B72657475726E206E65772067622E70726F746F747970652E696E697428612C622C632C642C65297D6E2E547765656E3D67622C67622E70726F746F74797065';
wwv_flow_api.g_varchar2_table(651) := '3D7B636F6E7374727563746F723A67622C696E69743A66756E6374696F6E28612C622C632C642C652C66297B746869732E656C656D3D612C746869732E70726F703D632C746869732E656173696E673D657C7C6E2E656173696E672E5F64656661756C74';
wwv_flow_api.g_varchar2_table(652) := '2C746869732E6F7074696F6E733D622C746869732E73746172743D746869732E6E6F773D746869732E63757228292C746869732E656E643D642C746869732E756E69743D667C7C286E2E6373734E756D6265725B635D3F22223A22707822297D2C637572';
wwv_flow_api.g_varchar2_table(653) := '3A66756E6374696F6E28297B76617220613D67622E70726F70486F6F6B735B746869732E70726F705D3B72657475726E20612626612E6765743F612E6765742874686973293A67622E70726F70486F6F6B732E5F64656661756C742E6765742874686973';
wwv_flow_api.g_varchar2_table(654) := '297D2C72756E3A66756E6374696F6E2861297B76617220622C633D67622E70726F70486F6F6B735B746869732E70726F705D3B72657475726E20746869732E6F7074696F6E732E6475726174696F6E3F746869732E706F733D623D6E2E656173696E675B';
wwv_flow_api.g_varchar2_table(655) := '746869732E656173696E675D28612C746869732E6F7074696F6E732E6475726174696F6E2A612C302C312C746869732E6F7074696F6E732E6475726174696F6E293A746869732E706F733D623D612C746869732E6E6F773D28746869732E656E642D7468';
wwv_flow_api.g_varchar2_table(656) := '69732E7374617274292A622B746869732E73746172742C746869732E6F7074696F6E732E737465702626746869732E6F7074696F6E732E737465702E63616C6C28746869732E656C656D2C746869732E6E6F772C74686973292C632626632E7365743F63';
wwv_flow_api.g_varchar2_table(657) := '2E7365742874686973293A67622E70726F70486F6F6B732E5F64656661756C742E7365742874686973292C746869737D7D2C67622E70726F746F747970652E696E69742E70726F746F747970653D67622E70726F746F747970652C67622E70726F70486F';
wwv_flow_api.g_varchar2_table(658) := '6F6B733D7B5F64656661756C743A7B6765743A66756E6374696F6E2861297B76617220623B72657475726E2031213D3D612E656C656D2E6E6F6465547970657C7C6E756C6C213D612E656C656D5B612E70726F705D26266E756C6C3D3D612E656C656D2E';
wwv_flow_api.g_varchar2_table(659) := '7374796C655B612E70726F705D3F612E656C656D5B612E70726F705D3A28623D6E2E63737328612E656C656D2C612E70726F702C2222292C622626226175746F22213D3D623F623A30297D2C7365743A66756E6374696F6E2861297B6E2E66782E737465';
wwv_flow_api.g_varchar2_table(660) := '705B612E70726F705D3F6E2E66782E737465705B612E70726F705D2861293A31213D3D612E656C656D2E6E6F6465547970657C7C6E756C6C3D3D612E656C656D2E7374796C655B6E2E63737350726F70735B612E70726F705D5D2626216E2E637373486F';
wwv_flow_api.g_varchar2_table(661) := '6F6B735B612E70726F705D3F612E656C656D5B612E70726F705D3D612E6E6F773A6E2E7374796C6528612E656C656D2C612E70726F702C612E6E6F772B612E756E6974297D7D7D2C67622E70726F70486F6F6B732E7363726F6C6C546F703D67622E7072';
wwv_flow_api.g_varchar2_table(662) := '6F70486F6F6B732E7363726F6C6C4C6566743D7B7365743A66756E6374696F6E2861297B612E656C656D2E6E6F6465547970652626612E656C656D2E706172656E744E6F6465262628612E656C656D5B612E70726F705D3D612E6E6F77297D7D2C6E2E65';
wwv_flow_api.g_varchar2_table(663) := '6173696E673D7B6C696E6561723A66756E6374696F6E2861297B72657475726E20617D2C7377696E673A66756E6374696F6E2861297B72657475726E2E352D4D6174682E636F7328612A4D6174682E5049292F327D2C5F64656661756C743A227377696E';
wwv_flow_api.g_varchar2_table(664) := '67227D2C6E2E66783D67622E70726F746F747970652E696E69742C6E2E66782E737465703D7B7D3B7661722068622C69622C6A623D2F5E283F3A746F67676C657C73686F777C6869646529242F2C6B623D2F7175657565486F6F6B73242F3B66756E6374';
wwv_flow_api.g_varchar2_table(665) := '696F6E206C6228297B72657475726E20612E73657454696D656F75742866756E6374696F6E28297B68623D766F696420307D292C68623D6E2E6E6F7728297D66756E6374696F6E206D6228612C62297B76617220632C643D7B6865696768743A617D2C65';
wwv_flow_api.g_varchar2_table(666) := '3D303B666F7228623D623F313A303B343E653B652B3D322D6229633D565B655D2C645B226D617267696E222B635D3D645B2270616464696E67222B635D3D613B72657475726E2062262628642E6F7061636974793D642E77696474683D61292C647D6675';
wwv_flow_api.g_varchar2_table(667) := '6E6374696F6E206E6228612C622C63297B666F722876617220642C653D2871622E747765656E6572735B625D7C7C5B5D292E636F6E6361742871622E747765656E6572735B222A225D292C663D302C673D652E6C656E6774683B673E663B662B2B296966';
wwv_flow_api.g_varchar2_table(668) := '28643D655B665D2E63616C6C28632C622C61292972657475726E20647D66756E6374696F6E206F6228612C622C63297B76617220642C652C662C672C682C692C6A2C6B2C6D3D746869732C6F3D7B7D2C703D612E7374796C652C713D612E6E6F64655479';
wwv_flow_api.g_varchar2_table(669) := '70652626572861292C723D6E2E5F6461746128612C22667873686F7722293B632E71756575657C7C28683D6E2E5F7175657565486F6F6B7328612C22667822292C6E756C6C3D3D682E756E717565756564262628682E756E7175657565643D302C693D68';
wwv_flow_api.g_varchar2_table(670) := '2E656D7074792E666972652C682E656D7074792E666972653D66756E6374696F6E28297B682E756E7175657565647C7C6928297D292C682E756E7175657565642B2B2C6D2E616C776179732866756E6374696F6E28297B6D2E616C776179732866756E63';
wwv_flow_api.g_varchar2_table(671) := '74696F6E28297B682E756E7175657565642D2D2C6E2E717565756528612C22667822292E6C656E6774687C7C682E656D7074792E6669726528297D297D29292C313D3D3D612E6E6F6465547970652626282268656967687422696E20627C7C2277696474';
wwv_flow_api.g_varchar2_table(672) := '6822696E206229262628632E6F766572666C6F773D5B702E6F766572666C6F772C702E6F766572666C6F77582C702E6F766572666C6F77595D2C6A3D6E2E63737328612C22646973706C617922292C6B3D226E6F6E65223D3D3D6A3F6E2E5F6461746128';
wwv_flow_api.g_varchar2_table(673) := '612C226F6C64646973706C617922297C7C4D6128612E6E6F64654E616D65293A6A2C22696E6C696E65223D3D3D6B2626226E6F6E65223D3D3D6E2E63737328612C22666C6F617422292626286C2E696E6C696E65426C6F636B4E656564734C61796F7574';
wwv_flow_api.g_varchar2_table(674) := '262622696E6C696E6522213D3D4D6128612E6E6F64654E616D65293F702E7A6F6F6D3D313A702E646973706C61793D22696E6C696E652D626C6F636B2229292C632E6F766572666C6F77262628702E6F766572666C6F773D2268696464656E222C6C2E73';
wwv_flow_api.g_varchar2_table(675) := '6872696E6B57726170426C6F636B7328297C7C6D2E616C776179732866756E6374696F6E28297B702E6F766572666C6F773D632E6F766572666C6F775B305D2C702E6F766572666C6F77583D632E6F766572666C6F775B315D2C702E6F766572666C6F77';
wwv_flow_api.g_varchar2_table(676) := '593D632E6F766572666C6F775B325D7D29293B666F72286420696E206229696628653D625B645D2C6A622E65786563286529297B69662864656C65746520625B645D2C663D667C7C22746F67676C65223D3D3D652C653D3D3D28713F2268696465223A22';
wwv_flow_api.g_varchar2_table(677) := '73686F772229297B6966282273686F7722213D3D657C7C21727C7C766F696420303D3D3D725B645D29636F6E74696E75653B713D21307D6F5B645D3D722626725B645D7C7C6E2E7374796C6528612C64297D656C7365206A3D766F696420303B6966286E';
wwv_flow_api.g_varchar2_table(678) := '2E6973456D7074794F626A656374286F292922696E6C696E65223D3D3D28226E6F6E65223D3D3D6A3F4D6128612E6E6F64654E616D65293A6A29262628702E646973706C61793D6A293B656C73657B723F2268696464656E22696E2072262628713D722E';
wwv_flow_api.g_varchar2_table(679) := '68696464656E293A723D6E2E5F6461746128612C22667873686F77222C7B7D292C66262628722E68696464656E3D2171292C713F6E2861292E73686F7728293A6D2E646F6E652866756E6374696F6E28297B6E2861292E6869646528297D292C6D2E646F';
wwv_flow_api.g_varchar2_table(680) := '6E652866756E6374696F6E28297B76617220623B6E2E5F72656D6F76654461746128612C22667873686F7722293B666F72286220696E206F296E2E7374796C6528612C622C6F5B625D297D293B666F72286420696E206F29673D6E6228713F725B645D3A';
wwv_flow_api.g_varchar2_table(681) := '302C642C6D292C6420696E20727C7C28725B645D3D672E73746172742C71262628672E656E643D672E73746172742C672E73746172743D227769647468223D3D3D647C7C22686569676874223D3D3D643F313A3029297D7D66756E6374696F6E20706228';
wwv_flow_api.g_varchar2_table(682) := '612C62297B76617220632C642C652C662C673B666F72286320696E206129696628643D6E2E63616D656C436173652863292C653D625B645D2C663D615B635D2C6E2E69734172726179286629262628653D665B315D2C663D615B635D3D665B305D292C63';
wwv_flow_api.g_varchar2_table(683) := '213D3D64262628615B645D3D662C64656C65746520615B635D292C673D6E2E637373486F6F6B735B645D2C67262622657870616E6422696E2067297B663D672E657870616E642866292C64656C65746520615B645D3B666F72286320696E206629632069';
wwv_flow_api.g_varchar2_table(684) := '6E20617C7C28615B635D3D665B635D2C625B635D3D65297D656C736520625B645D3D657D66756E6374696F6E20716228612C622C63297B76617220642C652C663D302C673D71622E70726566696C746572732E6C656E6774682C683D6E2E446566657272';
wwv_flow_api.g_varchar2_table(685) := '656428292E616C776179732866756E6374696F6E28297B64656C65746520692E656C656D7D292C693D66756E6374696F6E28297B696628652972657475726E21313B666F722876617220623D68627C7C6C6228292C633D4D6174682E6D617828302C6A2E';
wwv_flow_api.g_varchar2_table(686) := '737461727454696D652B6A2E6475726174696F6E2D62292C643D632F6A2E6475726174696F6E7C7C302C663D312D642C673D302C693D6A2E747765656E732E6C656E6774683B693E673B672B2B296A2E747765656E735B675D2E72756E2866293B726574';
wwv_flow_api.g_varchar2_table(687) := '75726E20682E6E6F746966795769746828612C5B6A2C662C635D292C313E662626693F633A28682E7265736F6C76655769746828612C5B6A5D292C2131297D2C6A3D682E70726F6D697365287B656C656D3A612C70726F70733A6E2E657874656E64287B';
wwv_flow_api.g_varchar2_table(688) := '7D2C62292C6F7074733A6E2E657874656E642821302C7B7370656369616C456173696E673A7B7D2C656173696E673A6E2E656173696E672E5F64656661756C747D2C63292C6F726967696E616C50726F706572746965733A622C6F726967696E616C4F70';
wwv_flow_api.g_varchar2_table(689) := '74696F6E733A632C737461727454696D653A68627C7C6C6228292C6475726174696F6E3A632E6475726174696F6E2C747765656E733A5B5D2C637265617465547765656E3A66756E6374696F6E28622C63297B76617220643D6E2E547765656E28612C6A';
wwv_flow_api.g_varchar2_table(690) := '2E6F7074732C622C632C6A2E6F7074732E7370656369616C456173696E675B625D7C7C6A2E6F7074732E656173696E67293B72657475726E206A2E747765656E732E707573682864292C647D2C73746F703A66756E6374696F6E2862297B76617220633D';
wwv_flow_api.g_varchar2_table(691) := '302C643D623F6A2E747765656E732E6C656E6774683A303B696628652972657475726E20746869733B666F7228653D21303B643E633B632B2B296A2E747765656E735B635D2E72756E2831293B72657475726E20623F28682E6E6F746966795769746828';
wwv_flow_api.g_varchar2_table(692) := '612C5B6A2C312C305D292C682E7265736F6C76655769746828612C5B6A2C625D29293A682E72656A6563745769746828612C5B6A2C625D292C746869737D7D292C6B3D6A2E70726F70733B666F72287062286B2C6A2E6F7074732E7370656369616C4561';
wwv_flow_api.g_varchar2_table(693) := '73696E67293B673E663B662B2B29696628643D71622E70726566696C746572735B665D2E63616C6C286A2C612C6B2C6A2E6F707473292972657475726E206E2E697346756E6374696F6E28642E73746F70292626286E2E5F7175657565486F6F6B73286A';
wwv_flow_api.g_varchar2_table(694) := '2E656C656D2C6A2E6F7074732E7175657565292E73746F703D6E2E70726F787928642E73746F702C6429292C643B72657475726E206E2E6D6170286B2C6E622C6A292C6E2E697346756E6374696F6E286A2E6F7074732E73746172742926266A2E6F7074';
wwv_flow_api.g_varchar2_table(695) := '732E73746172742E63616C6C28612C6A292C6E2E66782E74696D6572286E2E657874656E6428692C7B656C656D3A612C616E696D3A6A2C71756575653A6A2E6F7074732E71756575657D29292C6A2E70726F6772657373286A2E6F7074732E70726F6772';
wwv_flow_api.g_varchar2_table(696) := '657373292E646F6E65286A2E6F7074732E646F6E652C6A2E6F7074732E636F6D706C657465292E6661696C286A2E6F7074732E6661696C292E616C77617973286A2E6F7074732E616C77617973297D6E2E416E696D6174696F6E3D6E2E657874656E6428';
wwv_flow_api.g_varchar2_table(697) := '71622C7B747765656E6572733A7B222A223A5B66756E6374696F6E28612C62297B76617220633D746869732E637265617465547765656E28612C62293B72657475726E205828632E656C656D2C612C552E657865632862292C63292C637D5D7D2C747765';
wwv_flow_api.g_varchar2_table(698) := '656E65723A66756E6374696F6E28612C62297B6E2E697346756E6374696F6E2861293F28623D612C613D5B222A225D293A613D612E6D617463682847293B666F722876617220632C643D302C653D612E6C656E6774683B653E643B642B2B29633D615B64';
wwv_flow_api.g_varchar2_table(699) := '5D2C71622E747765656E6572735B635D3D71622E747765656E6572735B635D7C7C5B5D2C71622E747765656E6572735B635D2E756E73686966742862297D2C70726566696C746572733A5B6F625D2C70726566696C7465723A66756E6374696F6E28612C';
wwv_flow_api.g_varchar2_table(700) := '62297B623F71622E70726566696C746572732E756E73686966742861293A71622E70726566696C746572732E707573682861297D7D292C6E2E73706565643D66756E6374696F6E28612C622C63297B76617220643D612626226F626A656374223D3D7479';
wwv_flow_api.g_varchar2_table(701) := '70656F6620613F6E2E657874656E64287B7D2C61293A7B636F6D706C6574653A637C7C21632626627C7C6E2E697346756E6374696F6E2861292626612C6475726174696F6E3A612C656173696E673A632626627C7C622626216E2E697346756E6374696F';
wwv_flow_api.g_varchar2_table(702) := '6E2862292626627D3B72657475726E20642E6475726174696F6E3D6E2E66782E6F66663F303A226E756D626572223D3D747970656F6620642E6475726174696F6E3F642E6475726174696F6E3A642E6475726174696F6E20696E206E2E66782E73706565';
wwv_flow_api.g_varchar2_table(703) := '64733F6E2E66782E7370656564735B642E6475726174696F6E5D3A6E2E66782E7370656564732E5F64656661756C742C6E756C6C213D642E71756575652626642E7175657565213D3D21307C7C28642E71756575653D22667822292C642E6F6C643D642E';
wwv_flow_api.g_varchar2_table(704) := '636F6D706C6574652C642E636F6D706C6574653D66756E6374696F6E28297B6E2E697346756E6374696F6E28642E6F6C64292626642E6F6C642E63616C6C2874686973292C642E717565756526266E2E6465717565756528746869732C642E7175657565';
wwv_flow_api.g_varchar2_table(705) := '297D2C647D2C6E2E666E2E657874656E64287B66616465546F3A66756E6374696F6E28612C622C632C64297B72657475726E20746869732E66696C7465722857292E63737328226F706163697479222C30292E73686F7728292E656E6428292E616E696D';
wwv_flow_api.g_varchar2_table(706) := '617465287B6F7061636974793A627D2C612C632C64297D2C616E696D6174653A66756E6374696F6E28612C622C632C64297B76617220653D6E2E6973456D7074794F626A6563742861292C663D6E2E737065656428622C632C64292C673D66756E637469';
wwv_flow_api.g_varchar2_table(707) := '6F6E28297B76617220623D716228746869732C6E2E657874656E64287B7D2C61292C66293B28657C7C6E2E5F6461746128746869732C2266696E6973682229292626622E73746F70282130297D3B72657475726E20672E66696E6973683D672C657C7C66';
wwv_flow_api.g_varchar2_table(708) := '2E71756575653D3D3D21313F746869732E656163682867293A746869732E717565756528662E71756575652C67297D2C73746F703A66756E6374696F6E28612C622C63297B76617220643D66756E6374696F6E2861297B76617220623D612E73746F703B';
wwv_flow_api.g_varchar2_table(709) := '64656C65746520612E73746F702C622863297D3B72657475726E22737472696E6722213D747970656F662061262628633D622C623D612C613D766F69642030292C62262661213D3D21312626746869732E717565756528617C7C226678222C5B5D292C74';
wwv_flow_api.g_varchar2_table(710) := '6869732E656163682866756E6374696F6E28297B76617220623D21302C653D6E756C6C213D612626612B227175657565486F6F6B73222C663D6E2E74696D6572732C673D6E2E5F646174612874686973293B6966286529675B655D2626675B655D2E7374';
wwv_flow_api.g_varchar2_table(711) := '6F7026266428675B655D293B656C736520666F72286520696E206729675B655D2626675B655D2E73746F7026266B622E7465737428652926266428675B655D293B666F7228653D662E6C656E6774683B652D2D3B29665B655D2E656C656D213D3D746869';
wwv_flow_api.g_varchar2_table(712) := '737C7C6E756C6C213D612626665B655D2E7175657565213D3D617C7C28665B655D2E616E696D2E73746F702863292C623D21312C662E73706C69636528652C3129293B21622626637C7C6E2E6465717565756528746869732C61297D297D2C66696E6973';
wwv_flow_api.g_varchar2_table(713) := '683A66756E6374696F6E2861297B72657475726E2061213D3D2131262628613D617C7C22667822292C746869732E656163682866756E6374696F6E28297B76617220622C633D6E2E5F646174612874686973292C643D635B612B227175657565225D2C65';
wwv_flow_api.g_varchar2_table(714) := '3D635B612B227175657565486F6F6B73225D2C663D6E2E74696D6572732C673D643F642E6C656E6774683A303B666F7228632E66696E6973683D21302C6E2E717565756528746869732C612C5B5D292C652626652E73746F702626652E73746F702E6361';
wwv_flow_api.g_varchar2_table(715) := '6C6C28746869732C2130292C623D662E6C656E6774683B622D2D3B29665B625D2E656C656D3D3D3D746869732626665B625D2E71756575653D3D3D61262628665B625D2E616E696D2E73746F70282130292C662E73706C69636528622C3129293B666F72';
wwv_flow_api.g_varchar2_table(716) := '28623D303B673E623B622B2B29645B625D2626645B625D2E66696E6973682626645B625D2E66696E6973682E63616C6C2874686973293B64656C65746520632E66696E6973687D297D7D292C6E2E65616368285B22746F67676C65222C2273686F77222C';
wwv_flow_api.g_varchar2_table(717) := '2268696465225D2C66756E6374696F6E28612C62297B76617220633D6E2E666E5B625D3B6E2E666E5B625D3D66756E6374696F6E28612C642C65297B72657475726E206E756C6C3D3D617C7C22626F6F6C65616E223D3D747970656F6620613F632E6170';
wwv_flow_api.g_varchar2_table(718) := '706C7928746869732C617267756D656E7473293A746869732E616E696D617465286D6228622C2130292C612C642C65297D7D292C6E2E65616368287B736C696465446F776E3A6D62282273686F7722292C736C69646555703A6D6228226869646522292C';
wwv_flow_api.g_varchar2_table(719) := '736C696465546F67676C653A6D622822746F67676C6522292C66616465496E3A7B6F7061636974793A2273686F77227D2C666164654F75743A7B6F7061636974793A2268696465227D2C66616465546F67676C653A7B6F7061636974793A22746F67676C';
wwv_flow_api.g_varchar2_table(720) := '65227D7D2C66756E6374696F6E28612C62297B6E2E666E5B615D3D66756E6374696F6E28612C632C64297B72657475726E20746869732E616E696D61746528622C612C632C64297D7D292C6E2E74696D6572733D5B5D2C6E2E66782E7469636B3D66756E';
wwv_flow_api.g_varchar2_table(721) := '6374696F6E28297B76617220612C623D6E2E74696D6572732C633D303B666F722868623D6E2E6E6F7728293B633C622E6C656E6774683B632B2B29613D625B635D2C6128297C7C625B635D213D3D617C7C622E73706C69636528632D2D2C31293B622E6C';
wwv_flow_api.g_varchar2_table(722) := '656E6774687C7C6E2E66782E73746F7028292C68623D766F696420307D2C6E2E66782E74696D65723D66756E6374696F6E2861297B6E2E74696D6572732E707573682861292C6128293F6E2E66782E737461727428293A6E2E74696D6572732E706F7028';
wwv_flow_api.g_varchar2_table(723) := '297D2C6E2E66782E696E74657276616C3D31332C6E2E66782E73746172743D66756E6374696F6E28297B69627C7C2869623D612E736574496E74657276616C286E2E66782E7469636B2C6E2E66782E696E74657276616C29297D2C6E2E66782E73746F70';
wwv_flow_api.g_varchar2_table(724) := '3D66756E6374696F6E28297B612E636C656172496E74657276616C286962292C69623D6E756C6C7D2C6E2E66782E7370656564733D7B736C6F773A3630302C666173743A3230302C5F64656661756C743A3430307D2C6E2E666E2E64656C61793D66756E';
wwv_flow_api.g_varchar2_table(725) := '6374696F6E28622C63297B72657475726E20623D6E2E66783F6E2E66782E7370656564735B625D7C7C623A622C633D637C7C226678222C746869732E717565756528632C66756E6374696F6E28632C64297B76617220653D612E73657454696D656F7574';
wwv_flow_api.g_varchar2_table(726) := '28632C62293B642E73746F703D66756E6374696F6E28297B612E636C65617254696D656F75742865297D7D297D2C66756E6374696F6E28297B76617220612C623D642E637265617465456C656D656E742822696E70757422292C633D642E637265617465';
wwv_flow_api.g_varchar2_table(727) := '456C656D656E74282264697622292C653D642E637265617465456C656D656E74282273656C65637422292C663D652E617070656E644368696C6428642E637265617465456C656D656E7428226F7074696F6E2229293B633D642E637265617465456C656D';
wwv_flow_api.g_varchar2_table(728) := '656E74282264697622292C632E7365744174747269627574652822636C6173734E616D65222C227422292C632E696E6E657248544D4C3D2220203C6C696E6B2F3E3C7461626C653E3C2F7461626C653E3C6120687265663D272F61273E613C2F613E3C69';
wwv_flow_api.g_varchar2_table(729) := '6E70757420747970653D27636865636B626F78272F3E222C613D632E676574456C656D656E747342795461674E616D6528226122295B305D2C622E736574417474726962757465282274797065222C22636865636B626F7822292C632E617070656E6443';
wwv_flow_api.g_varchar2_table(730) := '68696C642862292C613D632E676574456C656D656E747342795461674E616D6528226122295B305D2C612E7374796C652E637373546578743D22746F703A317078222C6C2E6765745365744174747269627574653D227422213D3D632E636C6173734E61';
wwv_flow_api.g_varchar2_table(731) := '6D652C6C2E7374796C653D2F746F702F2E7465737428612E67657441747472696275746528227374796C652229292C6C2E687265664E6F726D616C697A65643D222F61223D3D3D612E67657441747472696275746528226872656622292C6C2E63686563';
wwv_flow_api.g_varchar2_table(732) := '6B4F6E3D2121622E76616C75652C6C2E6F707453656C65637465643D662E73656C65637465642C6C2E656E63747970653D2121642E637265617465456C656D656E742822666F726D22292E656E63747970652C652E64697361626C65643D21302C6C2E6F';
wwv_flow_api.g_varchar2_table(733) := '707444697361626C65643D21662E64697361626C65642C623D642E637265617465456C656D656E742822696E70757422292C622E736574417474726962757465282276616C7565222C2222292C6C2E696E7075743D22223D3D3D622E6765744174747269';
wwv_flow_api.g_varchar2_table(734) := '62757465282276616C756522292C622E76616C75653D2274222C622E736574417474726962757465282274797065222C22726164696F22292C6C2E726164696F56616C75653D2274223D3D3D622E76616C75657D28293B7661722072623D2F5C722F672C';
wwv_flow_api.g_varchar2_table(735) := '73623D2F5B5C7832305C745C725C6E5C665D2B2F673B6E2E666E2E657874656E64287B76616C3A66756E6374696F6E2861297B76617220622C632C642C653D746869735B305D3B7B696628617267756D656E74732E6C656E6774682972657475726E2064';
wwv_flow_api.g_varchar2_table(736) := '3D6E2E697346756E6374696F6E2861292C746869732E656163682866756E6374696F6E2863297B76617220653B313D3D3D746869732E6E6F646554797065262628653D643F612E63616C6C28746869732C632C6E2874686973292E76616C2829293A612C';
wwv_flow_api.g_varchar2_table(737) := '6E756C6C3D3D653F653D22223A226E756D626572223D3D747970656F6620653F652B3D22223A6E2E69734172726179286529262628653D6E2E6D617028652C66756E6374696F6E2861297B72657475726E206E756C6C3D3D613F22223A612B22227D2929';
wwv_flow_api.g_varchar2_table(738) := '2C623D6E2E76616C486F6F6B735B746869732E747970655D7C7C6E2E76616C486F6F6B735B746869732E6E6F64654E616D652E746F4C6F7765724361736528295D2C6226262273657422696E20622626766F69642030213D3D622E73657428746869732C';
wwv_flow_api.g_varchar2_table(739) := '652C2276616C756522297C7C28746869732E76616C75653D6529297D293B696628652972657475726E20623D6E2E76616C486F6F6B735B652E747970655D7C7C6E2E76616C486F6F6B735B652E6E6F64654E616D652E746F4C6F7765724361736528295D';
wwv_flow_api.g_varchar2_table(740) := '2C6226262267657422696E20622626766F69642030213D3D28633D622E67657428652C2276616C75652229293F633A28633D652E76616C75652C22737472696E67223D3D747970656F6620633F632E7265706C6163652872622C2222293A6E756C6C3D3D';
wwv_flow_api.g_varchar2_table(741) := '633F22223A63297D7D7D292C6E2E657874656E64287B76616C486F6F6B733A7B6F7074696F6E3A7B6765743A66756E6374696F6E2861297B76617220623D6E2E66696E642E6174747228612C2276616C756522293B72657475726E206E756C6C213D623F';
wwv_flow_api.g_varchar2_table(742) := '623A6E2E7472696D286E2E74657874286129292E7265706C6163652873622C222022297D7D2C73656C6563743A7B6765743A66756E6374696F6E2861297B666F722876617220622C632C643D612E6F7074696F6E732C653D612E73656C6563746564496E';
wwv_flow_api.g_varchar2_table(743) := '6465782C663D2273656C6563742D6F6E65223D3D3D612E747970657C7C303E652C673D663F6E756C6C3A5B5D2C683D663F652B313A642E6C656E6774682C693D303E653F683A663F653A303B683E693B692B2B29696628633D645B695D2C28632E73656C';
wwv_flow_api.g_varchar2_table(744) := '65637465647C7C693D3D3D65292626286C2E6F707444697361626C65643F21632E64697361626C65643A6E756C6C3D3D3D632E676574417474726962757465282264697361626C656422292926262821632E706172656E744E6F64652E64697361626C65';
wwv_flow_api.g_varchar2_table(745) := '647C7C216E2E6E6F64654E616D6528632E706172656E744E6F64652C226F707467726F7570222929297B696628623D6E2863292E76616C28292C662972657475726E20623B672E707573682862297D72657475726E20677D2C7365743A66756E6374696F';
wwv_flow_api.g_varchar2_table(746) := '6E28612C62297B76617220632C642C653D612E6F7074696F6E732C663D6E2E6D616B6541727261792862292C673D652E6C656E6774683B7768696C6528672D2D29696628643D655B675D2C6E2E696E4172726179286E2E76616C486F6F6B732E6F707469';
wwv_flow_api.g_varchar2_table(747) := '6F6E2E6765742864292C66293E2D31297472797B642E73656C65637465643D633D21307D63617463682868297B642E7363726F6C6C4865696768747D656C736520642E73656C65637465643D21313B72657475726E20637C7C28612E73656C6563746564';
wwv_flow_api.g_varchar2_table(748) := '496E6465783D2D31292C657D7D7D7D292C6E2E65616368285B22726164696F222C22636865636B626F78225D2C66756E6374696F6E28297B6E2E76616C486F6F6B735B746869735D3D7B7365743A66756E6374696F6E28612C62297B72657475726E206E';
wwv_flow_api.g_varchar2_table(749) := '2E697341727261792862293F612E636865636B65643D6E2E696E4172726179286E2861292E76616C28292C62293E2D313A766F696420307D7D2C6C2E636865636B4F6E7C7C286E2E76616C486F6F6B735B746869735D2E6765743D66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(750) := '61297B72657475726E206E756C6C3D3D3D612E676574417474726962757465282276616C756522293F226F6E223A612E76616C75657D297D293B7661722074622C75622C76623D6E2E657870722E6174747248616E646C652C77623D2F5E283F3A636865';
wwv_flow_api.g_varchar2_table(751) := '636B65647C73656C656374656429242F692C78623D6C2E6765745365744174747269627574652C79623D6C2E696E7075743B6E2E666E2E657874656E64287B617474723A66756E6374696F6E28612C62297B72657475726E205928746869732C6E2E6174';
wwv_flow_api.g_varchar2_table(752) := '74722C612C622C617267756D656E74732E6C656E6774683E31297D2C72656D6F7665417474723A66756E6374696F6E2861297B72657475726E20746869732E656163682866756E6374696F6E28297B6E2E72656D6F76654174747228746869732C61297D';
wwv_flow_api.g_varchar2_table(753) := '297D7D292C6E2E657874656E64287B617474723A66756E6374696F6E28612C622C63297B76617220642C652C663D612E6E6F6465547970653B69662833213D3D66262638213D3D66262632213D3D662972657475726E22756E646566696E6564223D3D74';
wwv_flow_api.g_varchar2_table(754) := '7970656F6620612E6765744174747269627574653F6E2E70726F7028612C622C63293A28313D3D3D6626266E2E6973584D4C446F632861297C7C28623D622E746F4C6F7765724361736528292C653D6E2E61747472486F6F6B735B625D7C7C286E2E6578';
wwv_flow_api.g_varchar2_table(755) := '70722E6D617463682E626F6F6C2E746573742862293F75623A746229292C766F69642030213D3D633F6E756C6C3D3D3D633F766F6964206E2E72656D6F76654174747228612C62293A6526262273657422696E20652626766F69642030213D3D28643D65';
wwv_flow_api.g_varchar2_table(756) := '2E73657428612C632C6229293F643A28612E73657441747472696275746528622C632B2222292C63293A6526262267657422696E206526266E756C6C213D3D28643D652E67657428612C6229293F643A28643D6E2E66696E642E6174747228612C62292C';
wwv_flow_api.g_varchar2_table(757) := '6E756C6C3D3D643F766F696420303A6429297D2C61747472486F6F6B733A7B747970653A7B7365743A66756E6374696F6E28612C62297B696628216C2E726164696F56616C7565262622726164696F223D3D3D6226266E2E6E6F64654E616D6528612C22';
wwv_flow_api.g_varchar2_table(758) := '696E7075742229297B76617220633D612E76616C75653B72657475726E20612E736574417474726962757465282274797065222C62292C63262628612E76616C75653D63292C627D7D7D7D2C72656D6F7665417474723A66756E6374696F6E28612C6229';
wwv_flow_api.g_varchar2_table(759) := '7B76617220632C642C653D302C663D622626622E6D617463682847293B696628662626313D3D3D612E6E6F646554797065297768696C6528633D665B652B2B5D29643D6E2E70726F704669785B635D7C7C632C6E2E657870722E6D617463682E626F6F6C';
wwv_flow_api.g_varchar2_table(760) := '2E746573742863293F7962262678627C7C2177622E746573742863293F615B645D3D21313A615B6E2E63616D656C43617365282264656661756C742D222B63295D3D615B645D3D21313A6E2E6174747228612C632C2222292C612E72656D6F7665417474';
wwv_flow_api.g_varchar2_table(761) := '7269627574652878623F633A64297D7D292C75623D7B7365743A66756E6374696F6E28612C622C63297B72657475726E20623D3D3D21313F6E2E72656D6F76654174747228612C63293A7962262678627C7C2177622E746573742863293F612E73657441';
wwv_flow_api.g_varchar2_table(762) := '74747269627574652821786226266E2E70726F704669785B635D7C7C632C63293A615B6E2E63616D656C43617365282264656661756C742D222B63295D3D615B635D3D21302C637D7D2C6E2E65616368286E2E657870722E6D617463682E626F6F6C2E73';
wwv_flow_api.g_varchar2_table(763) := '6F757263652E6D61746368282F5C772B2F67292C66756E6374696F6E28612C62297B76617220633D76625B625D7C7C6E2E66696E642E617474723B7962262678627C7C2177622E746573742862293F76625B625D3D66756E6374696F6E28612C622C6429';
wwv_flow_api.g_varchar2_table(764) := '7B76617220652C663B72657475726E20647C7C28663D76625B625D2C76625B625D3D652C653D6E756C6C213D6328612C622C64293F622E746F4C6F7765724361736528293A6E756C6C2C76625B625D3D66292C657D3A76625B625D3D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(765) := '28612C622C63297B72657475726E20633F766F696420303A615B6E2E63616D656C43617365282264656661756C742D222B62295D3F622E746F4C6F7765724361736528293A6E756C6C7D7D292C7962262678627C7C286E2E61747472486F6F6B732E7661';
wwv_flow_api.g_varchar2_table(766) := '6C75653D7B7365743A66756E6374696F6E28612C622C63297B72657475726E206E2E6E6F64654E616D6528612C22696E70757422293F766F696428612E64656661756C7456616C75653D62293A7462262674622E73657428612C622C63297D7D292C7862';
wwv_flow_api.g_varchar2_table(767) := '7C7C2874623D7B7365743A66756E6374696F6E28612C622C63297B76617220643D612E6765744174747269627574654E6F64652863293B72657475726E20647C7C612E7365744174747269627574654E6F646528643D612E6F776E6572446F63756D656E';
wwv_flow_api.g_varchar2_table(768) := '742E637265617465417474726962757465286329292C642E76616C75653D622B3D22222C2276616C7565223D3D3D637C7C623D3D3D612E6765744174747269627574652863293F623A766F696420307D7D2C76622E69643D76622E6E616D653D76622E63';
wwv_flow_api.g_varchar2_table(769) := '6F6F7264733D66756E6374696F6E28612C622C63297B76617220643B72657475726E20633F766F696420303A28643D612E6765744174747269627574654E6F64652862292926262222213D3D642E76616C75653F642E76616C75653A6E756C6C7D2C6E2E';
wwv_flow_api.g_varchar2_table(770) := '76616C486F6F6B732E627574746F6E3D7B6765743A66756E6374696F6E28612C62297B76617220633D612E6765744174747269627574654E6F64652862293B72657475726E20632626632E7370656369666965643F632E76616C75653A766F696420307D';
wwv_flow_api.g_varchar2_table(771) := '2C7365743A74622E7365747D2C6E2E61747472486F6F6B732E636F6E74656E746564697461626C653D7B7365743A66756E6374696F6E28612C622C63297B74622E73657428612C22223D3D3D623F21313A622C63297D7D2C6E2E65616368285B22776964';
wwv_flow_api.g_varchar2_table(772) := '7468222C22686569676874225D2C66756E6374696F6E28612C62297B6E2E61747472486F6F6B735B625D3D7B7365743A66756E6374696F6E28612C63297B72657475726E22223D3D3D633F28612E73657441747472696275746528622C226175746F2229';
wwv_flow_api.g_varchar2_table(773) := '2C63293A766F696420307D7D7D29292C6C2E7374796C657C7C286E2E61747472486F6F6B732E7374796C653D7B6765743A66756E6374696F6E2861297B72657475726E20612E7374796C652E637373546578747C7C766F696420307D2C7365743A66756E';
wwv_flow_api.g_varchar2_table(774) := '6374696F6E28612C62297B72657475726E20612E7374796C652E637373546578743D622B22227D7D293B766172207A623D2F5E283F3A696E7075747C73656C6563747C74657874617265617C627574746F6E7C6F626A65637429242F692C41623D2F5E28';
wwv_flow_api.g_varchar2_table(775) := '3F3A617C6172656129242F693B6E2E666E2E657874656E64287B70726F703A66756E6374696F6E28612C62297B72657475726E205928746869732C6E2E70726F702C612C622C617267756D656E74732E6C656E6774683E31297D2C72656D6F766550726F';
wwv_flow_api.g_varchar2_table(776) := '703A66756E6374696F6E2861297B72657475726E20613D6E2E70726F704669785B615D7C7C612C746869732E656163682866756E6374696F6E28297B7472797B746869735B615D3D766F696420302C64656C65746520746869735B615D7D636174636828';
wwv_flow_api.g_varchar2_table(777) := '62297B7D7D297D7D292C6E2E657874656E64287B70726F703A66756E6374696F6E28612C622C63297B76617220642C652C663D612E6E6F6465547970653B69662833213D3D66262638213D3D66262632213D3D662972657475726E20313D3D3D6626266E';
wwv_flow_api.g_varchar2_table(778) := '2E6973584D4C446F632861297C7C28623D6E2E70726F704669785B625D7C7C622C653D6E2E70726F70486F6F6B735B625D292C766F69642030213D3D633F6526262273657422696E20652626766F69642030213D3D28643D652E73657428612C632C6229';
wwv_flow_api.g_varchar2_table(779) := '293F643A615B625D3D633A6526262267657422696E206526266E756C6C213D3D28643D652E67657428612C6229293F643A615B625D7D2C70726F70486F6F6B733A7B746162496E6465783A7B6765743A66756E6374696F6E2861297B76617220623D6E2E';
wwv_flow_api.g_varchar2_table(780) := '66696E642E6174747228612C22746162696E64657822293B72657475726E20623F7061727365496E7428622C3130293A7A622E7465737428612E6E6F64654E616D65297C7C41622E7465737428612E6E6F64654E616D65292626612E687265663F303A2D';
wwv_flow_api.g_varchar2_table(781) := '317D7D7D2C70726F704669783A7B22666F72223A2268746D6C466F72222C22636C617373223A22636C6173734E616D65227D7D292C6C2E687265664E6F726D616C697A65647C7C6E2E65616368285B2268726566222C22737263225D2C66756E6374696F';
wwv_flow_api.g_varchar2_table(782) := '6E28612C62297B6E2E70726F70486F6F6B735B625D3D7B6765743A66756E6374696F6E2861297B72657475726E20612E67657441747472696275746528622C34297D7D7D292C6C2E6F707453656C65637465647C7C286E2E70726F70486F6F6B732E7365';
wwv_flow_api.g_varchar2_table(783) := '6C65637465643D7B6765743A66756E6374696F6E2861297B76617220623D612E706172656E744E6F64653B72657475726E2062262628622E73656C6563746564496E6465782C622E706172656E744E6F64652626622E706172656E744E6F64652E73656C';
wwv_flow_api.g_varchar2_table(784) := '6563746564496E646578292C6E756C6C7D2C7365743A66756E6374696F6E2861297B76617220623D612E706172656E744E6F64653B62262628622E73656C6563746564496E6465782C622E706172656E744E6F64652626622E706172656E744E6F64652E';
wwv_flow_api.g_varchar2_table(785) := '73656C6563746564496E646578297D7D292C6E2E65616368285B22746162496E646578222C22726561644F6E6C79222C226D61784C656E677468222C2263656C6C53706163696E67222C2263656C6C50616464696E67222C22726F775370616E222C2263';
wwv_flow_api.g_varchar2_table(786) := '6F6C5370616E222C227573654D6170222C226672616D65426F72646572222C22636F6E74656E744564697461626C65225D2C66756E6374696F6E28297B6E2E70726F704669785B746869732E746F4C6F7765724361736528295D3D746869737D292C6C2E';
wwv_flow_api.g_varchar2_table(787) := '656E63747970657C7C286E2E70726F704669782E656E63747970653D22656E636F64696E6722293B7661722042623D2F5B5C745C725C6E5C665D2F673B66756E6374696F6E2043622861297B72657475726E206E2E6174747228612C22636C6173732229';
wwv_flow_api.g_varchar2_table(788) := '7C7C22227D6E2E666E2E657874656E64287B616464436C6173733A66756E6374696F6E2861297B76617220622C632C642C652C662C672C682C693D303B6966286E2E697346756E6374696F6E2861292972657475726E20746869732E656163682866756E';
wwv_flow_api.g_varchar2_table(789) := '6374696F6E2862297B6E2874686973292E616464436C61737328612E63616C6C28746869732C622C436228746869732929297D293B69662822737472696E67223D3D747970656F662061262661297B623D612E6D617463682847297C7C5B5D3B7768696C';
wwv_flow_api.g_varchar2_table(790) := '6528633D746869735B692B2B5D29696628653D43622863292C643D313D3D3D632E6E6F6465547970652626282220222B652B222022292E7265706C6163652842622C22202229297B673D303B7768696C6528663D625B672B2B5D29642E696E6465784F66';
wwv_flow_api.g_varchar2_table(791) := '282220222B662B222022293C30262628642B3D662B222022293B683D6E2E7472696D2864292C65213D3D6826266E2E6174747228632C22636C617373222C68297D7D72657475726E20746869737D2C72656D6F7665436C6173733A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(792) := '61297B76617220622C632C642C652C662C672C682C693D303B6966286E2E697346756E6374696F6E2861292972657475726E20746869732E656163682866756E6374696F6E2862297B6E2874686973292E72656D6F7665436C61737328612E63616C6C28';
wwv_flow_api.g_varchar2_table(793) := '746869732C622C436228746869732929297D293B69662821617267756D656E74732E6C656E6774682972657475726E20746869732E617474722822636C617373222C2222293B69662822737472696E67223D3D747970656F662061262661297B623D612E';
wwv_flow_api.g_varchar2_table(794) := '6D617463682847297C7C5B5D3B7768696C6528633D746869735B692B2B5D29696628653D43622863292C643D313D3D3D632E6E6F6465547970652626282220222B652B222022292E7265706C6163652842622C22202229297B673D303B7768696C652866';
wwv_flow_api.g_varchar2_table(795) := '3D625B672B2B5D297768696C6528642E696E6465784F66282220222B662B222022293E2D3129643D642E7265706C616365282220222B662B2220222C222022293B683D6E2E7472696D2864292C65213D3D6826266E2E6174747228632C22636C61737322';
wwv_flow_api.g_varchar2_table(796) := '2C68297D7D72657475726E20746869737D2C746F67676C65436C6173733A66756E6374696F6E28612C62297B76617220633D747970656F6620613B72657475726E22626F6F6C65616E223D3D747970656F662062262622737472696E67223D3D3D633F62';
wwv_flow_api.g_varchar2_table(797) := '3F746869732E616464436C6173732861293A746869732E72656D6F7665436C6173732861293A6E2E697346756E6374696F6E2861293F746869732E656163682866756E6374696F6E2863297B6E2874686973292E746F67676C65436C61737328612E6361';
wwv_flow_api.g_varchar2_table(798) := '6C6C28746869732C632C43622874686973292C62292C62297D293A746869732E656163682866756E6374696F6E28297B76617220622C642C652C663B69662822737472696E67223D3D3D63297B643D302C653D6E2874686973292C663D612E6D61746368';
wwv_flow_api.g_varchar2_table(799) := '2847297C7C5B5D3B7768696C6528623D665B642B2B5D29652E686173436C6173732862293F652E72656D6F7665436C6173732862293A652E616464436C6173732862297D656C736520766F69642030213D3D61262622626F6F6C65616E22213D3D637C7C';
wwv_flow_api.g_varchar2_table(800) := '28623D43622874686973292C6226266E2E5F6461746128746869732C225F5F636C6173734E616D655F5F222C62292C6E2E6174747228746869732C22636C617373222C627C7C613D3D3D21313F22223A6E2E5F6461746128746869732C225F5F636C6173';
wwv_flow_api.g_varchar2_table(801) := '734E616D655F5F22297C7C222229297D297D2C686173436C6173733A66756E6374696F6E2861297B76617220622C632C643D303B623D2220222B612B2220223B7768696C6528633D746869735B642B2B5D29696628313D3D3D632E6E6F64655479706526';
wwv_flow_api.g_varchar2_table(802) := '26282220222B43622863292B222022292E7265706C6163652842622C222022292E696E6465784F662862293E2D312972657475726E21303B72657475726E21317D7D292C6E2E656163682822626C757220666F63757320666F637573696E20666F637573';
wwv_flow_api.g_varchar2_table(803) := '6F7574206C6F616420726573697A65207363726F6C6C20756E6C6F616420636C69636B2064626C636C69636B206D6F757365646F776E206D6F7573657570206D6F7573656D6F7665206D6F7573656F766572206D6F7573656F7574206D6F757365656E74';
wwv_flow_api.g_varchar2_table(804) := '6572206D6F7573656C65617665206368616E67652073656C656374207375626D6974206B6579646F776E206B65797072657373206B65797570206572726F7220636F6E746578746D656E75222E73706C697428222022292C66756E6374696F6E28612C62';
wwv_flow_api.g_varchar2_table(805) := '297B6E2E666E5B625D3D66756E6374696F6E28612C63297B72657475726E20617267756D656E74732E6C656E6774683E303F746869732E6F6E28622C6E756C6C2C612C63293A746869732E747269676765722862297D7D292C6E2E666E2E657874656E64';
wwv_flow_api.g_varchar2_table(806) := '287B686F7665723A66756E6374696F6E28612C62297B72657475726E20746869732E6D6F757365656E7465722861292E6D6F7573656C6561766528627C7C61297D7D293B7661722044623D612E6C6F636174696F6E2C45623D6E2E6E6F7728292C46623D';
wwv_flow_api.g_varchar2_table(807) := '2F5C3F2F2C47623D2F282C297C285C5B7C7B297C287D7C5D297C22283F3A5B5E225C5C5C725C6E5D7C5C5C5B225C5C5C2F62666E72745D7C5C5C755B5C64612D66412D465D7B347D292A225C732A3A3F7C747275657C66616C73657C6E756C6C7C2D3F28';
wwv_flow_api.g_varchar2_table(808) := '3F21305C64295C642B283F3A5C2E5C642B7C29283F3A5B65455D5B2B2D5D3F5C642B7C292F673B6E2E70617273654A534F4E3D66756E6374696F6E2862297B696628612E4A534F4E2626612E4A534F4E2E70617273652972657475726E20612E4A534F4E';
wwv_flow_api.g_varchar2_table(809) := '2E706172736528622B2222293B76617220632C643D6E756C6C2C653D6E2E7472696D28622B2222293B72657475726E20652626216E2E7472696D28652E7265706C6163652847622C66756E6374696F6E28612C622C652C66297B72657475726E20632626';
wwv_flow_api.g_varchar2_table(810) := '62262628643D30292C303D3D3D643F613A28633D657C7C622C642B3D21662D21652C2222297D29293F46756E6374696F6E282272657475726E20222B652928293A6E2E6572726F722822496E76616C6964204A534F4E3A20222B62297D2C6E2E70617273';
wwv_flow_api.g_varchar2_table(811) := '65584D4C3D66756E6374696F6E2862297B76617220632C643B69662821627C7C22737472696E6722213D747970656F6620622972657475726E206E756C6C3B7472797B612E444F4D5061727365723F28643D6E657720612E444F4D5061727365722C633D';
wwv_flow_api.g_varchar2_table(812) := '642E706172736546726F6D537472696E6728622C22746578742F786D6C2229293A28633D6E657720612E416374697665584F626A65637428224D6963726F736F66742E584D4C444F4D22292C632E6173796E633D2266616C7365222C632E6C6F6164584D';
wwv_flow_api.g_varchar2_table(813) := '4C286229297D63617463682865297B633D766F696420307D72657475726E20632626632E646F63756D656E74456C656D656E74262621632E676574456C656D656E747342795461674E616D6528227061727365726572726F7222292E6C656E6774687C7C';
wwv_flow_api.g_varchar2_table(814) := '6E2E6572726F722822496E76616C696420584D4C3A20222B62292C637D3B7661722048623D2F232E2A242F2C49623D2F285B3F265D295F3D5B5E265D2A2F2C4A623D2F5E282E2A3F293A5B205C745D2A285B5E5C725C6E5D2A295C723F242F676D2C4B62';
wwv_flow_api.g_varchar2_table(815) := '3D2F5E283F3A61626F75747C6170707C6170702D73746F726167657C2E2B2D657874656E73696F6E7C66696C657C7265737C776964676574293A242F2C4C623D2F5E283F3A4745547C4845414429242F2C4D623D2F5E5C2F5C2F2F2C4E623D2F5E285B5C';
wwv_flow_api.g_varchar2_table(816) := '772E2B2D5D2B3A29283F3A5C2F5C2F283F3A5B5E5C2F3F235D2A407C29285B5E5C2F3F233A5D2A29283F3A3A285C642B297C297C292F2C4F623D7B7D2C50623D7B7D2C51623D222A2F222E636F6E63617428222A22292C52623D44622E687265662C5362';
wwv_flow_api.g_varchar2_table(817) := '3D4E622E657865632852622E746F4C6F776572436173652829297C7C5B5D3B66756E6374696F6E2054622861297B72657475726E2066756E6374696F6E28622C63297B22737472696E6722213D747970656F662062262628633D622C623D222A22293B76';
wwv_flow_api.g_varchar2_table(818) := '617220642C653D302C663D622E746F4C6F7765724361736528292E6D617463682847297C7C5B5D3B6966286E2E697346756E6374696F6E286329297768696C6528643D665B652B2B5D29222B223D3D3D642E6368617241742830293F28643D642E736C69';
wwv_flow_api.g_varchar2_table(819) := '63652831297C7C222A222C28615B645D3D615B645D7C7C5B5D292E756E7368696674286329293A28615B645D3D615B645D7C7C5B5D292E707573682863297D7D66756E6374696F6E20556228612C622C632C64297B76617220653D7B7D2C663D613D3D3D';
wwv_flow_api.g_varchar2_table(820) := '50623B66756E6374696F6E20672868297B76617220693B72657475726E20655B685D3D21302C6E2E6561636828615B685D7C7C5B5D2C66756E6374696F6E28612C68297B766172206A3D6828622C632C64293B72657475726E22737472696E6722213D74';
wwv_flow_api.g_varchar2_table(821) := '7970656F66206A7C7C667C7C655B6A5D3F663F2128693D6A293A766F696420303A28622E6461746154797065732E756E7368696674286A292C67286A292C2131297D292C697D72657475726E206728622E6461746154797065735B305D297C7C21655B22';
wwv_flow_api.g_varchar2_table(822) := '2A225D26266728222A22297D66756E6374696F6E20566228612C62297B76617220632C642C653D6E2E616A617853657474696E67732E666C61744F7074696F6E737C7C7B7D3B666F72286420696E206229766F69642030213D3D625B645D26262828655B';
wwv_flow_api.g_varchar2_table(823) := '645D3F613A637C7C28633D7B7D29295B645D3D625B645D293B72657475726E206326266E2E657874656E642821302C612C63292C617D66756E6374696F6E20576228612C622C63297B76617220642C652C662C672C683D612E636F6E74656E74732C693D';
wwv_flow_api.g_varchar2_table(824) := '612E6461746154797065733B7768696C6528222A223D3D3D695B305D29692E736869667428292C766F696420303D3D3D65262628653D612E6D696D65547970657C7C622E676574526573706F6E73654865616465722822436F6E74656E742D5479706522';
wwv_flow_api.g_varchar2_table(825) := '29293B6966286529666F72286720696E206829696628685B675D2626685B675D2E74657374286529297B692E756E73686966742867293B627265616B7D696628695B305D696E206329663D695B305D3B656C73657B666F72286720696E2063297B696628';
wwv_flow_api.g_varchar2_table(826) := '21695B305D7C7C612E636F6E766572746572735B672B2220222B695B305D5D297B663D673B627265616B7D647C7C28643D67297D663D667C7C647D72657475726E20663F2866213D3D695B305D2626692E756E73686966742866292C635B665D293A766F';
wwv_flow_api.g_varchar2_table(827) := '696420307D66756E6374696F6E20586228612C622C632C64297B76617220652C662C672C682C692C6A3D7B7D2C6B3D612E6461746154797065732E736C69636528293B6966286B5B315D29666F72286720696E20612E636F6E76657274657273296A5B67';
wwv_flow_api.g_varchar2_table(828) := '2E746F4C6F7765724361736528295D3D612E636F6E766572746572735B675D3B663D6B2E736869667428293B7768696C65286629696628612E726573706F6E73654669656C64735B665D262628635B612E726573706F6E73654669656C64735B665D5D3D';
wwv_flow_api.g_varchar2_table(829) := '62292C21692626642626612E6461746146696C746572262628623D612E6461746146696C74657228622C612E646174615479706529292C693D662C663D6B2E7368696674282929696628222A223D3D3D6629663D693B656C736520696628222A22213D3D';
wwv_flow_api.g_varchar2_table(830) := '69262669213D3D66297B696628673D6A5B692B2220222B665D7C7C6A5B222A20222B665D2C216729666F72286520696E206A29696628683D652E73706C697428222022292C685B315D3D3D3D66262628673D6A5B692B2220222B685B305D5D7C7C6A5B22';
wwv_flow_api.g_varchar2_table(831) := '2A20222B685B305D5D29297B673D3D3D21303F673D6A5B655D3A6A5B655D213D3D2130262628663D685B305D2C6B2E756E736869667428685B315D29293B627265616B7D69662867213D3D213029696628672626615B227468726F7773225D29623D6728';
wwv_flow_api.g_varchar2_table(832) := '62293B656C7365207472797B623D672862297D6361746368286C297B72657475726E7B73746174653A227061727365726572726F72222C6572726F723A673F6C3A224E6F20636F6E76657273696F6E2066726F6D20222B692B2220746F20222B667D7D7D';
wwv_flow_api.g_varchar2_table(833) := '72657475726E7B73746174653A2273756363657373222C646174613A627D7D6E2E657874656E64287B6163746976653A302C6C6173744D6F6469666965643A7B7D2C657461673A7B7D2C616A617853657474696E67733A7B75726C3A52622C747970653A';
wwv_flow_api.g_varchar2_table(834) := '22474554222C69734C6F63616C3A4B622E746573742853625B315D292C676C6F62616C3A21302C70726F63657373446174613A21302C6173796E633A21302C636F6E74656E74547970653A226170706C69636174696F6E2F782D7777772D666F726D2D75';
wwv_flow_api.g_varchar2_table(835) := '726C656E636F6465643B20636861727365743D5554462D38222C616363657074733A7B222A223A51622C746578743A22746578742F706C61696E222C68746D6C3A22746578742F68746D6C222C786D6C3A226170706C69636174696F6E2F786D6C2C2074';
wwv_flow_api.g_varchar2_table(836) := '6578742F786D6C222C6A736F6E3A226170706C69636174696F6E2F6A736F6E2C20746578742F6A617661736372697074227D2C636F6E74656E74733A7B786D6C3A2F5C62786D6C5C622F2C68746D6C3A2F5C6268746D6C2F2C6A736F6E3A2F5C626A736F';
wwv_flow_api.g_varchar2_table(837) := '6E5C622F7D2C726573706F6E73654669656C64733A7B786D6C3A22726573706F6E7365584D4C222C746578743A22726573706F6E736554657874222C6A736F6E3A22726573706F6E73654A534F4E227D2C636F6E766572746572733A7B222A2074657874';
wwv_flow_api.g_varchar2_table(838) := '223A537472696E672C22746578742068746D6C223A21302C2274657874206A736F6E223A6E2E70617273654A534F4E2C227465787420786D6C223A6E2E7061727365584D4C7D2C666C61744F7074696F6E733A7B75726C3A21302C636F6E746578743A21';
wwv_flow_api.g_varchar2_table(839) := '307D7D2C616A617853657475703A66756E6374696F6E28612C62297B72657475726E20623F566228566228612C6E2E616A617853657474696E6773292C62293A5662286E2E616A617853657474696E67732C61297D2C616A617850726566696C7465723A';
wwv_flow_api.g_varchar2_table(840) := '5462284F62292C616A61785472616E73706F72743A5462285062292C616A61783A66756E6374696F6E28622C63297B226F626A656374223D3D747970656F662062262628633D622C623D766F69642030292C633D637C7C7B7D3B76617220642C652C662C';
wwv_flow_api.g_varchar2_table(841) := '672C682C692C6A2C6B2C6C3D6E2E616A61785365747570287B7D2C63292C6D3D6C2E636F6E746578747C7C6C2C6F3D6C2E636F6E746578742626286D2E6E6F6465547970657C7C6D2E6A7175657279293F6E286D293A6E2E6576656E742C703D6E2E4465';
wwv_flow_api.g_varchar2_table(842) := '66657272656428292C713D6E2E43616C6C6261636B7328226F6E6365206D656D6F727922292C723D6C2E737461747573436F64657C7C7B7D2C733D7B7D2C743D7B7D2C753D302C763D2263616E63656C6564222C773D7B726561647953746174653A302C';
wwv_flow_api.g_varchar2_table(843) := '676574526573706F6E73654865616465723A66756E6374696F6E2861297B76617220623B696628323D3D3D75297B696628216B297B6B3D7B7D3B7768696C6528623D4A622E65786563286729296B5B625B315D2E746F4C6F7765724361736528295D3D62';
wwv_flow_api.g_varchar2_table(844) := '5B325D7D623D6B5B612E746F4C6F7765724361736528295D7D72657475726E206E756C6C3D3D623F6E756C6C3A627D2C676574416C6C526573706F6E7365486561646572733A66756E6374696F6E28297B72657475726E20323D3D3D753F673A6E756C6C';
wwv_flow_api.g_varchar2_table(845) := '7D2C736574526571756573744865616465723A66756E6374696F6E28612C62297B76617220633D612E746F4C6F7765724361736528293B72657475726E20757C7C28613D745B635D3D745B635D7C7C612C735B615D3D62292C746869737D2C6F76657272';
wwv_flow_api.g_varchar2_table(846) := '6964654D696D65547970653A66756E6374696F6E2861297B72657475726E20757C7C286C2E6D696D65547970653D61292C746869737D2C737461747573436F64653A66756E6374696F6E2861297B76617220623B6966286129696628323E7529666F7228';
wwv_flow_api.g_varchar2_table(847) := '6220696E206129725B625D3D5B725B625D2C615B625D5D3B656C736520772E616C7761797328615B772E7374617475735D293B72657475726E20746869737D2C61626F72743A66756E6374696F6E2861297B76617220623D617C7C763B72657475726E20';
wwv_flow_api.g_varchar2_table(848) := '6A26266A2E61626F72742862292C7928302C62292C746869737D7D3B696628702E70726F6D6973652877292E636F6D706C6574653D712E6164642C772E737563636573733D772E646F6E652C772E6572726F723D772E6661696C2C6C2E75726C3D282862';
wwv_flow_api.g_varchar2_table(849) := '7C7C6C2E75726C7C7C5262292B2222292E7265706C6163652848622C2222292E7265706C616365284D622C53625B315D2B222F2F22292C6C2E747970653D632E6D6574686F647C7C632E747970657C7C6C2E6D6574686F647C7C6C2E747970652C6C2E64';
wwv_flow_api.g_varchar2_table(850) := '61746154797065733D6E2E7472696D286C2E64617461547970657C7C222A22292E746F4C6F7765724361736528292E6D617463682847297C7C5B22225D2C6E756C6C3D3D6C2E63726F7373446F6D61696E262628643D4E622E65786563286C2E75726C2E';
wwv_flow_api.g_varchar2_table(851) := '746F4C6F776572436173652829292C6C2E63726F7373446F6D61696E3D212821647C7C645B315D3D3D3D53625B315D2626645B325D3D3D3D53625B325D262628645B335D7C7C2822687474703A223D3D3D645B315D3F223830223A223434332229293D3D';
wwv_flow_api.g_varchar2_table(852) := '3D2853625B335D7C7C2822687474703A223D3D3D53625B315D3F223830223A2234343322292929292C6C2E6461746126266C2E70726F6365737344617461262622737472696E6722213D747970656F66206C2E646174612626286C2E646174613D6E2E70';
wwv_flow_api.g_varchar2_table(853) := '6172616D286C2E646174612C6C2E747261646974696F6E616C29292C5562284F622C6C2C632C77292C323D3D3D752972657475726E20773B693D6E2E6576656E7426266C2E676C6F62616C2C692626303D3D3D6E2E6163746976652B2B26266E2E657665';
wwv_flow_api.g_varchar2_table(854) := '6E742E747269676765722822616A6178537461727422292C6C2E747970653D6C2E747970652E746F55707065724361736528292C6C2E686173436F6E74656E743D214C622E74657374286C2E74797065292C663D6C2E75726C2C6C2E686173436F6E7465';
wwv_flow_api.g_varchar2_table(855) := '6E747C7C286C2E64617461262628663D6C2E75726C2B3D2846622E746573742866293F2226223A223F22292B6C2E646174612C64656C657465206C2E64617461292C6C2E63616368653D3D3D21312626286C2E75726C3D49622E746573742866293F662E';
wwv_flow_api.g_varchar2_table(856) := '7265706C6163652849622C2224315F3D222B45622B2B293A662B2846622E746573742866293F2226223A223F22292B225F3D222B45622B2B29292C6C2E69664D6F6469666965642626286E2E6C6173744D6F6469666965645B665D2626772E7365745265';
wwv_flow_api.g_varchar2_table(857) := '7175657374486561646572282249662D4D6F6469666965642D53696E6365222C6E2E6C6173744D6F6469666965645B665D292C6E2E657461675B665D2626772E73657452657175657374486561646572282249662D4E6F6E652D4D61746368222C6E2E65';
wwv_flow_api.g_varchar2_table(858) := '7461675B665D29292C286C2E6461746126266C2E686173436F6E74656E7426266C2E636F6E74656E7454797065213D3D21317C7C632E636F6E74656E7454797065292626772E736574526571756573744865616465722822436F6E74656E742D54797065';
wwv_flow_api.g_varchar2_table(859) := '222C6C2E636F6E74656E7454797065292C772E736574526571756573744865616465722822416363657074222C6C2E6461746154797065735B305D26266C2E616363657074735B6C2E6461746154797065735B305D5D3F6C2E616363657074735B6C2E64';
wwv_flow_api.g_varchar2_table(860) := '61746154797065735B305D5D2B28222A22213D3D6C2E6461746154797065735B305D3F222C20222B51622B223B20713D302E3031223A2222293A6C2E616363657074735B222A225D293B666F72286520696E206C2E6865616465727329772E7365745265';
wwv_flow_api.g_varchar2_table(861) := '717565737448656164657228652C6C2E686561646572735B655D293B6966286C2E6265666F726553656E642626286C2E6265666F726553656E642E63616C6C286D2C772C6C293D3D3D21317C7C323D3D3D75292972657475726E20772E61626F72742829';
wwv_flow_api.g_varchar2_table(862) := '3B763D2261626F7274223B666F72286520696E7B737563636573733A312C6572726F723A312C636F6D706C6574653A317D29775B655D286C5B655D293B6966286A3D55622850622C6C2C632C7729297B696628772E726561647953746174653D312C6926';
wwv_flow_api.g_varchar2_table(863) := '266F2E747269676765722822616A617853656E64222C5B772C6C5D292C323D3D3D752972657475726E20773B6C2E6173796E6326266C2E74696D656F75743E30262628683D612E73657454696D656F75742866756E6374696F6E28297B772E61626F7274';
wwv_flow_api.g_varchar2_table(864) := '282274696D656F757422297D2C6C2E74696D656F757429293B7472797B753D312C6A2E73656E6428732C79297D63617463682878297B6966282128323E7529297468726F7720783B79282D312C78297D7D656C73652079282D312C224E6F205472616E73';
wwv_flow_api.g_varchar2_table(865) := '706F727422293B66756E6374696F6E207928622C632C642C65297B766172206B2C732C742C762C782C793D633B32213D3D75262628753D322C682626612E636C65617254696D656F75742868292C6A3D766F696420302C673D657C7C22222C772E726561';
wwv_flow_api.g_varchar2_table(866) := '647953746174653D623E303F343A302C6B3D623E3D32303026263330303E627C7C3330343D3D3D622C64262628763D5762286C2C772C6429292C763D5862286C2C762C772C6B292C6B3F286C2E69664D6F646966696564262628783D772E676574526573';
wwv_flow_api.g_varchar2_table(867) := '706F6E736548656164657228224C6173742D4D6F64696669656422292C782626286E2E6C6173744D6F6469666965645B665D3D78292C783D772E676574526573706F6E736548656164657228226574616722292C782626286E2E657461675B665D3D7829';
wwv_flow_api.g_varchar2_table(868) := '292C3230343D3D3D627C7C2248454144223D3D3D6C2E747970653F793D226E6F636F6E74656E74223A3330343D3D3D623F793D226E6F746D6F646966696564223A28793D762E73746174652C733D762E646174612C743D762E6572726F722C6B3D217429';
wwv_flow_api.g_varchar2_table(869) := '293A28743D792C21622626797C7C28793D226572726F72222C303E62262628623D302929292C772E7374617475733D622C772E737461747573546578743D28637C7C79292B22222C6B3F702E7265736F6C766557697468286D2C5B732C792C775D293A70';
wwv_flow_api.g_varchar2_table(870) := '2E72656A65637457697468286D2C5B772C792C745D292C772E737461747573436F64652872292C723D766F696420302C6926266F2E74726967676572286B3F22616A617853756363657373223A22616A61784572726F72222C5B772C6C2C6B3F733A745D';
wwv_flow_api.g_varchar2_table(871) := '292C712E6669726557697468286D2C5B772C795D292C692626286F2E747269676765722822616A6178436F6D706C657465222C5B772C6C5D292C2D2D6E2E6163746976657C7C6E2E6576656E742E747269676765722822616A617853746F70222929297D';
wwv_flow_api.g_varchar2_table(872) := '72657475726E20777D2C6765744A534F4E3A66756E6374696F6E28612C622C63297B72657475726E206E2E67657428612C622C632C226A736F6E22297D2C6765745363726970743A66756E6374696F6E28612C62297B72657475726E206E2E6765742861';
wwv_flow_api.g_varchar2_table(873) := '2C766F696420302C622C2273637269707422297D7D292C6E2E65616368285B22676574222C22706F7374225D2C66756E6374696F6E28612C62297B6E5B625D3D66756E6374696F6E28612C632C642C65297B72657475726E206E2E697346756E6374696F';
wwv_flow_api.g_varchar2_table(874) := '6E286329262628653D657C7C642C643D632C633D766F69642030292C6E2E616A6178286E2E657874656E64287B75726C3A612C747970653A622C64617461547970653A652C646174613A632C737563636573733A647D2C6E2E6973506C61696E4F626A65';
wwv_flow_api.g_varchar2_table(875) := '637428612926266129297D7D292C6E2E5F6576616C55726C3D66756E6374696F6E2861297B72657475726E206E2E616A6178287B75726C3A612C747970653A22474554222C64617461547970653A22736372697074222C63616368653A21302C6173796E';
wwv_flow_api.g_varchar2_table(876) := '633A21312C676C6F62616C3A21312C227468726F7773223A21307D297D2C6E2E666E2E657874656E64287B77726170416C6C3A66756E6374696F6E2861297B6966286E2E697346756E6374696F6E2861292972657475726E20746869732E656163682866';
wwv_flow_api.g_varchar2_table(877) := '756E6374696F6E2862297B6E2874686973292E77726170416C6C28612E63616C6C28746869732C6229297D293B696628746869735B305D297B76617220623D6E28612C746869735B305D2E6F776E6572446F63756D656E74292E65712830292E636C6F6E';
wwv_flow_api.g_varchar2_table(878) := '65282130293B746869735B305D2E706172656E744E6F64652626622E696E736572744265666F726528746869735B305D292C622E6D61702866756E6374696F6E28297B76617220613D746869733B7768696C6528612E66697273744368696C642626313D';
wwv_flow_api.g_varchar2_table(879) := '3D3D612E66697273744368696C642E6E6F64655479706529613D612E66697273744368696C643B72657475726E20617D292E617070656E642874686973297D72657475726E20746869737D2C77726170496E6E65723A66756E6374696F6E2861297B7265';
wwv_flow_api.g_varchar2_table(880) := '7475726E206E2E697346756E6374696F6E2861293F746869732E656163682866756E6374696F6E2862297B6E2874686973292E77726170496E6E657228612E63616C6C28746869732C6229297D293A746869732E656163682866756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(881) := '76617220623D6E2874686973292C633D622E636F6E74656E747328293B632E6C656E6774683F632E77726170416C6C2861293A622E617070656E642861297D297D2C777261703A66756E6374696F6E2861297B76617220623D6E2E697346756E6374696F';
wwv_flow_api.g_varchar2_table(882) := '6E2861293B72657475726E20746869732E656163682866756E6374696F6E2863297B6E2874686973292E77726170416C6C28623F612E63616C6C28746869732C63293A61297D297D2C756E777261703A66756E6374696F6E28297B72657475726E207468';
wwv_flow_api.g_varchar2_table(883) := '69732E706172656E7428292E656163682866756E6374696F6E28297B6E2E6E6F64654E616D6528746869732C22626F647922297C7C6E2874686973292E7265706C6163655769746828746869732E6368696C644E6F646573297D292E656E6428297D7D29';
wwv_flow_api.g_varchar2_table(884) := '3B66756E6374696F6E2059622861297B72657475726E20612E7374796C652626612E7374796C652E646973706C61797C7C6E2E63737328612C22646973706C617922297D66756E6374696F6E205A622861297B696628216E2E636F6E7461696E7328612E';
wwv_flow_api.g_varchar2_table(885) := '6F776E6572446F63756D656E747C7C642C61292972657475726E21303B7768696C6528612626313D3D3D612E6E6F646554797065297B696628226E6F6E65223D3D3D59622861297C7C2268696464656E223D3D3D612E747970652972657475726E21303B';
wwv_flow_api.g_varchar2_table(886) := '613D612E706172656E744E6F64657D72657475726E21317D6E2E657870722E66696C746572732E68696464656E3D66756E6374696F6E2861297B72657475726E206C2E72656C6961626C6548696464656E4F66667365747328293F612E6F666673657457';
wwv_flow_api.g_varchar2_table(887) := '696474683C3D302626612E6F66667365744865696768743C3D30262621612E676574436C69656E74526563747328292E6C656E6774683A5A622861297D2C6E2E657870722E66696C746572732E76697369626C653D66756E6374696F6E2861297B726574';
wwv_flow_api.g_varchar2_table(888) := '75726E216E2E657870722E66696C746572732E68696464656E2861297D3B7661722024623D2F2532302F672C5F623D2F5C5B5C5D242F2C61633D2F5C723F5C6E2F672C62633D2F5E283F3A7375626D69747C627574746F6E7C696D6167657C7265736574';
wwv_flow_api.g_varchar2_table(889) := '7C66696C6529242F692C63633D2F5E283F3A696E7075747C73656C6563747C74657874617265617C6B657967656E292F693B66756E6374696F6E20646328612C622C632C64297B76617220653B6966286E2E69734172726179286229296E2E6561636828';
wwv_flow_api.g_varchar2_table(890) := '622C66756E6374696F6E28622C65297B637C7C5F622E746573742861293F6428612C65293A646328612B225B222B28226F626A656374223D3D747970656F66206526266E756C6C213D653F623A2222292B225D222C652C632C64297D293B656C73652069';
wwv_flow_api.g_varchar2_table(891) := '6628637C7C226F626A65637422213D3D6E2E74797065286229296428612C62293B656C736520666F72286520696E206229646328612B225B222B652B225D222C625B655D2C632C64297D6E2E706172616D3D66756E6374696F6E28612C62297B76617220';
wwv_flow_api.g_varchar2_table(892) := '632C643D5B5D2C653D66756E6374696F6E28612C62297B623D6E2E697346756E6374696F6E2862293F6228293A6E756C6C3D3D623F22223A622C645B642E6C656E6774685D3D656E636F6465555249436F6D706F6E656E742861292B223D222B656E636F';
wwv_flow_api.g_varchar2_table(893) := '6465555249436F6D706F6E656E742862297D3B696628766F696420303D3D3D62262628623D6E2E616A617853657474696E677326266E2E616A617853657474696E67732E747261646974696F6E616C292C6E2E697341727261792861297C7C612E6A7175';
wwv_flow_api.g_varchar2_table(894) := '6572792626216E2E6973506C61696E4F626A656374286129296E2E6561636828612C66756E6374696F6E28297B6528746869732E6E616D652C746869732E76616C7565297D293B656C736520666F72286320696E206129646328632C615B635D2C622C65';
wwv_flow_api.g_varchar2_table(895) := '293B72657475726E20642E6A6F696E28222622292E7265706C6163652824622C222B22297D2C6E2E666E2E657874656E64287B73657269616C697A653A66756E6374696F6E28297B72657475726E206E2E706172616D28746869732E73657269616C697A';
wwv_flow_api.g_varchar2_table(896) := '6541727261792829297D2C73657269616C697A6541727261793A66756E6374696F6E28297B72657475726E20746869732E6D61702866756E6374696F6E28297B76617220613D6E2E70726F7028746869732C22656C656D656E747322293B72657475726E';
wwv_flow_api.g_varchar2_table(897) := '20613F6E2E6D616B6541727261792861293A746869737D292E66696C7465722866756E6374696F6E28297B76617220613D746869732E747970653B72657475726E20746869732E6E616D652626216E2874686973292E697328223A64697361626C656422';
wwv_flow_api.g_varchar2_table(898) := '29262663632E7465737428746869732E6E6F64654E616D652926262162632E74657374286129262628746869732E636865636B65647C7C215A2E74657374286129297D292E6D61702866756E6374696F6E28612C62297B76617220633D6E287468697329';
wwv_flow_api.g_varchar2_table(899) := '2E76616C28293B72657475726E206E756C6C3D3D633F6E756C6C3A6E2E697341727261792863293F6E2E6D617028632C66756E6374696F6E2861297B72657475726E7B6E616D653A622E6E616D652C76616C75653A612E7265706C6163652861632C225C';
wwv_flow_api.g_varchar2_table(900) := '725C6E22297D7D293A7B6E616D653A622E6E616D652C76616C75653A632E7265706C6163652861632C225C725C6E22297D7D292E67657428297D7D292C6E2E616A617853657474696E67732E7868723D766F69642030213D3D612E416374697665584F62';
wwv_flow_api.g_varchar2_table(901) := '6A6563743F66756E6374696F6E28297B72657475726E20746869732E69734C6F63616C3F696328293A642E646F63756D656E744D6F64653E383F686328293A2F5E286765747C706F73747C686561647C7075747C64656C6574657C6F7074696F6E732924';
wwv_flow_api.g_varchar2_table(902) := '2F692E7465737428746869732E74797065292626686328297C7C696328297D3A68633B7661722065633D302C66633D7B7D2C67633D6E2E616A617853657474696E67732E78687228293B612E6174746163684576656E742626612E617474616368457665';
wwv_flow_api.g_varchar2_table(903) := '6E7428226F6E756E6C6F6164222C66756E6374696F6E28297B666F7228766172206120696E2066632966635B615D28766F696420302C2130297D292C6C2E636F72733D212167632626227769746843726564656E7469616C7322696E2067632C67633D6C';
wwv_flow_api.g_varchar2_table(904) := '2E616A61783D212167632C676326266E2E616A61785472616E73706F72742866756E6374696F6E2862297B69662821622E63726F7373446F6D61696E7C7C6C2E636F7273297B76617220633B72657475726E7B73656E643A66756E6374696F6E28642C65';
wwv_flow_api.g_varchar2_table(905) := '297B76617220662C673D622E78687228292C683D2B2B65633B696628672E6F70656E28622E747970652C622E75726C2C622E6173796E632C622E757365726E616D652C622E70617373776F7264292C622E7868724669656C647329666F72286620696E20';
wwv_flow_api.g_varchar2_table(906) := '622E7868724669656C647329675B665D3D622E7868724669656C64735B665D3B622E6D696D65547970652626672E6F766572726964654D696D65547970652626672E6F766572726964654D696D655479706528622E6D696D6554797065292C622E63726F';
wwv_flow_api.g_varchar2_table(907) := '7373446F6D61696E7C7C645B22582D5265717565737465642D57697468225D7C7C28645B22582D5265717565737465642D57697468225D3D22584D4C487474705265717565737422293B666F72286620696E206429766F69642030213D3D645B665D2626';
wwv_flow_api.g_varchar2_table(908) := '672E7365745265717565737448656164657228662C645B665D2B2222293B672E73656E6428622E686173436F6E74656E742626622E646174617C7C6E756C6C292C633D66756E6374696F6E28612C64297B76617220662C692C6A3B69662863262628647C';
wwv_flow_api.g_varchar2_table(909) := '7C343D3D3D672E72656164795374617465292969662864656C6574652066635B685D2C633D766F696420302C672E6F6E726561647973746174656368616E67653D6E2E6E6F6F702C642934213D3D672E726561647953746174652626672E61626F727428';
wwv_flow_api.g_varchar2_table(910) := '293B656C73657B6A3D7B7D2C663D672E7374617475732C22737472696E67223D3D747970656F6620672E726573706F6E7365546578742626286A2E746578743D672E726573706F6E736554657874293B7472797B693D672E737461747573546578747D63';
wwv_flow_api.g_varchar2_table(911) := '61746368286B297B693D22227D667C7C21622E69734C6F63616C7C7C622E63726F7373446F6D61696E3F313232333D3D3D66262628663D323034293A663D6A2E746578743F3230303A3430347D6A26266528662C692C6A2C672E676574416C6C52657370';
wwv_flow_api.g_varchar2_table(912) := '6F6E7365486561646572732829297D2C622E6173796E633F343D3D3D672E726561647953746174653F612E73657454696D656F75742863293A672E6F6E726561647973746174656368616E67653D66635B685D3D633A6328297D2C61626F72743A66756E';
wwv_flow_api.g_varchar2_table(913) := '6374696F6E28297B6326266328766F696420302C2130297D7D7D7D293B66756E6374696F6E20686328297B7472797B72657475726E206E657720612E584D4C48747470526571756573747D63617463682862297B7D7D66756E6374696F6E20696328297B';
wwv_flow_api.g_varchar2_table(914) := '7472797B72657475726E206E657720612E416374697665584F626A65637428224D6963726F736F66742E584D4C4854545022297D63617463682862297B7D7D6E2E616A61785365747570287B616363657074733A7B7363726970743A22746578742F6A61';
wwv_flow_api.g_varchar2_table(915) := '76617363726970742C206170706C69636174696F6E2F6A6176617363726970742C206170706C69636174696F6E2F65636D617363726970742C206170706C69636174696F6E2F782D65636D61736372697074227D2C636F6E74656E74733A7B7363726970';
wwv_flow_api.g_varchar2_table(916) := '743A2F5C62283F3A6A6176617C65636D61297363726970745C622F7D2C636F6E766572746572733A7B227465787420736372697074223A66756E6374696F6E2861297B72657475726E206E2E676C6F62616C4576616C2861292C617D7D7D292C6E2E616A';
wwv_flow_api.g_varchar2_table(917) := '617850726566696C7465722822736372697074222C66756E6374696F6E2861297B766F696420303D3D3D612E6361636865262628612E63616368653D2131292C612E63726F7373446F6D61696E262628612E747970653D22474554222C612E676C6F6261';
wwv_flow_api.g_varchar2_table(918) := '6C3D2131297D292C6E2E616A61785472616E73706F72742822736372697074222C66756E6374696F6E2861297B696628612E63726F7373446F6D61696E297B76617220622C633D642E686561647C7C6E28226865616422295B305D7C7C642E646F63756D';
wwv_flow_api.g_varchar2_table(919) := '656E74456C656D656E743B72657475726E7B73656E643A66756E6374696F6E28652C66297B623D642E637265617465456C656D656E74282273637269707422292C622E6173796E633D21302C612E73637269707443686172736574262628622E63686172';
wwv_flow_api.g_varchar2_table(920) := '7365743D612E73637269707443686172736574292C622E7372633D612E75726C2C622E6F6E6C6F61643D622E6F6E726561647973746174656368616E67653D66756E6374696F6E28612C63297B28637C7C21622E726561647953746174657C7C2F6C6F61';
wwv_flow_api.g_varchar2_table(921) := '6465647C636F6D706C6574652F2E7465737428622E726561647953746174652929262628622E6F6E6C6F61643D622E6F6E726561647973746174656368616E67653D6E756C6C2C622E706172656E744E6F64652626622E706172656E744E6F64652E7265';
wwv_flow_api.g_varchar2_table(922) := '6D6F76654368696C642862292C623D6E756C6C2C637C7C66283230302C22737563636573732229297D2C632E696E736572744265666F726528622C632E66697273744368696C64297D2C61626F72743A66756E6374696F6E28297B622626622E6F6E6C6F';
wwv_flow_api.g_varchar2_table(923) := '616428766F696420302C2130297D7D7D7D293B766172206A633D5B5D2C6B633D2F283D295C3F283F3D267C24297C5C3F5C3F2F3B6E2E616A61785365747570287B6A736F6E703A2263616C6C6261636B222C6A736F6E7043616C6C6261636B3A66756E63';
wwv_flow_api.g_varchar2_table(924) := '74696F6E28297B76617220613D6A632E706F7028297C7C6E2E657870616E646F2B225F222B45622B2B3B72657475726E20746869735B615D3D21302C617D7D292C6E2E616A617850726566696C74657228226A736F6E206A736F6E70222C66756E637469';
wwv_flow_api.g_varchar2_table(925) := '6F6E28622C632C64297B76617220652C662C672C683D622E6A736F6E70213D3D21312626286B632E7465737428622E75726C293F2275726C223A22737472696E67223D3D747970656F6620622E646174612626303D3D3D28622E636F6E74656E74547970';
wwv_flow_api.g_varchar2_table(926) := '657C7C2222292E696E6465784F6628226170706C69636174696F6E2F782D7777772D666F726D2D75726C656E636F646564222926266B632E7465737428622E64617461292626226461746122293B72657475726E20687C7C226A736F6E70223D3D3D622E';
wwv_flow_api.g_varchar2_table(927) := '6461746154797065735B305D3F28653D622E6A736F6E7043616C6C6261636B3D6E2E697346756E6374696F6E28622E6A736F6E7043616C6C6261636B293F622E6A736F6E7043616C6C6261636B28293A622E6A736F6E7043616C6C6261636B2C683F625B';
wwv_flow_api.g_varchar2_table(928) := '685D3D625B685D2E7265706C616365286B632C222431222B65293A622E6A736F6E70213D3D2131262628622E75726C2B3D2846622E7465737428622E75726C293F2226223A223F22292B622E6A736F6E702B223D222B65292C622E636F6E766572746572';
wwv_flow_api.g_varchar2_table(929) := '735B22736372697074206A736F6E225D3D66756E6374696F6E28297B72657475726E20677C7C6E2E6572726F7228652B2220776173206E6F742063616C6C656422292C675B305D7D2C622E6461746154797065735B305D3D226A736F6E222C663D615B65';
wwv_flow_api.g_varchar2_table(930) := '5D2C615B655D3D66756E6374696F6E28297B673D617267756D656E74737D2C642E616C776179732866756E6374696F6E28297B766F696420303D3D3D663F6E2861292E72656D6F766550726F702865293A615B655D3D662C625B655D262628622E6A736F';
wwv_flow_api.g_varchar2_table(931) := '6E7043616C6C6261636B3D632E6A736F6E7043616C6C6261636B2C6A632E70757368286529292C6726266E2E697346756E6374696F6E28662926266628675B305D292C673D663D766F696420307D292C2273637269707422293A766F696420307D292C6E';
wwv_flow_api.g_varchar2_table(932) := '2E706172736548544D4C3D66756E6374696F6E28612C622C63297B69662821617C7C22737472696E6722213D747970656F6620612972657475726E206E756C6C3B22626F6F6C65616E223D3D747970656F662062262628633D622C623D2131292C623D62';
wwv_flow_api.g_varchar2_table(933) := '7C7C643B76617220653D782E657865632861292C663D216326265B5D3B72657475726E20653F5B622E637265617465456C656D656E7428655B315D295D3A28653D6A61285B615D2C622C66292C662626662E6C656E67746826266E2866292E72656D6F76';
wwv_flow_api.g_varchar2_table(934) := '6528292C6E2E6D65726765285B5D2C652E6368696C644E6F64657329297D3B766172206C633D6E2E666E2E6C6F61643B6E2E666E2E6C6F61643D66756E6374696F6E28612C622C63297B69662822737472696E6722213D747970656F66206126266C6329';
wwv_flow_api.g_varchar2_table(935) := '72657475726E206C632E6170706C7928746869732C617267756D656E7473293B76617220642C652C662C673D746869732C683D612E696E6465784F6628222022293B72657475726E20683E2D31262628643D6E2E7472696D28612E736C69636528682C61';
wwv_flow_api.g_varchar2_table(936) := '2E6C656E67746829292C613D612E736C69636528302C6829292C6E2E697346756E6374696F6E2862293F28633D622C623D766F69642030293A622626226F626A656374223D3D747970656F662062262628653D22504F535422292C672E6C656E6774683E';
wwv_flow_api.g_varchar2_table(937) := '3026266E2E616A6178287B75726C3A612C747970653A657C7C22474554222C64617461547970653A2268746D6C222C646174613A627D292E646F6E652866756E6374696F6E2861297B663D617267756D656E74732C672E68746D6C28643F6E28223C6469';
wwv_flow_api.g_varchar2_table(938) := '763E22292E617070656E64286E2E706172736548544D4C286129292E66696E642864293A61297D292E616C776179732863262666756E6374696F6E28612C62297B672E656163682866756E6374696F6E28297B632E6170706C7928746869732C667C7C5B';
wwv_flow_api.g_varchar2_table(939) := '612E726573706F6E7365546578742C622C615D297D297D292C746869737D2C6E2E65616368285B22616A61785374617274222C22616A617853746F70222C22616A6178436F6D706C657465222C22616A61784572726F72222C22616A6178537563636573';
wwv_flow_api.g_varchar2_table(940) := '73222C22616A617853656E64225D2C66756E6374696F6E28612C62297B6E2E666E5B625D3D66756E6374696F6E2861297B72657475726E20746869732E6F6E28622C61297D7D292C6E2E657870722E66696C746572732E616E696D617465643D66756E63';
wwv_flow_api.g_varchar2_table(941) := '74696F6E2861297B72657475726E206E2E67726570286E2E74696D6572732C66756E6374696F6E2862297B72657475726E20613D3D3D622E656C656D7D292E6C656E6774687D3B66756E6374696F6E206D632861297B72657475726E206E2E697357696E';
wwv_flow_api.g_varchar2_table(942) := '646F772861293F613A393D3D3D612E6E6F6465547970653F612E64656661756C74566965777C7C612E706172656E7457696E646F773A21317D6E2E6F66667365743D7B7365744F66667365743A66756E6374696F6E28612C622C63297B76617220642C65';
wwv_flow_api.g_varchar2_table(943) := '2C662C672C682C692C6A2C6B3D6E2E63737328612C22706F736974696F6E22292C6C3D6E2861292C6D3D7B7D3B22737461746963223D3D3D6B262628612E7374796C652E706F736974696F6E3D2272656C617469766522292C683D6C2E6F666673657428';
wwv_flow_api.g_varchar2_table(944) := '292C663D6E2E63737328612C22746F7022292C693D6E2E63737328612C226C65667422292C6A3D28226162736F6C757465223D3D3D6B7C7C226669786564223D3D3D6B2926266E2E696E417272617928226175746F222C5B662C695D293E2D312C6A3F28';
wwv_flow_api.g_varchar2_table(945) := '643D6C2E706F736974696F6E28292C673D642E746F702C653D642E6C656674293A28673D7061727365466C6F61742866297C7C302C653D7061727365466C6F61742869297C7C30292C6E2E697346756E6374696F6E286229262628623D622E63616C6C28';
wwv_flow_api.g_varchar2_table(946) := '612C632C6E2E657874656E64287B7D2C682929292C6E756C6C213D622E746F702626286D2E746F703D622E746F702D682E746F702B67292C6E756C6C213D622E6C6566742626286D2E6C6566743D622E6C6566742D682E6C6566742B65292C227573696E';
wwv_flow_api.g_varchar2_table(947) := '6722696E20623F622E7573696E672E63616C6C28612C6D293A6C2E637373286D297D7D2C6E2E666E2E657874656E64287B6F66667365743A66756E6374696F6E2861297B696628617267756D656E74732E6C656E6774682972657475726E20766F696420';
wwv_flow_api.g_varchar2_table(948) := '303D3D3D613F746869733A746869732E656163682866756E6374696F6E2862297B6E2E6F66667365742E7365744F666673657428746869732C612C62297D293B76617220622C632C643D7B746F703A302C6C6566743A307D2C653D746869735B305D2C66';
wwv_flow_api.g_varchar2_table(949) := '3D652626652E6F776E6572446F63756D656E743B696628662972657475726E20623D662E646F63756D656E74456C656D656E742C6E2E636F6E7461696E7328622C65293F2822756E646566696E656422213D747970656F6620652E676574426F756E6469';
wwv_flow_api.g_varchar2_table(950) := '6E67436C69656E7452656374262628643D652E676574426F756E64696E67436C69656E74526563742829292C633D6D632866292C7B746F703A642E746F702B28632E70616765594F66667365747C7C622E7363726F6C6C546F70292D28622E636C69656E';
wwv_flow_api.g_varchar2_table(951) := '74546F707C7C30292C6C6566743A642E6C6566742B28632E70616765584F66667365747C7C622E7363726F6C6C4C656674292D28622E636C69656E744C6566747C7C30297D293A647D2C706F736974696F6E3A66756E6374696F6E28297B696628746869';
wwv_flow_api.g_varchar2_table(952) := '735B305D297B76617220612C622C633D7B746F703A302C6C6566743A307D2C643D746869735B305D3B72657475726E226669786564223D3D3D6E2E63737328642C22706F736974696F6E22293F623D642E676574426F756E64696E67436C69656E745265';
wwv_flow_api.g_varchar2_table(953) := '637428293A28613D746869732E6F6666736574506172656E7428292C623D746869732E6F666673657428292C6E2E6E6F64654E616D6528615B305D2C2268746D6C22297C7C28633D612E6F66667365742829292C632E746F702B3D6E2E63737328615B30';
wwv_flow_api.g_varchar2_table(954) := '5D2C22626F72646572546F705769647468222C2130292C632E6C6566742B3D6E2E63737328615B305D2C22626F726465724C6566745769647468222C213029292C7B746F703A622E746F702D632E746F702D6E2E63737328642C226D617267696E546F70';
wwv_flow_api.g_varchar2_table(955) := '222C2130292C6C6566743A622E6C6566742D632E6C6566742D6E2E63737328642C226D617267696E4C656674222C2130297D7D7D2C6F6666736574506172656E743A66756E6374696F6E28297B72657475726E20746869732E6D61702866756E6374696F';
wwv_flow_api.g_varchar2_table(956) := '6E28297B76617220613D746869732E6F6666736574506172656E743B7768696C6528612626216E2E6E6F64654E616D6528612C2268746D6C2229262622737461746963223D3D3D6E2E63737328612C22706F736974696F6E222929613D612E6F66667365';
wwv_flow_api.g_varchar2_table(957) := '74506172656E743B72657475726E20617C7C51617D297D7D292C6E2E65616368287B7363726F6C6C4C6566743A2270616765584F6666736574222C7363726F6C6C546F703A2270616765594F6666736574227D2C66756E6374696F6E28612C62297B7661';
wwv_flow_api.g_varchar2_table(958) := '7220633D2F592F2E746573742862293B6E2E666E5B615D3D66756E6374696F6E2864297B72657475726E205928746869732C66756E6374696F6E28612C642C65297B76617220663D6D632861293B72657475726E20766F696420303D3D3D653F663F6220';
wwv_flow_api.g_varchar2_table(959) := '696E20663F665B625D3A662E646F63756D656E742E646F63756D656E74456C656D656E745B645D3A615B645D3A766F696428663F662E7363726F6C6C546F28633F6E2866292E7363726F6C6C4C65667428293A652C633F653A6E2866292E7363726F6C6C';
wwv_flow_api.g_varchar2_table(960) := '546F702829293A615B645D3D65297D2C612C642C617267756D656E74732E6C656E6774682C6E756C6C297D7D292C6E2E65616368285B22746F70222C226C656674225D2C66756E6374696F6E28612C62297B6E2E637373486F6F6B735B625D3D5561286C';
wwv_flow_api.g_varchar2_table(961) := '2E706978656C506F736974696F6E2C66756E6374696F6E28612C63297B72657475726E20633F28633D536128612C62292C4F612E746573742863293F6E2861292E706F736974696F6E28295B625D2B227078223A63293A766F696420307D297D292C6E2E';
wwv_flow_api.g_varchar2_table(962) := '65616368287B4865696768743A22686569676874222C57696474683A227769647468227D2C66756E6374696F6E28612C62297B6E2E65616368287B0A70616464696E673A22696E6E6572222B612C636F6E74656E743A622C22223A226F75746572222B61';
wwv_flow_api.g_varchar2_table(963) := '7D2C66756E6374696F6E28632C64297B6E2E666E5B645D3D66756E6374696F6E28642C65297B76617220663D617267756D656E74732E6C656E677468262628637C7C22626F6F6C65616E22213D747970656F662064292C673D637C7C28643D3D3D21307C';
wwv_flow_api.g_varchar2_table(964) := '7C653D3D3D21303F226D617267696E223A22626F7264657222293B72657475726E205928746869732C66756E6374696F6E28622C632C64297B76617220653B72657475726E206E2E697357696E646F772862293F622E646F63756D656E742E646F63756D';
wwv_flow_api.g_varchar2_table(965) := '656E74456C656D656E745B22636C69656E74222B615D3A393D3D3D622E6E6F6465547970653F28653D622E646F63756D656E74456C656D656E742C4D6174682E6D617828622E626F64795B227363726F6C6C222B615D2C655B227363726F6C6C222B615D';
wwv_flow_api.g_varchar2_table(966) := '2C622E626F64795B226F6666736574222B615D2C655B226F6666736574222B615D2C655B22636C69656E74222B615D29293A766F696420303D3D3D643F6E2E63737328622C632C67293A6E2E7374796C6528622C632C642C67297D2C622C663F643A766F';
wwv_flow_api.g_varchar2_table(967) := '696420302C662C6E756C6C297D7D297D292C6E2E666E2E657874656E64287B62696E643A66756E6374696F6E28612C622C63297B72657475726E20746869732E6F6E28612C6E756C6C2C622C63297D2C756E62696E643A66756E6374696F6E28612C6229';
wwv_flow_api.g_varchar2_table(968) := '7B72657475726E20746869732E6F666628612C6E756C6C2C62297D2C64656C65676174653A66756E6374696F6E28612C622C632C64297B72657475726E20746869732E6F6E28622C612C632C64297D2C756E64656C65676174653A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(969) := '612C622C63297B72657475726E20313D3D3D617267756D656E74732E6C656E6774683F746869732E6F666628612C222A2A22293A746869732E6F666628622C617C7C222A2A222C63297D7D292C6E2E666E2E73697A653D66756E6374696F6E28297B7265';
wwv_flow_api.g_varchar2_table(970) := '7475726E20746869732E6C656E6774687D2C6E2E666E2E616E6453656C663D6E2E666E2E6164644261636B2C2266756E6374696F6E223D3D747970656F6620646566696E652626646566696E652E616D642626646566696E6528226A7175657279222C5B';
wwv_flow_api.g_varchar2_table(971) := '5D2C66756E6374696F6E28297B72657475726E206E7D293B766172206E633D612E6A51756572792C6F633D612E243B72657475726E206E2E6E6F436F6E666C6963743D66756E6374696F6E2862297B72657475726E20612E243D3D3D6E262628612E243D';
wwv_flow_api.g_varchar2_table(972) := '6F63292C622626612E6A51756572793D3D3D6E262628612E6A51756572793D6E63292C6E7D2C627C7C28612E6A51756572793D612E243D6E292C6E7D293B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(25156406274341175)
,p_plugin_id=>wwv_flow_api.id(25154239159342583)
,p_file_name=>'jquery.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E732D672D636F6E7461696E65727B77696474683A3938253B6D617267696E2D6C6566743A6175746F3B6D617267696E2D72696768743A6175746F7D2E732D672D726F777B706F736974696F6E3A72656C61746976653B77696474683A313030257D2E73';
wwv_flow_api.g_varchar2_table(2) := '2D672D726F77205B636C6173735E3D732D672D636F6C5D7B666C6F61743A6C6566743B6D617267696E3A2E3572656D2032253B6D696E2D6865696768743A2E31323572656D7D2E732D672D636F6C2D312C2E732D672D636F6C2D31302C2E732D672D636F';
wwv_flow_api.g_varchar2_table(3) := '6C2D31312C2E732D672D636F6C2D31322C2E732D672D636F6C2D322C2E732D672D636F6C2D332C2E732D672D636F6C2D342C2E732D672D636F6C2D352C2E732D672D636F6C2D362C2E732D672D636F6C2D372C2E732D672D636F6C2D382C2E732D672D63';
wwv_flow_api.g_varchar2_table(4) := '6F6C2D397B77696474683A3936257D2E732D672D636F6C2D312D736D7B77696474683A342E3333257D2E732D672D636F6C2D322D736D7B77696474683A31322E3636257D2E732D672D636F6C2D332D736D7B77696474683A3231257D2E732D672D636F6C';
wwv_flow_api.g_varchar2_table(5) := '2D342D736D7B77696474683A32392E3333257D2E732D672D636F6C2D352D736D7B77696474683A33372E3636257D2E732D672D636F6C2D362D736D7B77696474683A3436257D2E732D672D636F6C2D372D736D7B77696474683A35342E3333257D2E732D';
wwv_flow_api.g_varchar2_table(6) := '672D636F6C2D382D736D7B77696474683A36322E3636257D2E732D672D636F6C2D392D736D7B77696474683A3731257D2E732D672D636F6C2D31302D736D7B77696474683A37392E3333257D2E732D672D636F6C2D31312D736D7B77696474683A38372E';
wwv_flow_api.g_varchar2_table(7) := '3636257D2E732D672D636F6C2D31322D736D7B77696474683A3936257D2E732D672D726F773A3A61667465727B636F6E74656E743A22223B646973706C61793A7461626C653B636C6561723A626F74687D2E68696464656E2D736D7B646973706C61793A';
wwv_flow_api.g_varchar2_table(8) := '6E6F6E657D406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A33332E3735656D297B2E732D672D636F6E7461696E65727B77696474683A3938257D7D406D65646961206F6E6C792073637265656E20616E6420286D69';
wwv_flow_api.g_varchar2_table(9) := '6E2D77696474683A3630656D297B2E732D672D636F6C2D312C2E732D672D636F6C2D322C2E732D672D636F6C2D332C2E732D672D636F6C2D342C2E732D672D636F6C2D352C2E732D672D636F6C2D367B77696474683A3436257D2E732D672D636F6C2D31';
wwv_flow_api.g_varchar2_table(10) := '302C2E732D672D636F6C2D31312C2E732D672D636F6C2D31322C2E732D672D636F6C2D372C2E732D672D636F6C2D382C2E732D672D636F6C2D397B77696474683A3936257D2E68696464656E2D736D7B646973706C61793A626C6F636B7D7D406D656469';
wwv_flow_api.g_varchar2_table(11) := '61206F6E6C792073637265656E20616E6420286D696E2D77696474683A3636656D297B2E732D672D636F6E7461696E65727B77696474683A3938257D2E732D672D636F6C2D317B77696474683A342E3333257D2E732D672D636F6C2D327B77696474683A';
wwv_flow_api.g_varchar2_table(12) := '31322E3636257D2E732D672D636F6C2D337B77696474683A3231257D2E732D672D636F6C2D347B77696474683A32392E3333257D2E732D672D636F6C2D357B77696474683A33372E3636257D2E732D672D636F6C2D367B77696474683A3436257D2E732D';
wwv_flow_api.g_varchar2_table(13) := '672D636F6C2D377B77696474683A35342E3333257D2E732D672D636F6C2D387B77696474683A36322E3636257D2E732D672D636F6C2D397B77696474683A3731257D2E732D672D636F6C2D31307B77696474683A37392E3333257D2E732D672D636F6C2D';
wwv_flow_api.g_varchar2_table(14) := '31317B77696474683A38372E3636257D2E732D672D636F6C2D31327B77696474683A3936257D2E68696464656E2D736D7B646973706C61793A626C6F636B7D7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(25156829149341176)
,p_plugin_id=>wwv_flow_api.id(25154239159342583)
,p_file_name=>'responsive-grid.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '766172206D6174657269616C43617264733D66756E6374696F6E28297B2275736520737472696374223B72657475726E7B696E697469616C697A653A66756E6374696F6E28652C612C742C722C692C6E297B66756E6374696F6E207028297B7472797B61';
wwv_flow_api.g_varchar2_table(2) := '7065782E7574696C2E73686F775370696E6E6572286C297D63617463682861297B76617220743D2428223C7370616E3E3C2F7370616E3E22293B742E6174747228226964222C226C6F61646572222B65292C742E616464436C617373282263742D6C6F61';
wwv_flow_api.g_varchar2_table(3) := '6465722066612D737461636B2066612D337822293B76617220723D2428223C693E3C2F693E22293B722E616464436C617373282266612066612D636972636C652066612D737461636B2D327822292C722E6373732822636F6C6F72222C22726762612831';
wwv_flow_api.g_varchar2_table(4) := '32312C3132312C3132312C302E362922293B76617220693D2428223C693E3C2F693E22293B692E616464436C617373282266612066612D726566726573682066612D7370696E2066612D696E76657273652066612D737461636B2D317822292C692E6373';
wwv_flow_api.g_varchar2_table(5) := '732822616E696D6174696F6E2D6475726174696F6E222C22312E387322292C742E617070656E642872292C742E617070656E642869292C6C2E617070656E642874297D7D66756E6374696F6E204328297B7D66756E6374696F6E20662865297B6C2E656D';
wwv_flow_api.g_varchar2_table(6) := '70747928293B76617220613D68286C293B652E726F772626652E726F772E6C656E6774683E303F4128612C652E726F772C64293A286C2E63737328226D696E2D686569676874222C2222292C612E617070656E6428273C64697620636C6173733D22732D';
wwv_flow_api.g_varchar2_table(7) := '672D636F6C2D3132223E272B742B223C2F6469763E2229297D66756E6374696F6E20762865297B76617220613D2428223C6469763E3C2F6469763E22293B72657475726E20612E616464436C6173732822732D672D636F6E7461696E657222292C612E63';
wwv_flow_api.g_varchar2_table(8) := '737328226D696E2D686569676874222C22313730707822292C652E617070656E642861292C617D66756E6374696F6E20682865297B76617220613D2428223C6469763E3C2F6469763E22293B72657475726E20612E616464436C6173732822732D672D72';
wwv_flow_api.g_varchar2_table(9) := '6F7722292C652E617070656E642861292C617D66756E6374696F6E206728297B69662861297028292C617065782E7365727665722E706C7567696E28612C7B706167654974656D733A697D2C7B737563636573733A662C6572726F723A66756E6374696F';
wwv_flow_api.g_varchar2_table(10) := '6E2865297B6C2E656D70747928292C636F6E736F6C652E6C6F6728652E726573706F6E736554657874292C6C2E617070656E6428223C7370616E3E4572726F72206F63637572656420706C6561736520636865636B20636F6E736F6C6520666F72206D6F';
wwv_flow_api.g_varchar2_table(11) := '726520696E666F726D6174696F6E3C2F7370616E3E22297D2C64617461547970653A226A736F6E227D293B656C7365207472797B7028292C73657454696D656F75742866756E6374696F6E28297B6628646174614A534F4E297D2C353030297D63617463';
wwv_flow_api.g_varchar2_table(12) := '682865297B636F6E736F6C652E6C6F6728226E6565642064617461206A736F6E22292C636F6E736F6C652E6C6F672865297D7D66756E6374696F6E204128652C612C74297B612626612E6C656E6774683E30262628242E6561636828612C66756E637469';
wwv_flow_api.g_varchar2_table(13) := '6F6E28612C72297B722E434152445F545950453F2269636F6E223D3D3D722E434152445F545950452E746F4C6F7765724361736528293F5228612C652C722C74293A5F28612C652C722C742C722E434152445F43484152545F434F4E464947293A522861';
wwv_flow_api.g_varchar2_table(14) := '2C652C722C74297D292C432829297D66756E6374696F6E205228652C612C742C72297B76617220693D226261636B67726F756E643A206C696E6561722D6772616469656E742836306465672C2068736C28222B32332A65253335302B222C203535252C20';
wwv_flow_api.g_varchar2_table(15) := '363025292C2068736C28222B32332A65253335302B222C203530252C2036302529293B626F782D736861646F773A203020313270782032307078202D313070782072676261283233302C203233302C203233302C20302E3238292C203020347078203230';
wwv_flow_api.g_varchar2_table(16) := '707820307078207267626128302C20302C20302C20302E3132292C20302037707820387078202D3570782072676261283233302C203233302C203233302C20302E32293B222C6E3D2428223C6469763E3C2F6469763E22293B6E2E616464436C61737328';
wwv_flow_api.g_varchar2_table(17) := '22732D672D636F6C2D222B722E636172645769647468293B76617220733D2428223C6469763E3C2F6469763E22293B732E616464436C617373282261742D636172642061742D636172642D737461747322293B76617220643D2428223C6469763E3C2F64';
wwv_flow_api.g_varchar2_table(18) := '69763E22293B696628642E616464436C6173732822636172642D68656164657222292C742E434152445F49434F4E297B766172206F3D2428223C693E3C2F693E22293B6F2E616464436C6173732822666120222B742E434152445F49434F4E293B766172';
wwv_flow_api.g_varchar2_table(19) := '206C3D766F69642030213D742E434152445F49434F4E5F434F4C4F522626742E434152445F49434F4E5F434F4C4F522E6C656E6774683E303F742E434152445F49434F4E5F434F4C4F523A227768697465223B6F2E6174747228227374796C65222C2263';
wwv_flow_api.g_varchar2_table(20) := '6F6C6F723A222B6C292C642E617070656E64286F297D642E6174747228227374796C65222C742E434152445F4845414445525F5354594C457C7C69292C732E617070656E642864293B76617220633D2428223C6469763E3C2F6469763E22293B632E6164';
wwv_flow_api.g_varchar2_table(21) := '64436C6173732822636172642D636F6E74656E7422293B76617220703D766F69642030213D742E434152445F5449544C453F742E434152445F5449544C453A22223B632E617070656E6428273C7020636C6173733D2263617465676F7279223E272B702B';
wwv_flow_api.g_varchar2_table(22) := '223C2F703E22293B76617220433D766F69642030213D742E434152445F56414C55453F742E434152445F56414C55453A22223B632E617070656E6428273C683220636C6173733D227469746C65223E272B432B223C2F68323E22292C732E617070656E64';
wwv_flow_api.g_varchar2_table(23) := '2863293B76617220663D2428223C6469763E3C2F6469763E22293B662E616464436C6173732822636172642D666F6F74657222293B76617220763D2428223C6469763E3C2F6469763E22293B696628742E434152445F464F4F544552262628763D242822';
wwv_flow_api.g_varchar2_table(24) := '3C6469763E3C2F6469763E22292C762E616464436C6173732822737461747322292C762E617070656E6428742E434152445F464F4F54455229292C662E617070656E642876292C732E617070656E642866292C6E2E617070656E642873292C742E434152';
wwv_flow_api.g_varchar2_table(25) := '445F4C494E4B297B76617220683D2428223C613E3C2F613E22293B682E61747472282268726566222C742E434152445F4C494E4B292C682E617070656E64286E292C612E617070656E642868297D656C736520612E617070656E64286E297D66756E6374';
wwv_flow_api.g_varchar2_table(26) := '696F6E205F28612C742C722C692C6E297B76617220733D226261636B67726F756E643A206C696E6561722D6772616469656E742836306465672C2068736C28222B32332A61253335302B222C203535252C20363025292C2068736C28222B32332A612533';
wwv_flow_api.g_varchar2_table(27) := '35302B222C203530252C2036302529293B626F782D736861646F773A203020313270782032307078202D313070782072676261283233302C203233302C203233302C20302E3238292C203020347078203230707820307078207267626128302C20302C20';
wwv_flow_api.g_varchar2_table(28) := '302C20302E3132292C20302037707820387078202D3570782072676261283233302C203233302C203233302C20302E32293B222C643D7B66756C6C57696474683A21302C636861727450616464696E673A7B626F74746F6D3A2D31322C746F703A32382C';
wwv_flow_api.g_varchar2_table(29) := '72696768743A33302C6C6566743A2D357D7D2C6F3D7B7D3B6966286E262622737472696E67223D3D747970656F66206E297472797B6F3D4A534F4E2E7061727365286E297D6361746368286C297B636F6E736F6C652E6C6F6728224572726F7220776869';
wwv_flow_api.g_varchar2_table(30) := '6C652074727920746F20706172736520434152445F43484152545F434F4E4649473A20222B6C2B6E297D656C7365206F3D6E3B242E657874656E642821302C642C6F293B76617220633D2263742D63686172742D222B652B612C703D2428223C6469763E';
wwv_flow_api.g_varchar2_table(31) := '3C2F6469763E22293B702E616464436C6173732822732D672D636F6C2D222B692E636172645769647468293B76617220433D2428223C6469763E3C2F6469763E22293B432E616464436C617373282261742D6361726422293B76617220663D2428223C64';
wwv_flow_api.g_varchar2_table(32) := '69763E3C2F6469763E22293B662E616464436C6173732822636172642D68656164657220636172642D636861727422292C662E6174747228227374796C65222C722E434152445F4845414445525F5354594C457C7C73293B76617220763D2428223C6469';
wwv_flow_api.g_varchar2_table(33) := '763E3C2F6469763E22293B762E616464436C617373282263742D636861727422292C762E6174747228226964222C63292C662E617070656E642876292C432E617070656E642866293B76617220683D2428223C6469763E3C2F6469763E22293B682E6164';
wwv_flow_api.g_varchar2_table(34) := '64436C6173732822636172642D636F6E74656E7422293B76617220673D766F69642030213D722E434152445F5449544C452626722E434152445F5449544C452E6C656E6774683E303F722E434152445F5449544C453A22223B682E617070656E6428273C';
wwv_flow_api.g_varchar2_table(35) := '7020636C6173733D2263617465676F7279223E272B672B223C2F703E22293B76617220413D766F69642030213D722E434152445F56414C55452626722E434152445F56414C55452E6C656E6774683E303F722E434152445F56414C55453A222D223B682E';
wwv_flow_api.g_varchar2_table(36) := '617070656E6428273C683220636C6173733D227469746C65223E272B412B223C2F68323E22292C432E617070656E642868293B76617220523D2428223C6469763E3C2F6469763E22293B522E616464436C6173732822636172642D666F6F74657222293B';
wwv_flow_api.g_varchar2_table(37) := '766172205F3D2428223C6469763E3C2F6469763E22293B696628722E434152445F464F4F5445522626285F3D2428223C6469763E3C2F6469763E22292C5F2E616464436C6173732822737461747322292C5F2E617070656E6428722E434152445F464F4F';
wwv_flow_api.g_varchar2_table(38) := '54455229292C522E617070656E64285F292C432E617070656E642852292C702E617070656E642843292C722E434152445F4C494E4B297B76617220753D2428223C613E3C2F613E22293B752E61747472282268726566222C722E434152445F4C494E4B29';
wwv_flow_api.g_varchar2_table(39) := '2C752E617070656E642870292C742E617070656E642875297D656C736520742E617070656E642870293B76617220443B696628722E434152445F43484152545F44415441297B76617220793D7B7D3B69662822737472696E67223D3D747970656F662072';
wwv_flow_api.g_varchar2_table(40) := '2E434152445F43484152545F44415441297472797B793D4A534F4E2E706172736528722E434152445F43484152545F44415441297D6361746368286C297B636F6E736F6C652E6C6F6728224572726F72207768696C652074727920746F20706172736520';
wwv_flow_api.g_varchar2_table(41) := '434152445F43484152545F4441544122292C636F6E736F6C652E6C6F67286C292C636F6E736F6C652E6C6F6728722E434152445F43484152545F44415441297D656C736520793D722E434152445F43484152545F444154413B73776974636828722E4341';
wwv_flow_api.g_varchar2_table(42) := '52445F545950452E746F4C6F776572436173652829297B636173652263686172742D6C696E65223A443D6E65772043686172746973742E4C696E65282223222B632C792C64293B627265616B3B636173652263686172742D626172223A443D6E65772043';
wwv_flow_api.g_varchar2_table(43) := '686172746973742E426172282223222B632C792C64293B627265616B3B636173652263686172742D706965223A642E636861727450616464696E673D7B7D2C443D6E65772043686172746973742E506965282223222B632C792C64293B627265616B3B64';
wwv_flow_api.g_varchar2_table(44) := '656661756C743A636F6E736F6C652E6C6F6728224E6F2076616C6964204368617274207479706522297D766172204F3D766F69642030213D722E434152445F49434F4E5F434F4C4F522626722E434152445F49434F4E5F434F4C4F522E6C656E6774683E';
wwv_flow_api.g_varchar2_table(45) := '303F722E434152445F49434F4E5F434F4C4F523A227768697465223B442E6F6E282264726177222C66756E6374696F6E2865297B2822626172223D3D3D652E747970657C7C226C696E65223D3D3D652E747970657C7C22706F696E74223D3D3D652E7479';
wwv_flow_api.g_varchar2_table(46) := '706529262628642E7374726F6B6557696474683F652E656C656D656E742E61747472287B7374796C653A227374726F6B653A2020222B4F2B223B207374726F6B652D77696474683A222B642E7374726F6B6557696474682B2270783B227D293A652E656C';
wwv_flow_api.g_varchar2_table(47) := '656D656E742E61747472287B7374796C653A227374726F6B653A2020222B4F7D29292C2822736C696365223D3D3D652E747970657C7C2261726561223D3D3D652E74797065292626652E656C656D656E742E61747472287B7374796C653A2266696C6C3A';
wwv_flow_api.g_varchar2_table(48) := '20222B4F2B223B2066696C6C2D6F7061636974793A20222B28652E696E6465782531302B32292F31307D292C642E646F6E75743D3D3D2130262628642E736C69636557696474682626242876292E66696E6428222E63742D736C6963652D646F6E757422';
wwv_flow_api.g_varchar2_table(49) := '292E63737328227374726F6B652D7769647468222C642E736C69636557696474682E746F537472696E6728292B22707822292C652E656C656D656E742E61747472287B7374796C653A227374726F6B652D6F7061636974793A20222B282D652E696E6465';
wwv_flow_api.g_varchar2_table(50) := '782531302B3130292F31302B223B207374726F6B653A2020222B4F2B223B227D292C242876292E66696E6428222E63742D6C6162656C22292E63737328227374726F6B65222C22696E697469616C22292C242876292E66696E6428222E63742D6C616265';
wwv_flow_api.g_varchar2_table(51) := '6C22292E637373282266696C6C222C4F29292C242876292E66696E6428222E63742D736C6963652D70696522292E6174747228227374726F6B65222C4F292C242876292E66696E6428222E63742D736C6963652D646F6E757422292E6174747228227374';
wwv_flow_api.g_varchar2_table(52) := '726F6B65222C4F292C242876292E66696E6428222E63742D6C6162656C22292E6373732822636F6C6F72222C4F292C242876292E66696E6428222E63742D6772696422292E63737328227374726F6B65222C4F292C242876292E66696E6428222E63742D';
wwv_flow_api.g_varchar2_table(53) := '6772696422292E63737328226F706163697479222C222E3422297D297D7D76617220733D7B6361726457696474683A342C726566726573683A307D2C643D7B7D2C6F3D24282223222B65293B6966286F2E6C656E6774683E30297B766172206C3D76286F';
wwv_flow_api.g_varchar2_table(54) := '293B69662822737472696E67223D3D747970656F662072297472797B643D4A534F4E2E70617273652872297D63617463682863297B636F6E736F6C652E6C6F6728224572726F72207768696C652074727920746F207061727365207564436F6E6669674A';
wwv_flow_api.g_varchar2_table(55) := '534F4E2E20506C6561736520636865636B20796F757220436F6E666967204A534F4E2E205374616E6461726420436F6E6669672077696C6C20626520757365642E22292C636F6E736F6C652E6C6F672863292C636F6E736F6C652E6C6F672872292C643D';
wwv_flow_api.g_varchar2_table(56) := '7B7D7D656C736520643D723B7472797B643D242E657874656E642821302C732C64297D63617463682863297B636F6E736F6C652E6C6F6728224572726F72207768696C652074727920746F206D65726765207564436F6E6669674A534F4E20696E746F20';
wwv_flow_api.g_varchar2_table(57) := '5374616E64617264204A534F4E20696620616E7920617474726962757465206973206D697373696E672E20506C6561736520636865636B20796F757220436F6E666967204A534F4E2E205374616E6461726420436F6E6669672077696C6C206265207573';
wwv_flow_api.g_varchar2_table(58) := '65642E22292C636F6E736F6C652E6C6F672863292C643D732C636F6E736F6C652E6C6F672864297D6728293B7472797B617065782E6A5175657279282223222B6E292E62696E6428226170657872656672657368222C66756E6374696F6E28297B303D3D';
wwv_flow_api.g_varchar2_table(59) := '6C2E6368696C6472656E28227370616E22292E6C656E67746826266728297D297D63617463682863297B636F6E736F6C652E6C6F67282243616E27742062696E642072656672657368206576656E74206F6E20222B6E2B222E2041706578206973206D69';
wwv_flow_api.g_varchar2_table(60) := '7373696E6722292C636F6E736F6C652E6C6F672863297D642E726566726573683E302626736574496E74657276616C2866756E6374696F6E28297B303D3D6C2E6368696C6472656E28227370616E22292E6C656E67746826266728297D2C3165332A642E';
wwv_flow_api.g_varchar2_table(61) := '72656672657368297D656C736520636F6E736F6C652E6C6F67282243616E27742066696E6420706172656E7449443A20222B65297D7D7D28293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(25157204704341176)
,p_plugin_id=>wwv_flow_api.id(25154239159342583)
,p_file_name=>'script.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E63742D6C6F616465727B706F736974696F6E3A6162736F6C7574653B746F703A373070783B77696474683A313030253B7A2D696E6465783A313B746578742D616C69676E3A63656E7465727D2E63742D6C6162656C7B666F6E742D73697A653A313270';
wwv_flow_api.g_varchar2_table(2) := '787D2E61742D636172647B646973706C61793A696E6C696E652D626C6F636B3B706F736974696F6E3A72656C61746976653B77696474683A313030253B6D617267696E3A3235707820303B626F782D736861646F773A3020317078203470782030207267';
wwv_flow_api.g_varchar2_table(3) := '626128302C302C302C2E3434293B626F726465722D7261646975733A3170783B636F6C6F723A7267626128302C302C302C2E3837293B6261636B67726F756E643A236666667D2E61742D636172643A686F7665723E2E636172642D6865616465727B2D77';
wwv_flow_api.g_varchar2_table(4) := '65626B69742D66696C7465723A677261797363616C652831303025293B66696C7465723A677261797363616C652831303025297D2E61742D63617264202E636172642D6865696768742D696E64696361746F727B6D617267696E2D746F703A313030257D';
wwv_flow_api.g_varchar2_table(5) := '2E61742D63617264202E7469746C657B6D617267696E2D746F703A303B6D617267696E2D626F74746F6D3A3570787D2E61742D63617264202E636172642D696D6167657B6865696768743A3630253B706F736974696F6E3A72656C61746976653B6F7665';
wwv_flow_api.g_varchar2_table(6) := '72666C6F773A68696464656E3B6D617267696E2D6C6566743A313570783B6D617267696E2D72696768743A313570783B6D617267696E2D746F703A2D333070783B626F726465722D7261646975733A3670787D2E61742D63617264202E636172642D696D';
wwv_flow_api.g_varchar2_table(7) := '61676520696D677B77696474683A313030253B6865696768743A313030253B626F726465722D7261646975733A3670783B706F696E7465722D6576656E74733A6E6F6E657D2E61742D63617264202E636172642D696D616765202E636172642D7469746C';
wwv_flow_api.g_varchar2_table(8) := '657B706F736974696F6E3A6162736F6C7574653B626F74746F6D3A313570783B6C6566743A313570783B636F6C6F723A236666663B666F6E742D73697A653A312E33656D3B746578742D736861646F773A30203270782035707820726762612833332C33';
wwv_flow_api.g_varchar2_table(9) := '332C33332C2E35297D2E61742D63617264202E63617465676F72793A6E6F74285B636C6173732A3D746578742D5D297B636F6C6F723A233939397D2E61742D63617264202E636172642D636F6E74656E747B70616464696E673A3135707820323070787D';
wwv_flow_api.g_varchar2_table(10) := '2E61742D63617264202E636172642D636F6E74656E74202E63617465676F72797B6D617267696E2D626F74746F6D3A307D2E61742D63617264202E636172642D6865616465727B626F782D736861646F773A3020313070782033307078202D3132707820';
wwv_flow_api.g_varchar2_table(11) := '7267626128302C302C302C2E3432292C302034707820323570782030207267626128302C302C302C2E3132292C30203870782031307078202D357078207267626128302C302C302C2E32293B6D617267696E3A2D32307078203135707820303B626F7264';
wwv_flow_api.g_varchar2_table(12) := '65722D7261646975733A3170783B70616464696E673A313570783B6261636B67726F756E642D636F6C6F723A233939393B7472616E736974696F6E3A616C6C202E377320656173652D6F75747D2E61742D63617264202E636172642D686561646572202E';
wwv_flow_api.g_varchar2_table(13) := '7469746C657B636F6C6F723A234646467D2E61742D63617264202E636172642D686561646572202E63617465676F72797B6D617267696E2D626F74746F6D3A303B636F6C6F723A72676261283235352C3235352C3235352C2E3632297D2E61742D636172';
wwv_flow_api.g_varchar2_table(14) := '64202E636172642D6865616465722E636172642D63686172747B70616464696E673A303B6D696E2D6865696768743A31363070787D2E61742D63617264202E636172642D6865616465722E636172642D63686172742B2E636F6E74656E742068347B6D61';
wwv_flow_api.g_varchar2_table(15) := '7267696E2D746F703A307D2E61742D63617264202E636172642D686561646572202E63742D6C6162656C7B636F6C6F723A72676261283235352C3235352C3235352C2E37297D2E61742D63617264202E636172642D686561646572202E63742D67726964';
wwv_flow_api.g_varchar2_table(16) := '7B7374726F6B653A72676261283235352C3235352C3235352C2E32297D2E61742D63617264202E63686172742D7469746C657B706F736974696F6E3A6162736F6C7574653B746F703A323570783B77696474683A313030253B746578742D616C69676E3A';
wwv_flow_api.g_varchar2_table(17) := '63656E7465727D2E61742D63617264202E63686172742D7469746C652068337B6D617267696E3A303B636F6C6F723A234646467D2E61742D63617264202E63686172742D7469746C652068367B6D617267696E3A303B636F6C6F723A7267626128323535';
wwv_flow_api.g_varchar2_table(18) := '2C3235352C3235352C2E34297D2E61742D63617264202E636172642D666F6F746572202E617574686F722C2E61742D63617264202E636172642D666F6F7465722068367B636F6C6F723A233939397D2E61742D63617264202E636172642D666F6F746572';
wwv_flow_api.g_varchar2_table(19) := '7B6D617267696E3A30203230707820313070783B70616464696E672D746F703A313070783B626F726465722D746F703A31707820736F6C696420236565657D2E61742D63617264202E636172642D666F6F746572202E636F6E74656E747B646973706C61';
wwv_flow_api.g_varchar2_table(20) := '793A626C6F636B7D2E61742D63617264202E636172642D666F6F746572206469767B646973706C61793A696E6C696E652D626C6F636B7D2E61742D63617264202E636172642D666F6F746572202E73746174737B6C696E652D6865696768743A32327078';
wwv_flow_api.g_varchar2_table(21) := '3B636F6C6F723A233939393B666F6E742D73697A653A313270787D2E61742D63617264202E636172642D666F6F746572202E7374617473202E6D6174657269616C2D69636F6E737B706F736974696F6E3A72656C61746976653B746F703A3470783B666F';
wwv_flow_api.g_varchar2_table(22) := '6E742D73697A653A313670787D2E61742D6361726420696D677B77696474683A313030253B6865696768743A6175746F7D2E61742D63617264202E7461626C657B6D617267696E2D626F74746F6D3A307D2E61742D63617264202E7461626C652074723A';
wwv_flow_api.g_varchar2_table(23) := '66697273742D6368696C642074647B626F726465722D746F703A6E6F6E657D2E61742D636172642D7374617473202E7469746C657B6D617267696E3A307D2E61742D636172642D7374617473202E636172642D6865616465727B666C6F61743A6C656674';
wwv_flow_api.g_varchar2_table(24) := '3B746578742D616C69676E3A63656E7465727D2E61742D636172642D7374617473202E636172642D68656164657220697B666F6E742D73697A653A333670783B6C696E652D6865696768743A353670783B77696474683A353670783B6865696768743A35';
wwv_flow_api.g_varchar2_table(25) := '3670787D2E61742D636172642D7374617473202E636172642D636F6E74656E747B746578742D616C69676E3A72696768743B70616464696E672D746F703A313070787D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(25157602014341178)
,p_plugin_id=>wwv_flow_api.id(25154239159342583)
,p_file_name=>'style.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/nl_detora_apex_resize_dialog
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(42820936665130420)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'NL.DETORA.APEX.RESIZE_DIALOG'
,p_display_name=>'Resize Dialog'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','NL.DETORA.APEX.RESIZE_DIALOG'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#apexresizedialog.js'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*-------------------------------------',
' * APEX Resize Dialog',
' * Version: 1.0 (05-01-2016)',
' * Author:  Dick Dral',
' *-------------------------------------',
'*/',
'FUNCTION render_resize_dialog(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                               p_plugin         IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result IS',
'  --',
'  -- plugin attributes',
'  l_result          apex_plugin.t_dynamic_action_render_result;',
'  l_center_dialog   varchar2(100)  := p_dynamic_action.attribute_01;',
'  l_margin          number         := p_dynamic_action.attribute_02;',
'  --',
'BEGIN',
'  -- attribute defaults',
'  l_center_dialog   := nvl(l_center_dialog',
'                          ,''false'');',
'  l_margin          := nvl(l_margin',
'                          , 20);',
'  --',
'  l_result.javascript_function := ''apexresizedialog.doIt'';',
'  l_result.attribute_01        := l_center_dialog;',
'  l_result.attribute_02        := l_margin;',
'  --',
'  RETURN l_result;',
'  --',
'END render_resize_dialog;'))
,p_render_function=>'render_resize_dialog'
,p_standard_attributes=>'ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>3
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(42980434045428143)
,p_plugin_id=>wwv_flow_api.id(42820936665130420)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Center Dialog?'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(42981520078430250)
,p_plugin_attribute_id=>wwv_flow_api.id(42980434045428143)
,p_display_sequence=>10
,p_display_value=>'No'
,p_return_value=>'false'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(42981953083431426)
,p_plugin_attribute_id=>wwv_flow_api.id(42980434045428143)
,p_display_sequence=>20
,p_display_value=>'Yes'
,p_return_value=>'true'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(42958043039179321)
,p_plugin_id=>wwv_flow_api.id(42820936665130420)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Margin'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'20'
,p_unit=>'px'
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>false
,p_help_text=>'(Outer) margin for dialog'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F204150455820526573697A65204469616C6F670A2F2F20417574686F723A204469636B204472616C20284465746F7261290A2F2F2056657273696F6E3A20312E300A0A2F2F20676C6F62616C206E616D6573706163650A7661722061706578726573';
wwv_flow_api.g_varchar2_table(2) := '697A656469616C6F67203D207B0A0A726573697A655F6469616C6F673A2066756E6374696F6E20282063656E7465725F6469616C6F672C206469616C6F675F6D617267696E20290A7B0A2020636F6E736F6C652E6C6F672827706572666F726D20646961';
wwv_flow_api.g_varchar2_table(3) := '6C6F6720726573697A6527293B0A20200A20207661722068656164657220203D202428272E742D4469616C6F672D68656164657227293B0A20207661722068656967687420203D207061727365496E74282428686561646572292E686569676874282929';
wwv_flow_api.g_varchar2_table(4) := '3B20200A202020200A202076617220626F6479202020203D202428272E742D4469616C6F672D626F647927293B0A20207661722070616464696E67203D207061727365496E74282428626F6479292E637373282770616464696E672D746F70272929202B';
wwv_flow_api.g_varchar2_table(5) := '207061727365496E74282428626F6479292E637373282770616464696E672D626F74746F6D2729293B0A2020686569676874202B3D2070616464696E673B0A202020200A202076617220636F6E7461696E6572203D202428626F6479292E66696E642827';
wwv_flow_api.g_varchar2_table(6) := '2E636F6E7461696E657227292E666972737428293B0A20206865696768742020202B3D207061727365496E74282428636F6E7461696E6572292E6865696768742829293B20200A202020200A202076617220666F6F746572202020203D202428272E742D';
wwv_flow_api.g_varchar2_table(7) := '4469616C6F672D666F6F74657227293B0A20206865696768742020202B3D207061727365496E74282428666F6F746572292E6865696768742829293B20200A0A2020766172206469616C6F675F77696E646F77202020203D2077696E646F772E70617265';
wwv_flow_api.g_varchar2_table(8) := '6E742E2428272E75692D6469616C6F6727293B0A2020766172206469616C6F675F7469746C6562617220203D2077696E646F772E706172656E742E2428272E75692D6469616C6F672D7469746C6562617227293B0A2020766172206469616C6F675F636F';
wwv_flow_api.g_varchar2_table(9) := '6E7461696E6572203D2077696E646F772E706172656E742E2428272E75692D6469616C6F672D636F6E74656E7427293B0A0A202076617220706172656E745F686569676874202020203D2077696E646F772E706172656E742E696E6E6572486569676874';
wwv_flow_api.g_varchar2_table(10) := '3B0A2020766172207469746C656261725F68656967687420203D207061727365496E74286469616C6F675F7469746C656261722E63737328276865696768742729293B0A2020766172206469616C6F675F746F70202020202020203D207061727365496E';
wwv_flow_api.g_varchar2_table(11) := '74286469616C6F675F77696E646F772E6373732827746F702729293B0A0A202063656E7465725F6469616C6F67203D20282063656E7465725F6469616C6F67203D3D2074727565207C7C2063656E7465725F6469616C6F67203D3D2066616C7365202920';
wwv_flow_api.g_varchar2_table(12) := '3F2063656E7465725F6469616C6F67203A2066616C73653B0A20206469616C6F675F6D617267696E203D2028206469616C6F675F6D617267696E203D3D20756E646566696E6564207C7C206469616C6F675F6D617267696E203D3D206E756C6C2029203F';
wwv_flow_api.g_varchar2_table(13) := '203230203A207061727365496E74286469616C6F675F6D617267696E293B0A2020636F6E736F6C652E6C6F672863656E7465725F6469616C6F672C6469616C6F675F6D617267696E2C686569676874293B0A20200A2020696620282063656E7465725F64';
wwv_flow_api.g_varchar2_table(14) := '69616C6F6720290A2020202020207B0A202020202020202020202F2F20686F77206D7563682068656967687420697320617661696C61626C653F0A2020202020202020202076617220617661696C61626C655F686569676874203D20706172656E745F68';
wwv_flow_api.g_varchar2_table(15) := '6569676874202D207469746C656261725F686569676874202D20322A206469616C6F675F6D617267696E3B0A0A202020202020202020202F2F2061646A75737420686569676874206966206E65636573736172790A202020202020202020206865696768';
wwv_flow_api.g_varchar2_table(16) := '7420203D202820686569676874203C20617661696C61626C655F6865696768742029203F20686569676874203A20617661696C61626C655F6865696768743B0A0A202020202020202020202F2F2064657465726D696E6520616E642073657420706F7369';
wwv_flow_api.g_varchar2_table(17) := '74696F6E0A2020202020202020202076617220746F70203D202820706172656E745F686569676874202D20686569676874202D207469746C656261725F6865696768742029202F20323B0A202020202020202020206469616C6F675F77696E646F772E63';
wwv_flow_api.g_varchar2_table(18) := '73732827746F70272C746F70293B0A0A2020202020207D0A2020656C73650A2020202020207B202020202020202020200A202020202020202020202F2F20686F77206D7563682068656967687420697320617661696C61626C653F0A2020202020202020';
wwv_flow_api.g_varchar2_table(19) := '202076617220617661696C61626C655F686569676874203D20706172656E745F686569676874202D206469616C6F675F746F70202D207469746C656261725F686569676874202D206469616C6F675F6D617267696E3B0A636F6E736F6C652E6C6F672827';
wwv_flow_api.g_varchar2_table(20) := '706172656E745F686569676874202D206469616C6F675F746F70202D207469746C656261725F6865696768743D272C706172656E745F6865696768742C6469616C6F675F746F702C7469746C656261725F686569676874293B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(21) := '2F2F2061646A75737420686569676874206966206E65636573736172790A20202020202020202020686569676874203D202820686569676874203C3D20617661696C61626C655F6865696768742029203F20686569676874203A20617661696C61626C65';
wwv_flow_api.g_varchar2_table(22) := '5F6865696768743B0A2020202020207D0A0A092020636F6E736F6C652E6C6F67286865696768742C6469616C6F675F636F6E7461696E6572293B0A202020200A202024286469616C6F675F636F6E7461696E6572292E6865696768742868656967687429';
wwv_flow_api.g_varchar2_table(23) := '3B0A7D2C0A0A202020202F2F2066756E6374696F6E207468617420676574732063616C6C65642066726F6D20706C7567696E0A20202020646F49743A2066756E6374696F6E2829207B0A20202020202020202F2F20706C7567696E206174747269627574';
wwv_flow_api.g_varchar2_table(24) := '65730A202020202020202076617220646154686973203D20746869733B0A0909636F6E736F6C652E6C6F6728276461546869732E616374696F6E2E61747472696275746530313D272C6461546869732E616374696F6E2E61747472696275746530312C20';
wwv_flow_api.g_varchar2_table(25) := '747970656F66206461546869732E616374696F6E2E6174747269627574653031293B0A20202020202020207661722063656E7465725F6469616C6F67203D2028206461546869732E616374696F6E2E6174747269627574653031203D3D20227472756522';
wwv_flow_api.g_varchar2_table(26) := '2029203F2074727565203A2066616C73653B0A0909766172206D617267696E203D206461546869732E616374696F6E2E61747472696275746530323B0A20202020202020202F2F204C6F6767696E670A202020202020202076617220764C6F6767696E67';
wwv_flow_api.g_varchar2_table(27) := '203D20747275653B0A202020202020202069662028764C6F6767696E6729207B0A202020202020202020202020636F6E736F6C652E6C6F672827526573697A65204469616C6F673A2063656E7465725F6469616C6F673D272C2063656E7465725F646961';
wwv_flow_api.g_varchar2_table(28) := '6C6F67293B0A202020202020202020202020636F6E736F6C652E6C6F672827526573697A65204469616C6F673A206D617267696E3D272C206D617267696E293B0A20202020202020207D0A202020202020202061706578726573697A656469616C6F672E';
wwv_flow_api.g_varchar2_table(29) := '726573697A655F6469616C6F672863656E7465725F6469616C6F672C6D617267696E293B0A202020207D0A7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(43692460252809407)
,p_plugin_id=>wwv_flow_api.id(42820936665130420)
,p_file_name=>'apexresizedialog.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/de_danielh_toastrnotifications
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(22172477412194602966)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'DE.DANIELH.TOASTRNOTIFICATIONS'
,p_display_name=>'toastr Notifications'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','DE.DANIELH.TOASTRNOTIFICATIONS'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  /*-------------------------------------',
'   * toastr Functions',
'   * Version: 1.0 (04.08.2015)',
'   * Author:  Daniel Hochleitner',
'   *-------------------------------------',
'  */',
'FUNCTION render_toastr(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                       p_plugin         IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result IS',
'  --',
'  l_toastr_type        VARCHAR2(100) := p_dynamic_action.attribute_01;',
'  l_text               VARCHAR2(500) := p_dynamic_action.attribute_02;',
'  l_position_class     VARCHAR2(100) := p_dynamic_action.attribute_03;',
'  l_close_btn          VARCHAR2(50) := p_dynamic_action.attribute_04;',
'  l_newest_ontop       VARCHAR2(50) := p_dynamic_action.attribute_05;',
'  l_progress_bar       VARCHAR2(50) := p_dynamic_action.attribute_06;',
'  l_prevent_duplicates VARCHAR2(50) := p_dynamic_action.attribute_07;',
'  l_show_duration      VARCHAR2(50) := p_dynamic_action.attribute_08;',
'  l_hide_duration      VARCHAR2(50) := p_dynamic_action.attribute_09;',
'  l_timeout            VARCHAR2(50) := p_dynamic_action.attribute_10;',
'  l_extended_timeout   VARCHAR2(50) := p_dynamic_action.attribute_11;',
'  --',
'  l_result apex_plugin.t_dynamic_action_render_result;',
'  --',
'  l_toastr_options_string VARCHAR2(4000);',
'  l_toastr_type_string    VARCHAR2(2000);',
'BEGIN',
'  -- Debug',
'  IF apex_application.g_debug THEN',
'    apex_plugin_util.debug_dynamic_action(p_plugin         => p_plugin,',
'                                          p_dynamic_action => p_dynamic_action);',
'  END IF;',
'  --',
'  -- toastr CSS',
'  apex_css.add_file(p_name      => ''toastr.min'',',
'                    p_directory => p_plugin.file_prefix);',
'  --',
'  -- toastr JS',
'  apex_javascript.add_library(p_name           => ''toastr.min'',',
'                              p_directory      => p_plugin.file_prefix,',
'                              p_version        => NULL,',
'                              p_skip_extension => FALSE);',
'  --',
'  -- toastr options',
'  l_toastr_options_string := ''toastr.options = { '' ||',
'                             apex_javascript.add_attribute(p_name      => ''closeButton'',',
'                                                           p_value     => l_close_btn, -- true/false',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''newestOnTop'',',
'                                                           p_value     => l_newest_ontop, -- true/false',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''progressBar'',',
'                                                           p_value     => l_progress_bar, -- true/false',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''positionClass'',',
'                                                           p_value     => l_position_class, -- CSS class',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''preventDuplicates'',',
'                                                           p_value     => l_prevent_duplicates, -- true/false',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''showDuration'',',
'                                                           p_value     => l_show_duration, -- number time ms',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''hideDuration'',',
'                                                           p_value     => l_hide_duration, -- number time ms',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''timeOut'',',
'                                                           p_value     => l_timeout, -- number time ms',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''extendedTimeOut'',',
'                                                           p_value     => l_extended_timeout, -- number time ms',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''showEasing'',',
'                                                           p_value     => ''swing'',',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''hideEasing'',',
'                                                           p_value     => ''linear'',',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''showMethod'',',
'                                                           p_value     => ''fadeIn'',',
'                                                           p_add_comma => TRUE) ||',
'                             apex_javascript.add_attribute(p_name      => ''hideMethod'',',
'                                                           p_value     => ''fadeOut'',',
'                                                           p_add_comma => FALSE) || ''} '';',
'  -- Replace true/false quotes',
'  l_toastr_options_string := REPLACE(REPLACE(l_toastr_options_string,',
'                                             ''"true"'',',
'                                             ''true''),',
'                                     ''"false"'',',
'                                     ''false'');',
'  -- ',
'  -- toastr text per type',
'  IF l_toastr_type = ''info'' THEN',
'    l_toastr_type_string := ''toastr.info("'' || l_text || ''");'';',
'  ELSIF l_toastr_type = ''success'' THEN',
'    l_toastr_type_string := ''toastr.success("'' || l_text || ''");'';',
'  ELSIF l_toastr_type = ''warning'' THEN',
'    l_toastr_type_string := ''toastr.warning("'' || l_text || ''");'';',
'  ELSIF l_toastr_type = ''error'' THEN',
'    l_toastr_type_string := ''toastr.error("'' || l_text || ''");'';',
'  END IF;',
'  --',
'  -- function per DA that calls options + type',
'  apex_javascript.add_inline_code(p_code => ''function call_toastr_'' ||',
'                                            p_dynamic_action.id || ''() { '' ||',
'                                            l_toastr_options_string ||',
'                                            chr(10) || l_toastr_type_string ||',
'                                            chr(10) || '' }'');',
'  --',
'  l_result.javascript_function := ''function(){call_toastr_'' ||',
'                                  p_dynamic_action.id || ''();}'';',
'  l_result.attribute_01        := l_toastr_type;',
'  l_result.attribute_02        := l_text;',
'  l_result.attribute_03        := l_position_class;',
'  l_result.attribute_04        := l_close_btn;',
'  l_result.attribute_05        := l_newest_ontop;',
'  l_result.attribute_06        := l_progress_bar;',
'  l_result.attribute_07        := l_prevent_duplicates;',
'  l_result.attribute_08        := l_show_duration;',
'  l_result.attribute_09        := l_hide_duration;',
'  l_result.attribute_10        := l_timeout;',
'  l_result.attribute_11        := l_extended_timeout;',
'  --',
'  RETURN l_result;',
'  --',
'END render_toastr;'))
,p_render_function=>'render_toastr'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Dynamic Action Plugin using OpenSource JS framework "toastr" to display notifications.',
'This plugin can be used to display info, success, warning or error messages.',
'Original from: https://github.com/CodeSeven/toastr'))
,p_version_identifier=>'1.0'
,p_about_url=>'http://blog.danielh.de/'
,p_files_version=>23
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128916716385402706)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'info'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of the notification. This preferences controls the color.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128916999918403429)
,p_plugin_attribute_id=>wwv_flow_api.id(11128916716385402706)
,p_display_sequence=>10
,p_display_value=>'Info'
,p_return_value=>'info'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128917401039404326)
,p_plugin_attribute_id=>wwv_flow_api.id(11128916716385402706)
,p_display_sequence=>20
,p_display_value=>'Success'
,p_return_value=>'success'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128917819324404971)
,p_plugin_attribute_id=>wwv_flow_api.id(11128916716385402706)
,p_display_sequence=>30
,p_display_value=>'Warning'
,p_return_value=>'warning'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128918235428405525)
,p_plugin_attribute_id=>wwv_flow_api.id(11128916716385402706)
,p_display_sequence=>40
,p_display_value=>'Error'
,p_return_value=>'error'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128918639000409247)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Text'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_is_translatable=>true
,p_help_text=>'Enter the text which is displayed in the notification. Page-Items &P100_ITEM_NAME. can be used.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128918942092416343)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'toast-top-right'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose the position/location of the notification.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128919231444417628)
,p_plugin_attribute_id=>wwv_flow_api.id(11128918942092416343)
,p_display_sequence=>10
,p_display_value=>'Top Right'
,p_return_value=>'toast-top-right'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128919605460418277)
,p_plugin_attribute_id=>wwv_flow_api.id(11128918942092416343)
,p_display_sequence=>20
,p_display_value=>'Top Left'
,p_return_value=>'toast-top-left'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128920045136420241)
,p_plugin_attribute_id=>wwv_flow_api.id(11128918942092416343)
,p_display_sequence=>30
,p_display_value=>'Bottom Right'
,p_return_value=>'toast-bottom-right'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128920425996421659)
,p_plugin_attribute_id=>wwv_flow_api.id(11128918942092416343)
,p_display_sequence=>40
,p_display_value=>'Bottom Left'
,p_return_value=>'toast-bottom-left'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128920783353423146)
,p_plugin_attribute_id=>wwv_flow_api.id(11128918942092416343)
,p_display_sequence=>50
,p_display_value=>'Top Full Width'
,p_return_value=>'toast-top-full-width'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128921225616424622)
,p_plugin_attribute_id=>wwv_flow_api.id(11128918942092416343)
,p_display_sequence=>60
,p_display_value=>'Bottom Full Width'
,p_return_value=>'toast-bottom-full-width'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128921569086428456)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Show Close Button'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'true'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Should a close button be displayed?'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128921931994429005)
,p_plugin_attribute_id=>wwv_flow_api.id(11128921569086428456)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128922320746429585)
,p_plugin_attribute_id=>wwv_flow_api.id(11128921569086428456)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128922728780433563)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Newest on top'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'true'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'When using multiple notifications on 1 page, should the newest be on top?'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128922981889434458)
,p_plugin_attribute_id=>wwv_flow_api.id(11128922728780433563)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128923377905434909)
,p_plugin_attribute_id=>wwv_flow_api.id(11128922728780433563)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128923921222440397)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Show Progress Bar'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'false'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Show a progress bar to visualize the time when a notification disappears.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128924254415440849)
,p_plugin_attribute_id=>wwv_flow_api.id(11128923921222440397)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128924660036441295)
,p_plugin_attribute_id=>wwv_flow_api.id(11128923921222440397)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128925185338446651)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Prevent Duplicates'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'true'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Block notifications with the same text/content to display multiple times.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128925503801447282)
,p_plugin_attribute_id=>wwv_flow_api.id(11128925185338446651)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11128925960733447730)
,p_plugin_attribute_id=>wwv_flow_api.id(11128925185338446651)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128926353911454023)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>120
,p_prompt=>'Show Duration'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'300'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128926657853455195)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>130
,p_prompt=>'Hide Duration'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'1000'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128926955831457383)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Timeout'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'5000'
,p_is_translatable=>false
,p_help_text=>'How long the toast will display without user interaction (in ms). A value of 0 makes a sticky notification.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11128927210135459052)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Extended Timeout'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'1000'
,p_is_translatable=>false
,p_help_text=>'How long the toast will display after a user hovers over it (in ms).'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E746F6173742D7469746C657B666F6E742D7765696768743A3730307D2E746F6173742D6D6573736167657B2D6D732D776F72642D777261703A627265616B2D776F72643B776F72642D777261703A627265616B2D776F72647D2E746F6173742D6D6573';
wwv_flow_api.g_varchar2_table(2) := '7361676520612C2E746F6173742D6D657373616765206C6162656C7B636F6C6F723A236666667D2E746F6173742D6D65737361676520613A686F7665727B636F6C6F723A236363633B746578742D6465636F726174696F6E3A6E6F6E657D2E746F617374';
wwv_flow_api.g_varchar2_table(3) := '2D636C6F73652D627574746F6E7B706F736974696F6E3A72656C61746976653B72696768743A2D2E33656D3B746F703A2D2E33656D3B666C6F61743A72696768743B666F6E742D73697A653A323070783B666F6E742D7765696768743A3730303B636F6C';
wwv_flow_api.g_varchar2_table(4) := '6F723A236666663B2D7765626B69742D746578742D736861646F773A3020317078203020236666663B746578742D736861646F773A3020317078203020236666663B6F7061636974793A2E383B2D6D732D66696C7465723A616C706861284F7061636974';
wwv_flow_api.g_varchar2_table(5) := '793D3830293B66696C7465723A616C706861286F7061636974793D3830297D2E746F6173742D636C6F73652D627574746F6E3A666F6375732C2E746F6173742D636C6F73652D627574746F6E3A686F7665727B636F6C6F723A233030303B746578742D64';
wwv_flow_api.g_varchar2_table(6) := '65636F726174696F6E3A6E6F6E653B637572736F723A706F696E7465723B6F7061636974793A2E343B2D6D732D66696C7465723A616C706861284F7061636974793D3430293B66696C7465723A616C706861286F7061636974793D3430297D627574746F';
wwv_flow_api.g_varchar2_table(7) := '6E2E746F6173742D636C6F73652D627574746F6E7B70616464696E673A303B637572736F723A706F696E7465723B6261636B67726F756E643A3020303B626F726465723A303B2D7765626B69742D617070656172616E63653A6E6F6E657D2E746F617374';
wwv_flow_api.g_varchar2_table(8) := '2D746F702D63656E7465727B746F703A303B72696768743A303B77696474683A313030257D2E746F6173742D626F74746F6D2D63656E7465727B626F74746F6D3A303B72696768743A303B77696474683A313030257D2E746F6173742D746F702D66756C';
wwv_flow_api.g_varchar2_table(9) := '6C2D77696474687B746F703A303B72696768743A303B77696474683A313030257D2E746F6173742D626F74746F6D2D66756C6C2D77696474687B626F74746F6D3A303B72696768743A303B77696474683A313030257D2E746F6173742D746F702D6C6566';
wwv_flow_api.g_varchar2_table(10) := '747B746F703A313270783B6C6566743A313270787D2E746F6173742D746F702D72696768747B746F703A313270783B72696768743A313270787D2E746F6173742D626F74746F6D2D72696768747B72696768743A313270783B626F74746F6D3A31327078';
wwv_flow_api.g_varchar2_table(11) := '7D2E746F6173742D626F74746F6D2D6C6566747B626F74746F6D3A313270783B6C6566743A313270787D23746F6173742D636F6E7461696E65727B706F736974696F6E3A66697865643B7A2D696E6465783A3939393939397D23746F6173742D636F6E74';
wwv_flow_api.g_varchar2_table(12) := '61696E6572202A7B2D6D6F7A2D626F782D73697A696E673A626F726465722D626F783B2D7765626B69742D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E673A626F726465722D626F787D23746F6173742D636F6E746169';
wwv_flow_api.g_varchar2_table(13) := '6E65723E6469767B706F736974696F6E3A72656C61746976653B6F766572666C6F773A68696464656E3B6D617267696E3A302030203670783B70616464696E673A313570782031357078203135707820353070783B77696474683A33303070783B2D6D6F';
wwv_flow_api.g_varchar2_table(14) := '7A2D626F726465722D7261646975733A3370783B2D7765626B69742D626F726465722D7261646975733A3370783B626F726465722D7261646975733A3370783B6261636B67726F756E642D706F736974696F6E3A313570782063656E7465723B6261636B';
wwv_flow_api.g_varchar2_table(15) := '67726F756E642D7265706561743A6E6F2D7265706561743B2D6D6F7A2D626F782D736861646F773A302030203132707820233939393B2D7765626B69742D626F782D736861646F773A302030203132707820233939393B626F782D736861646F773A3020';
wwv_flow_api.g_varchar2_table(16) := '30203132707820233939393B636F6C6F723A236666663B6F7061636974793A2E383B2D6D732D66696C7465723A616C706861284F7061636974793D3830293B66696C7465723A616C706861286F7061636974793D3830297D23746F6173742D636F6E7461';
wwv_flow_api.g_varchar2_table(17) := '696E65723E3A686F7665727B2D6D6F7A2D626F782D736861646F773A302030203132707820233030303B2D7765626B69742D626F782D736861646F773A302030203132707820233030303B626F782D736861646F773A302030203132707820233030303B';
wwv_flow_api.g_varchar2_table(18) := '6F7061636974793A313B2D6D732D66696C7465723A616C706861284F7061636974793D313030293B66696C7465723A616C706861286F7061636974793D313030293B637572736F723A706F696E7465727D23746F6173742D636F6E7461696E65723E2E74';
wwv_flow_api.g_varchar2_table(19) := '6F6173742D696E666F7B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E535568455567414141426741414141594341594141414467647A3334414141';
wwv_flow_api.g_varchar2_table(20) := '4141584E535230494172733463365141414141526E51553142414143786A777638595155414141414A6345685A6377414144734D4141413744416364767147514141414777535552425645684C745A613953674E42454D63397355787852636F554B537A';
wwv_flow_api.g_varchar2_table(21) := '535749685870464D68685957466861426734795059695743585A78424C4552734C52533345516B456677434B646A574A4177534B43676F4B4363756476344F35594C727437457A6758686955332F342B6232636B6D77566A4A53704B6B51367741693467';
wwv_flow_api.g_varchar2_table(22) := '7768542B7A3377524263457A30796A53736555547263527966734873586D4430416D62484F433949693856496D6E75584250676C48705135777753564D37734E6E5447375A61344A774464436A7879416948336E7941326D7461544A756669445A356443';
wwv_flow_api.g_varchar2_table(23) := '61716C4974494C68314E486174664E35736B766A78395A33386D363943677A75586D5A675672504947453736334A7839714B73526F7A57597736784F486445522B6E6E324B6B4F2B42622B55563543424E36574336517442676252566F7A72616841626D';
wwv_flow_api.g_varchar2_table(24) := '6D364874557367745043313974466478585A59424F666B626D464A3156614841315641486A6430707037306F545A7A76522B455672783259676664737136657535354248595238686C636B692B6E2B6B4552554647384272413042776A654176324D3857';
wwv_flow_api.g_varchar2_table(25) := '4C51427463792B534436664E736D6E4233416C424C726754745657316332514E346256574C415461495336304A32447535793154694A676A53427646565A67546D7743552B64415A466F507847454573386E79484339427765324776454A763257585A62';
wwv_flow_api.g_varchar2_table(26) := '30766A647946543443786B33652F6B49716C4F476F564C7777506576705948542B3030542B68577758446634414A414F557157634468627741414141415355564F524B35435949493D2921696D706F7274616E747D23746F6173742D636F6E7461696E65';
wwv_flow_api.g_varchar2_table(27) := '723E2E746F6173742D6572726F727B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E535568455567414141426741414141594341594141414467647A';
wwv_flow_api.g_varchar2_table(28) := '33344141414141584E535230494172733463365141414141526E51553142414143786A777638595155414141414A6345685A6377414144734D414141374441636476714751414141484F535552425645684C725A612F53674E42454D5A7A6830574B4343';
wwv_flow_api.g_varchar2_table(29) := '6C53434B6149594F45442B41414B6551514C473848577A744C43496D4272596164674964592B67494B4E596B42465377753743416F7143676B6B6F4742492F4532385064624C5A6D65444C677A5A7A637838332F7A5A3253535843316A3966722B493148';
wwv_flow_api.g_varchar2_table(30) := '71393367327978483469774D31766B6F4257416478436D707A5478666B4E325263795A4E614846496B536F31302B386B67786B584955525635484778546D467563373542325266516B707848473861416761414661307441487159466651374977653279';
wwv_flow_api.g_varchar2_table(31) := '684F446B382B4A34433779416F5254574933772F346B6C47526752346C4F3752706E392B67764D7957702B75784668382B482B41526C674E316E4A754A75514159764E6B456E774746636B31384572347133656745632F6F4F2B6D684C644B6752796864';
wwv_flow_api.g_varchar2_table(32) := '4E466961634330726C4F4362684E567A344839466E41596744427655335149696F5A6C4A464C4A74736F4859524466695A6F557949787143745270566C414E71304555346441706A727467657A504661643553313957676A6B6330684E566E754634486A';
wwv_flow_api.g_varchar2_table(33) := '56413643375172534962796C422B6F5A65336148674273716C4E714B594834386A58794A4B4D7541626979564A384B7A61423365526330706739567751346E6946727949363871694F693341626A776473666E41746B3062436A544C4A4B72366D724439';
wwv_flow_api.g_varchar2_table(34) := '673869712F532F4238316867754F4D6C51546E56794734307741636A6E6D6773434E455344726A6D653777666674503450375350344E33434A5A64767A6F4E79477132632F48574F584A47737656672B52412F6B324D432F774E36493259413250743847';
wwv_flow_api.g_varchar2_table(35) := '6B41414141415355564F524B35435949493D2921696D706F7274616E747D23746F6173742D636F6E7461696E65723E2E746F6173742D737563636573737B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E673B6261';
wwv_flow_api.g_varchar2_table(36) := '736536342C6956424F5277304B47676F414141414E535568455567414141426741414141594341594141414467647A33344141414141584E535230494172733463365141414141526E51553142414143786A777638595155414141414A6345685A637741';
wwv_flow_api.g_varchar2_table(37) := '4144734D4141413744416364767147514141414473535552425645684C593241594266514D67662F2F2F3350382B2F657641496776412F467349462B426176594444574D4247726F61534D4D42694538564337415A44724946614D466E696933415A546A';
wwv_flow_api.g_varchar2_table(38) := '556773555557554441384F644148366951625145687734487947735045634B425842494334415268657834473442736A6D77655531736F49466147672F57746F465A52495A644576494D68786B43436A5849567341545636674647414373345273773045';
wwv_flow_api.g_varchar2_table(39) := '476749494833514A594A6748534152515A44725741422B6A61777A67732B5132554F343944376A6E525352476F454652494C63646D454D57474930636D304A4A325170594131524476636D7A4A455768414268442F7071724C30533043577541424B676E';
wwv_flow_api.g_varchar2_table(40) := '526B69396C4C736553376732416C7177485751534B48346F4B4C72494C7052476845514377324C6952554961346C7741414141424A52553545726B4A6767673D3D2921696D706F7274616E747D23746F6173742D636F6E7461696E65723E2E746F617374';
wwv_flow_api.g_varchar2_table(41) := '2D7761726E696E677B6261636B67726F756E642D696D6167653A75726C28646174613A696D6167652F706E673B6261736536342C6956424F5277304B47676F414141414E535568455567414141426741414141594341594141414467647A333441414141';
wwv_flow_api.g_varchar2_table(42) := '41584E535230494172733463365141414141526E51553142414143786A777638595155414141414A6345685A6377414144734D4141413744416364767147514141414759535552425645684C355A537654734E51464D62585A4749434D5947596D4A6841';
wwv_flow_api.g_varchar2_table(43) := '51494A41494359515041414369534442384169494351514A54344371514577674A76594153415143695A69596D4A6841494241544341524A792B397254736C646438734B75314D302B644C6230353776362F6C62712F32724B306D532F54524E6A396357';
wwv_flow_api.g_varchar2_table(44) := '4E414B5059494A494937674978436351353163767149442B4749455838415347344231624B3567495A466551666F4A6445584F6667583451415167376B4832413635795138376C79786232377367676B417A41754668626267314B326B67436B42316256';
wwv_flow_api.g_varchar2_table(45) := '77794952396D324C37505250496844554958674774794B77353735797A336C544E733658344A586E6A562B4C4B4D2F6D334D79646E5462744F4B496A747A3656684342713476536D336E63647244326C6B305667555853564B6A56444A584A7A696A5731';
wwv_flow_api.g_varchar2_table(46) := '5251647355374637374865387536386B6F4E5A547A384F7A35794761364A3348336C5A3078596758424B3251796D6C5757412B52576E5968736B4C427632766D452B68424D43746241374B58356472577952542F324A73715A3249766642395934625744';
wwv_flow_api.g_varchar2_table(47) := '4E4D46624A52466D4339453734536F53304371756C776A6B43302B356270635631435A384E4D656A34706A7930552B646F44517347796F31687A564A7474496A685137476E427452464E31556172556C48384633786963742B4859303772457A6F554750';
wwv_flow_api.g_varchar2_table(48) := '6C57636A52465272342F6743685A6763335A4C3264386F41414141415355564F524B35435949493D2921696D706F7274616E747D23746F6173742D636F6E7461696E65722E746F6173742D626F74746F6D2D63656E7465723E6469762C23746F6173742D';
wwv_flow_api.g_varchar2_table(49) := '636F6E7461696E65722E746F6173742D746F702D63656E7465723E6469767B77696474683A33303070783B6D617267696E3A6175746F7D23746F6173742D636F6E7461696E65722E746F6173742D626F74746F6D2D66756C6C2D77696474683E6469762C';
wwv_flow_api.g_varchar2_table(50) := '23746F6173742D636F6E7461696E65722E746F6173742D746F702D66756C6C2D77696474683E6469767B77696474683A3936253B6D617267696E3A6175746F7D2E746F6173747B6261636B67726F756E642D636F6C6F723A233033303330337D2E746F61';
wwv_flow_api.g_varchar2_table(51) := '73742D737563636573737B6261636B67726F756E642D636F6C6F723A233531613335317D2E746F6173742D6572726F727B6261636B67726F756E642D636F6C6F723A236264333632667D2E746F6173742D696E666F7B6261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(52) := '6F723A233266393662347D2E746F6173742D7761726E696E677B6261636B67726F756E642D636F6C6F723A236638393430367D2E746F6173742D70726F67726573737B706F736974696F6E3A6162736F6C7574653B6C6566743A303B626F74746F6D3A30';
wwv_flow_api.g_varchar2_table(53) := '3B6865696768743A3470783B6261636B67726F756E642D636F6C6F723A233030303B6F7061636974793A2E343B2D6D732D66696C7465723A616C706861284F7061636974793D3430293B66696C7465723A616C706861286F7061636974793D3430297D40';
wwv_flow_api.g_varchar2_table(54) := '6D6564696120616C6C20616E6420286D61782D77696474683A3234307078297B23746F6173742D636F6E7461696E65723E6469767B70616464696E673A387078203870782038707820353070783B77696474683A3131656D7D23746F6173742D636F6E74';
wwv_flow_api.g_varchar2_table(55) := '61696E6572202E746F6173742D636C6F73652D627574746F6E7B72696768743A2D2E32656D3B746F703A2D2E32656D7D7D406D6564696120616C6C20616E6420286D696E2D77696474683A32343170782920616E6420286D61782D77696474683A343830';
wwv_flow_api.g_varchar2_table(56) := '7078297B23746F6173742D636F6E7461696E65723E6469767B70616464696E673A387078203870782038707820353070783B77696474683A3138656D7D23746F6173742D636F6E7461696E6572202E746F6173742D636C6F73652D627574746F6E7B7269';
wwv_flow_api.g_varchar2_table(57) := '6768743A2D2E32656D3B746F703A2D2E32656D7D7D406D6564696120616C6C20616E6420286D696E2D77696474683A34383170782920616E6420286D61782D77696474683A3736387078297B23746F6173742D636F6E7461696E65723E6469767B706164';
wwv_flow_api.g_varchar2_table(58) := '64696E673A313570782031357078203135707820353070783B77696474683A3235656D7D7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11128915256414140895)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_file_name=>'toastr.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2166756E6374696F6E2865297B65285B226A7175657279225D2C66756E6374696F6E2865297B72657475726E2066756E6374696F6E28297B66756E6374696F6E207428652C742C6E297B72657475726E2066287B747970653A4F2E6572726F722C69636F';
wwv_flow_api.g_varchar2_table(2) := '6E436C6173733A6728292E69636F6E436C61737365732E6572726F722C6D6573736167653A652C6F7074696F6E734F766572726964653A6E2C7469746C653A747D297D66756E6374696F6E206E28742C6E297B72657475726E20747C7C28743D67282929';
wwv_flow_api.g_varchar2_table(3) := '2C763D65282223222B742E636F6E7461696E65724964292C762E6C656E6774683F763A286E262628763D63287429292C76297D66756E6374696F6E206928652C742C6E297B72657475726E2066287B747970653A4F2E696E666F2C69636F6E436C617373';
wwv_flow_api.g_varchar2_table(4) := '3A6728292E69636F6E436C61737365732E696E666F2C6D6573736167653A652C6F7074696F6E734F766572726964653A6E2C7469746C653A747D297D66756E6374696F6E206F2865297B773D657D66756E6374696F6E207328652C742C6E297B72657475';
wwv_flow_api.g_varchar2_table(5) := '726E2066287B747970653A4F2E737563636573732C69636F6E436C6173733A6728292E69636F6E436C61737365732E737563636573732C6D6573736167653A652C6F7074696F6E734F766572726964653A6E2C7469746C653A747D297D66756E6374696F';
wwv_flow_api.g_varchar2_table(6) := '6E206128652C742C6E297B72657475726E2066287B747970653A4F2E7761726E696E672C69636F6E436C6173733A6728292E69636F6E436C61737365732E7761726E696E672C6D6573736167653A652C6F7074696F6E734F766572726964653A6E2C7469';
wwv_flow_api.g_varchar2_table(7) := '746C653A747D297D66756E6374696F6E20722865297B76617220743D6728293B767C7C6E2874292C6C28652C74297C7C752874297D66756E6374696F6E20642874297B76617220693D6728293B72657475726E20767C7C6E2869292C742626303D3D3D65';
wwv_flow_api.g_varchar2_table(8) := '28223A666F637573222C74292E6C656E6774683F766F696420682874293A766F696428762E6368696C6472656E28292E6C656E6774682626762E72656D6F76652829297D66756E6374696F6E20752874297B666F7228766172206E3D762E6368696C6472';
wwv_flow_api.g_varchar2_table(9) := '656E28292C693D6E2E6C656E6774682D313B693E3D303B692D2D296C2865286E5B695D292C74297D66756E6374696F6E206C28742C6E297B72657475726E20742626303D3D3D6528223A666F637573222C74292E6C656E6774683F28745B6E2E68696465';
wwv_flow_api.g_varchar2_table(10) := '4D6574686F645D287B6475726174696F6E3A6E2E686964654475726174696F6E2C656173696E673A6E2E68696465456173696E672C636F6D706C6574653A66756E6374696F6E28297B682874297D7D292C2130293A21317D66756E6374696F6E20632874';
wwv_flow_api.g_varchar2_table(11) := '297B72657475726E20763D6528223C6469762F3E22292E6174747228226964222C742E636F6E7461696E65724964292E616464436C61737328742E706F736974696F6E436C617373292E617474722822617269612D6C697665222C22706F6C6974652229';
wwv_flow_api.g_varchar2_table(12) := '2E617474722822726F6C65222C22616C65727422292C762E617070656E64546F286528742E74617267657429292C767D66756E6374696F6E207028297B72657475726E7B746170546F4469736D6973733A21302C746F617374436C6173733A22746F6173';
wwv_flow_api.g_varchar2_table(13) := '74222C636F6E7461696E657249643A22746F6173742D636F6E7461696E6572222C64656275673A21312C73686F774D6574686F643A2266616465496E222C73686F774475726174696F6E3A3330302C73686F77456173696E673A227377696E67222C6F6E';
wwv_flow_api.g_varchar2_table(14) := '53686F776E3A766F696420302C686964654D6574686F643A22666164654F7574222C686964654475726174696F6E3A3165332C68696465456173696E673A227377696E67222C6F6E48696464656E3A766F696420302C657874656E64656454696D654F75';
wwv_flow_api.g_varchar2_table(15) := '743A3165332C69636F6E436C61737365733A7B6572726F723A22746F6173742D6572726F72222C696E666F3A22746F6173742D696E666F222C737563636573733A22746F6173742D73756363657373222C7761726E696E673A22746F6173742D7761726E';
wwv_flow_api.g_varchar2_table(16) := '696E67227D2C69636F6E436C6173733A22746F6173742D696E666F222C706F736974696F6E436C6173733A22746F6173742D746F702D7269676874222C74696D654F75743A3565332C7469746C65436C6173733A22746F6173742D7469746C65222C6D65';
wwv_flow_api.g_varchar2_table(17) := '7373616765436C6173733A22746F6173742D6D657373616765222C7461726765743A22626F6479222C636C6F736548746D6C3A273C627574746F6E20747970653D22627574746F6E223E2674696D65733B3C2F627574746F6E3E272C6E65776573744F6E';
wwv_flow_api.g_varchar2_table(18) := '546F703A21302C70726576656E744475706C6963617465733A21312C70726F67726573734261723A21317D7D66756E6374696F6E206D2865297B772626772865297D66756E6374696F6E20662874297B66756E6374696F6E20692874297B72657475726E';
wwv_flow_api.g_varchar2_table(19) := '216528223A666F637573222C6C292E6C656E6774687C7C743F28636C65617254696D656F7574284F2E696E74657276616C4964292C6C5B722E686964654D6574686F645D287B6475726174696F6E3A722E686964654475726174696F6E2C656173696E67';
wwv_flow_api.g_varchar2_table(20) := '3A722E68696465456173696E672C636F6D706C6574653A66756E6374696F6E28297B68286C292C722E6F6E48696464656E26262268696464656E22213D3D622E73746174652626722E6F6E48696464656E28292C622E73746174653D2268696464656E22';
wwv_flow_api.g_varchar2_table(21) := '2C622E656E6454696D653D6E657720446174652C6D2862297D7D29293A766F696420307D66756E6374696F6E206F28297B28722E74696D654F75743E307C7C722E657874656E64656454696D654F75743E3029262628753D73657454696D656F75742869';
wwv_flow_api.g_varchar2_table(22) := '2C722E657874656E64656454696D654F7574292C4F2E6D61784869646554696D653D7061727365466C6F617428722E657874656E64656454696D654F7574292C4F2E686964654574613D286E65772044617465292E67657454696D6528292B4F2E6D6178';
wwv_flow_api.g_varchar2_table(23) := '4869646554696D65297D66756E6374696F6E207328297B636C65617254696D656F75742875292C4F2E686964654574613D302C6C2E73746F702821302C2130295B722E73686F774D6574686F645D287B6475726174696F6E3A722E73686F774475726174';
wwv_flow_api.g_varchar2_table(24) := '696F6E2C656173696E673A722E73686F77456173696E677D297D66756E6374696F6E206128297B76617220653D284F2E686964654574612D286E65772044617465292E67657454696D652829292F4F2E6D61784869646554696D652A3130303B662E7769';
wwv_flow_api.g_varchar2_table(25) := '64746828652B222522297D76617220723D6728292C643D742E69636F6E436C6173737C7C722E69636F6E436C6173733B69662822756E646566696E656422213D747970656F6620742E6F7074696F6E734F76657272696465262628723D652E657874656E';
wwv_flow_api.g_varchar2_table(26) := '6428722C742E6F7074696F6E734F76657272696465292C643D742E6F7074696F6E734F766572726964652E69636F6E436C6173737C7C64292C722E70726576656E744475706C696361746573297B696628742E6D6573736167653D3D3D43297265747572';
wwv_flow_api.g_varchar2_table(27) := '6E3B433D742E6D6573736167657D542B2B2C763D6E28722C2130293B76617220753D6E756C6C2C6C3D6528223C6469762F3E22292C633D6528223C6469762F3E22292C703D6528223C6469762F3E22292C663D6528223C6469762F3E22292C773D652872';
wwv_flow_api.g_varchar2_table(28) := '2E636C6F736548746D6C292C4F3D7B696E74657276616C49643A6E756C6C2C686964654574613A6E756C6C2C6D61784869646554696D653A6E756C6C7D2C623D7B746F61737449643A542C73746174653A2276697369626C65222C737461727454696D65';
wwv_flow_api.g_varchar2_table(29) := '3A6E657720446174652C6F7074696F6E733A722C6D61703A747D3B72657475726E20742E69636F6E436C61737326266C2E616464436C61737328722E746F617374436C617373292E616464436C6173732864292C742E7469746C65262628632E61707065';
wwv_flow_api.g_varchar2_table(30) := '6E6428742E7469746C65292E616464436C61737328722E7469746C65436C617373292C6C2E617070656E64286329292C742E6D657373616765262628702E617070656E6428742E6D657373616765292E616464436C61737328722E6D657373616765436C';
wwv_flow_api.g_varchar2_table(31) := '617373292C6C2E617070656E64287029292C722E636C6F7365427574746F6E262628772E616464436C6173732822746F6173742D636C6F73652D627574746F6E22292E617474722822726F6C65222C22627574746F6E22292C6C2E70726570656E642877';
wwv_flow_api.g_varchar2_table(32) := '29292C722E70726F6772657373426172262628662E616464436C6173732822746F6173742D70726F677265737322292C6C2E70726570656E64286629292C6C2E6869646528292C722E6E65776573744F6E546F703F762E70726570656E64286C293A762E';
wwv_flow_api.g_varchar2_table(33) := '617070656E64286C292C6C5B722E73686F774D6574686F645D287B6475726174696F6E3A722E73686F774475726174696F6E2C656173696E673A722E73686F77456173696E672C636F6D706C6574653A722E6F6E53686F776E7D292C722E74696D654F75';
wwv_flow_api.g_varchar2_table(34) := '743E30262628753D73657454696D656F757428692C722E74696D654F7574292C4F2E6D61784869646554696D653D7061727365466C6F617428722E74696D654F7574292C4F2E686964654574613D286E65772044617465292E67657454696D6528292B4F';
wwv_flow_api.g_varchar2_table(35) := '2E6D61784869646554696D652C722E70726F67726573734261722626284F2E696E74657276616C49643D736574496E74657276616C28612C31302929292C6C2E686F76657228732C6F292C21722E6F6E636C69636B2626722E746170546F4469736D6973';
wwv_flow_api.g_varchar2_table(36) := '7326266C2E636C69636B2869292C722E636C6F7365427574746F6E2626772626772E636C69636B2866756E6374696F6E2865297B652E73746F7050726F7061676174696F6E3F652E73746F7050726F7061676174696F6E28293A766F69642030213D3D65';
wwv_flow_api.g_varchar2_table(37) := '2E63616E63656C427562626C652626652E63616E63656C427562626C65213D3D2130262628652E63616E63656C427562626C653D2130292C69282130297D292C722E6F6E636C69636B26266C2E636C69636B2866756E6374696F6E28297B722E6F6E636C';
wwv_flow_api.g_varchar2_table(38) := '69636B28292C6928297D292C6D2862292C722E64656275672626636F6E736F6C652626636F6E736F6C652E6C6F672862292C6C7D66756E6374696F6E206728297B72657475726E20652E657874656E64287B7D2C7028292C622E6F7074696F6E73297D66';
wwv_flow_api.g_varchar2_table(39) := '756E6374696F6E20682865297B767C7C28763D6E2829292C652E697328223A76697369626C6522297C7C28652E72656D6F766528292C653D6E756C6C2C303D3D3D762E6368696C6472656E28292E6C656E677468262628762E72656D6F766528292C433D';
wwv_flow_api.g_varchar2_table(40) := '766F6964203029297D76617220762C772C432C543D302C4F3D7B6572726F723A226572726F72222C696E666F3A22696E666F222C737563636573733A2273756363657373222C7761726E696E673A227761726E696E67227D2C623D7B636C6561723A722C';
wwv_flow_api.g_varchar2_table(41) := '72656D6F76653A642C6572726F723A742C676574436F6E7461696E65723A6E2C696E666F3A692C6F7074696F6E733A7B7D2C7375627363726962653A6F2C737563636573733A732C76657273696F6E3A22322E312E30222C7761726E696E673A617D3B72';
wwv_flow_api.g_varchar2_table(42) := '657475726E20627D28297D297D282266756E6374696F6E223D3D747970656F6620646566696E652626646566696E652E616D643F646566696E653A66756E6374696F6E28652C74297B22756E646566696E656422213D747970656F66206D6F64756C6526';
wwv_flow_api.g_varchar2_table(43) := '266D6F64756C652E6578706F7274733F6D6F64756C652E6578706F7274733D74287265717569726528226A71756572792229293A77696E646F772E746F617374723D742877696E646F772E6A5175657279297D293B0A2F2F2320736F757263654D617070';
wwv_flow_api.g_varchar2_table(44) := '696E6755524C3D746F617374722E6A732E6D61700A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11128915579749141623)
,p_plugin_id=>wwv_flow_api.id(22172477412194602966)
,p_file_name=>'toastr.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(35957023658060322)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(35914634166060308)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(35949230648060319)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(35956880195060322)
,p_nav_bar_list_template_id=>wwv_flow_api.id(35949071411060319)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Global Page - Desktop'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20170913110036'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(19325279291421142)
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180511152619'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12435281164692440)
,p_plug_name=>'Valores (Glosado / % Recursado) dos últimos 6 meses'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(35930763326060313)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'WITH MES_BASE AS',
' (SELECT LAST_DAY(MAX(DATA_ATENDIMENTO)) DATA_FINAL FROM CAS_RETORNOS_FINANCEIROS),',
'PERIODO_BASE AS',
' (SELECT TRUNC(ADD_MONTHS(DATA_FINAL, -5), ''MM'') DATA_INICIAL',
'        ,DATA_FINAL',
'    FROM MES_BASE),',
'CALENDARIO AS',
' (SELECT MIN(DD.DATA) DATA_INICIAL',
'        ,MAX(DD.DATA) DATA_FINAL',
'        ,INITCAP(DD.NOME_DO_MES) || ''/'' || DD.ANO NOME_DO_MES',
'    FROM CRM_DIM_DATAS DD',
'        ,PERIODO_BASE  PB',
'   WHERE DD.DATA BETWEEN PB.DATA_INICIAL AND PB.DATA_FINAL',
'   GROUP BY TRUNC(DD.DATA, ''MM'')',
'           ,DD.NOME_DO_MES',
'           ,DD.ANO),',
'DADOS AS',
' (SELECT C.*',
'        ,TRUNC(NVL((SELECT SUM(RF.VALOR_GLOSADO)',
'                     FROM CAS_RETORNOS_FINANCEIROS RF',
'                    WHERE RF.DATA_ATENDIMENTO BETWEEN C.DATA_INICIAL AND C.DATA_FINAL), 0)) VALOR_GLOSAS',
'        ,TRUNC(NVL((SELECT SUM(RF.VALOR_GLOSADO)',
'                     FROM CAS_RETORNOS_FINANCEIROS RF',
'                         ,CAS_RECURSOS_GLOSAS      RG',
'                    WHERE RF.SEQ_RETORNO_FINANCEIRO = RG.SEQ_RETORNO_FINANCEIRO',
'                      AND RF.DATA_ATENDIMENTO BETWEEN C.DATA_INICIAL AND C.DATA_FINAL), 0)) VALOR_RECURSOS',
'    FROM CALENDARIO C)',
'SELECT ''chart-pie'' AS CARD_TYPE',
'      ,''fa-pie-chart'' AS CARD_ICON',
'      ,NULL AS CARD_ICON_COLOR',
'      ,NULL AS CARD_HEADER_STYLE',
'      ,D.NOME_DO_MES AS CARD_TITLE',
'      ,''Valor Total Glosas: R$'' || TO_CHAR(D.VALOR_GLOSAS,''FM999G999G990D00'') CARD_VALUE',
'      ,''Valor Total Recursos: R$'' || TO_CHAR(D.VALOR_RECURSOS,''FM999G999G990D00'') CARD_FOOTER',
'      ,APEX_UTIL.PREPARE_URL(',
'        P_URL => ''f?p='' || V(''APP_ID'') || '':1050:'' || V(''APP_SESSION'') || ''::NO::P1050_DATA_INICIAL,P1050_DATA_FINAL:'' || D.DATA_INICIAL || '','' || D.DATA_FINAL,',
'        P_CHECKSUM_TYPE => ''SESSION'') CARD_LINK',
'      ,CASE WHEN D.VALOR_RECURSOS = 0 THEN',
'       ''{',
'           "labels": ["'' || 0 || '' %"],',
'            "series": ['' || 0 || '']',
'        }''',
'      ELSE',
'       ''{',
'           "labels": ["'' || TRUNC( D.VALOR_RECURSOS / (nvl(D.VALOR_GLOSAS, 0) / 100)) || '' %"],',
'            "series": ['' || TRUNC(D.VALOR_RECURSOS / (nvl(D.VALOR_GLOSAS, 0) / 100)) || '']',
'        }''',
'       END AS CARD_CHART_DATA',
'      ,''{',
'          "total": 100,',
'          "donut": true,',
'          "donutWidth": 260,',
'          "sliceWidth": 10',
'        }'' AS CARD_CHART_CONFIG',
'  FROM DADOS D',
' ORDER BY D.DATA_INICIAL DESC;'))
,p_plug_source_type=>'PLUGIN_APEX.MATERIAL.CARDS'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'{',
'  "cardWidth": 4,',
'  "refresh": 0',
'}'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35958803067060323)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(35934079535060314)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(35958251496060323)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(35952332289060320)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Recursos Glosas CASSI - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(35916556687060309)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DESENV'
,p_last_upd_yyyymmddhh24miss=>'20170718102113'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35957533049060323)
,p_plug_name=>'Recursos Glosas CASSI - Log In'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(35930551252060313)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35957825889060323)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(35957533049060323)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35957638058060323)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35957533049060323)
,p_prompt=>'Usuário'
,p_placeholder=>'usuário'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951161645060320)
,p_item_css_classes=>'icon-login-username'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35957692334060323)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35957533049060323)
,p_prompt=>'Senha'
,p_placeholder=>'senha'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951161645060320)
,p_item_css_classes=>'icon-login-password'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35957978239060323)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35957927697060323)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35958231418060323)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35958119709060323)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_01010
begin
wwv_flow_api.create_page(
 p_id=>1010
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Novo Arquivo'
,p_page_mode=>'MODAL'
,p_step_title=>'Novo Arquivo'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180511151219'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24116132443999741)
,p_plug_name=>'Importar Arquivo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(35922666652060311)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24116802260999741)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(35922807767060311)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24117262461999741)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24116802260999741)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24116722442999741)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24116802260999741)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_image_alt=>'Apagar'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P1010_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24116613337999741)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24116802260999741)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P1010_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24116501628999741)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24116802260999741)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P1010_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24119968952999745)
,p_name=>'P1010_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24116132443999741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24120382562999749)
,p_name=>'P1010_NOME_ARQUIVO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24116132443999741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome Arquivo'
,p_source=>'NOME_ARQUIVO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951523944060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24120758498999756)
,p_name=>'P1010_MIMETYPE_ARQUIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24116132443999741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype Arquivo'
,p_source=>'MIMETYPE_ARQUIVO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24121179449999756)
,p_name=>'P1010_CHARSET_ARQUIVO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24116132443999741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Charset Arquivo'
,p_source=>'CHARSET_ARQUIVO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24121559931999757)
,p_name=>'P1010_BLOB_ARQUIVO'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24116132443999741)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Arquivo'
,p_source=>'BLOB_ARQUIVO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951523944060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE_ARQUIVO'
,p_attribute_03=>'NOME_ARQUIVO'
,p_attribute_04=>'CHARSET_ARQUIVO'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24117383751999741)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24117262461999741)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24118162788999743)
,p_event_id=>wwv_flow_api.id(24117383751999741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12392490788799083)
,p_name=>'Resize Dialog'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12392877320799121)
,p_event_id=>wwv_flow_api.id(12392490788799083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_NL.DETORA.APEX.RESIZE_DIALOG'
,p_attribute_01=>'true'
,p_attribute_02=>'20'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13293247100476746)
,p_name=>'Prevent Multiple Mouse Clicks'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24116501628999741)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13293681745476747)
,p_event_id=>wwv_flow_api.id(13293247100476746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$("body").append(''<div class="ui-widget-overlay ui-front"/>'');',
'apex.widget.waitPopup();',
'apex.submit("CREATE");'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24122343106999759)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CAS_ARQUIVOS_REC_GLOSAS'
,p_attribute_02=>'CAS_ARQUIVOS_REC_GLOSAS'
,p_attribute_03=>'P1010_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24122750945999760)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CAS_ARQUIVOS_REC_GLOSAS'
,p_attribute_02=>'CAS_ARQUIVOS_REC_GLOSAS'
,p_attribute_03=>'P1010_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24123191294999760)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24116722442999741)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24123593079999760)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_01020
begin
wwv_flow_api.create_page(
 p_id=>1020
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Arquivos de Recursos'
,p_page_mode=>'NORMAL'
,p_step_title=>'Arquivos de Recursos'
,p_step_sub_title=>'Arquivos Importados / Processados'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.erro {',
'  color: red; }',
'',
'.sucesso {',
'  color: blue; }',
'',
'.pendente {',
'  color: yellow; }',
'',
'.finalizado {',
'  color: green; }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(19325279291421142)
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180502104501'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13003188615151913)
,p_plug_name=>'Arquivos de Recursos'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(35930763326060313)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ARG.SEQUENCIA_ARQUIVO AS "SEQUENCIA_ARQUIVO"',
'      ,ARG.NOME_ARQUIVO AS "NOME_ARQUIVO"',
'      ,ARG.MIMETYPE_ARQUIVO AS "MIMETYPE_ARQUIVO"',
'      ,ARG.CHARSET_ARQUIVO AS "CHARSET_ARQUIVO"',
'      ,APEX_UTIL.FILESIZE_MASK(DBMS_LOB.GETLENGTH(ARG.BLOB_ARQUIVO)) AS "TAMANHO_ARQUIVO"',
'      ,CASE',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.PPT'') > 0 OR INSTR(UPPER(ARG.NOME_ARQUIVO), ''.PPTX'') > 0 THEN',
'          ''fa fa fa-file-powerpoint-o''',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.XLS'') > 0 OR INSTR(UPPER(ARG.NOME_ARQUIVO), ''.XLSX'') > 0 THEN',
'          ''fa fa fa-file-excel-o''',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.DOC'') > 0 OR INSTR(UPPER(ARG.NOME_ARQUIVO), ''.DOCX'') > 0 THEN',
'          ''fa fa fa-file-word-o''',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.PDF'') > 0 THEN',
'          ''fa fa fa-file-pdf-o''',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.TXT'') > 0 THEN',
'          ''fa fa fa-file-text-o''',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.GIF'') > 0 OR INSTR(UPPER(ARG.NOME_ARQUIVO), ''.PNG'') > 0 OR',
'              INSTR(UPPER(ARG.NOME_ARQUIVO), ''.TIFF'') > 0 OR INSTR(UPPER(ARG.NOME_ARQUIVO), ''.JPG'') > 0 THEN',
'          ''fa fa fa-file-image-o''',
'         ELSE',
'          ''fa fa fa-file-o''',
'       END AS "ICONE_ARQUIVO"',
'      ,CASE',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.PPT'') > 0 OR INSTR(UPPER(ARG.NOME_ARQUIVO), ''.PPTX'') > 0 THEN',
'          ''MS POWERPOINT FILE''',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.XLS'') > 0 OR INSTR(UPPER(ARG.NOME_ARQUIVO), ''.XLSX'') > 0 THEN',
'          ''MS EXCEL FILE''',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.DOC'') > 0 OR INSTR(UPPER(ARG.NOME_ARQUIVO), ''.DOCX'') > 0 THEN',
'          ''MS WORD FILE''',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.PDF'') > 0 THEN',
'          ''ADOBE PDF FILE''',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.TXT'') > 0 THEN',
'          ''TEXT FILE''',
'         WHEN INSTR(UPPER(ARG.NOME_ARQUIVO), ''.GIF'') > 0 OR INSTR(UPPER(ARG.NOME_ARQUIVO), ''.PNG'') > 0 OR',
'              INSTR(UPPER(ARG.NOME_ARQUIVO), ''.TIFF'') > 0 OR INSTR(UPPER(ARG.NOME_ARQUIVO), ''.JPG'') > 0 THEN',
'          ''IMAGE FILE''',
'         ELSE',
'          ''FILE''',
'       END AS "TIPO_ARQUIVO"',
'      ,ARG.DTHR_IMPORTACAO_ARQUIVO AS "DTHR_IMPORTACAO_ARQUIVO"',
'      ,ARG.DTHR_PROCESSAMENTO_ARQUIVO AS "DTHR_PROCESSAMENTO_ARQUIVO"',
',      CASE WHEN ARG.STATUS_PROCESSAMENTO_ARQUIVO = ''P'' OR ARG.STATUS_PROCESSAMENTO_ARQUIVO IS NULL THEN ''PENDENTE''',
'            WHEN ARG.STATUS_PROCESSAMENTO_ARQUIVO = ''E'' THEN ''ERRO''',
'            ELSE ''FINALIZADO'' END STATUS_PROCESSAMENTO_ARQUIVO',
',      CASE WHEN ARG.STATUS_PROCESSAMENTO_ARQUIVO = ''P'' OR ARG.STATUS_PROCESSAMENTO_ARQUIVO IS NULL THEN ''fa-clock-o pendente''',
'            WHEN ARG.STATUS_PROCESSAMENTO_ARQUIVO = ''E'' THEN ''fa-times-circle erro''',
'            ELSE ''fa-check-circle finalizado'' END ICONE_STATUS_PROCESSAMENTO_ARQ',
'  FROM CAS_ARQUIVOS_REC_GLOSAS ARG'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(13003217415151913)
,p_name=>'Arquivos de Recursos'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'ADMIN'
,p_internal_uid=>13003217415151913
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13003580838151940)
,p_db_column_name=>'SEQUENCIA_ARQUIVO'
,p_display_order=>2
,p_column_identifier=>'A'
,p_column_label=>'Sequencia_Arquivo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13005530979151946)
,p_db_column_name=>'ICONE_ARQUIVO'
,p_display_order=>3
,p_column_identifier=>'F'
,p_column_label=>'Tipo'
,p_column_html_expression=>'<span class="#ICONE_ARQUIVO#" title="#TIPO_ARQUIVO#"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13003988608151945)
,p_db_column_name=>'NOME_ARQUIVO'
,p_display_order=>4
,p_column_identifier=>'B'
,p_column_label=>'Nome Arquivo'
,p_column_link=>'f?p=&APP_ID.:1030:&SESSION.::&DEBUG.::P1030_SEQUENCIA_ARQUIVO:#SEQUENCIA_ARQUIVO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">&nbsp;&nbsp;&nbsp;#NOME_ARQUIVO#'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13004395235151945)
,p_db_column_name=>'MIMETYPE_ARQUIVO'
,p_display_order=>5
,p_column_identifier=>'C'
,p_column_label=>'Mimetype_Arquivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13004749752151945)
,p_db_column_name=>'CHARSET_ARQUIVO'
,p_display_order=>6
,p_column_identifier=>'D'
,p_column_label=>'Charset_Arquivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13005196971151946)
,p_db_column_name=>'TAMANHO_ARQUIVO'
,p_display_order=>7
,p_column_identifier=>'E'
,p_column_label=>'Tamanho'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13005913999151947)
,p_db_column_name=>'TIPO_ARQUIVO'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Tipo Arquivo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13006312546151949)
,p_db_column_name=>'DTHR_IMPORTACAO_ARQUIVO'
,p_display_order=>9
,p_column_identifier=>'H'
,p_column_label=>'Data/Hora Importação'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13006732320151949)
,p_db_column_name=>'DTHR_PROCESSAMENTO_ARQUIVO'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Data/Hora Processamento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13007106313151949)
,p_db_column_name=>'STATUS_PROCESSAMENTO_ARQUIVO'
,p_display_order=>11
,p_column_identifier=>'J'
,p_column_label=>'Status Processamento'
,p_column_html_expression=>'<span class="t-Icon fa #ICONE_STATUS_PROCESSAMENTO_ARQ# "></span>&nbsp;&nbsp;#STATUS_PROCESSAMENTO_ARQUIVO#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13007523170151949)
,p_db_column_name=>'ICONE_STATUS_PROCESSAMENTO_ARQ'
,p_display_order=>12
,p_column_identifier=>'K'
,p_column_label=>'Icone_Status_Processamento_Arq'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(13008205321152662)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'130083'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NOME_ARQUIVO:TAMANHO_ARQUIVO:ICONE_ARQUIVO:TIPO_ARQUIVO:DTHR_IMPORTACAO_ARQUIVO:DTHR_PROCESSAMENTO_ARQUIVO:STATUS_PROCESSAMENTO_ARQUIVO:'
,p_sort_column_1=>'DTHR_PROCESSAMENTO_ARQUIVO'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24198284416233487)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(35934079535060314)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(35958251496060323)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(35952332289060320)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24228365910284021)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24198284416233487)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo Arquivo'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1010:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24229143238303090)
,p_name=>'Novo Arquivo - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24228365910284021)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24229572854303090)
,p_event_id=>wwv_flow_api.id(24229143238303090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(13003188615151913)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_01030
begin
wwv_flow_api.create_page(
 p_id=>1030
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Detalhes Arquivo de Recurso'
,p_page_mode=>'NORMAL'
,p_step_title=>'Detalhes Arquivo de Recurso'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.erro {',
'  color: red; }',
'',
'.sucesso {',
'  color: blue; }',
'',
'.pendente {',
'  color: yellow; }',
'',
'.finalizado {',
'  color: green; }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(19325279291421142)
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180502104527'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24265378804333486)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(35934079535060314)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(35958251496060323)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(35952332289060320)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24270091065368129)
,p_name=>'Detalhes do Arquivo de recursos'
,p_template=>wwv_flow_api.id(35930763326060313)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ARG.ROWID AS "ROWID"',
',      ''<a href="'' || APEX_UTIL.GET_BLOB_FILE_SRC(''P1010_BLOB_ARQUIVO'', ARG.ROWID) || ''">'' || APEX_ESCAPE.HTML(ARG.NOME_ARQUIVO) || ''</a>'' AS "NOME_ARQUIVO"',
',      ARG.DTHR_IMPORTACAO_ARQUIVO',
',      ARG.LOG_PROCESSAMENTO_ARQUIVO',
',      CASE WHEN ARG.STATUS_PROCESSAMENTO_ARQUIVO = ''P'' OR ARG.STATUS_PROCESSAMENTO_ARQUIVO IS NULL THEN ''PENDENTE''',
'            WHEN ARG.STATUS_PROCESSAMENTO_ARQUIVO = ''E'' THEN ''FINALIZADO''',
'            ELSE ''FINALIZADO'' END STATUS_PROCESSAMENTO_ARQUIVO',
',      CASE WHEN ARG.STATUS_PROCESSAMENTO_ARQUIVO = ''P'' OR ARG.STATUS_PROCESSAMENTO_ARQUIVO IS NULL THEN ''fa-clock-o pendente''',
'            WHEN ARG.STATUS_PROCESSAMENTO_ARQUIVO = ''E'' THEN ''fa-times-circle erro''',
'            ELSE ''fa-check-circle finalizado'' END ICONE_STATUS_PROCESSAMENTO_ARQ',
',      ARG.DTHR_PROCESSAMENTO_ARQUIVO',
'FROM   CAS_ARQUIVOS_REC_GLOSAS ARG',
'WHERE  ARG.SEQUENCIA_ARQUIVO = :P1030_SEQUENCIA_ARQUIVO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(35941090993060316)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12256396615024293)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>7
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24270600143368147)
,p_query_column_id=>2
,p_column_alias=>'NOME_ARQUIVO'
,p_column_display_sequence=>1
,p_column_heading=>'Nome do Arquivo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24271053466368155)
,p_query_column_id=>3
,p_column_alias=>'DTHR_IMPORTACAO_ARQUIVO'
,p_column_display_sequence=>2
,p_column_heading=>'Data/Hora da Importação'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24271427519368157)
,p_query_column_id=>4
,p_column_alias=>'LOG_PROCESSAMENTO_ARQUIVO'
,p_column_display_sequence=>6
,p_column_heading=>'Mensagem do Processamento'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24271873456368157)
,p_query_column_id=>5
,p_column_alias=>'STATUS_PROCESSAMENTO_ARQUIVO'
,p_column_display_sequence=>4
,p_column_heading=>'Status do Processamento'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="t-Icon fa #ICONE_STATUS_PROCESSAMENTO_ARQ# "></span>&nbsp;&nbsp;#STATUS_PROCESSAMENTO_ARQUIVO#'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24324348571880301)
,p_query_column_id=>6
,p_column_alias=>'ICONE_STATUS_PROCESSAMENTO_ARQ'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24272202970368157)
,p_query_column_id=>7
,p_column_alias=>'DTHR_PROCESSAMENTO_ARQUIVO'
,p_column_display_sequence=>5
,p_column_heading=>'Data/Hora Processamento'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24351560023032868)
,p_name=>'Operações do Arquivo'
,p_template=>wwv_flow_api.id(35930763326060313)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LPARG.NUMERO_LINHA',
',      LPARG.NUMERO_CARTA_REMESSA',
',      LPARG.DATA_ATENDIMENTO',
',      LPARG.NUMERO_CUPOM_FISCAL',
',      LPARG.CODIGO_EAN_ENVIADO',
',      I.NOMENCLATURA_VAREJO',
',      CASE WHEN LPARG.STATUS_LOG_PROCESSAMENTO = ''A'' THEN ''fa-exclamation-circle pendente''',
'            WHEN LPARG.STATUS_LOG_PROCESSAMENTO = ''E'' THEN ''fa-times-circle erro''',
'            ELSE ''fa-check-circle finalizado'' END TIPO_LOG_PROCESSAMENTO',
',      LPARG.LOG_PROCESSAMENTO',
'FROM   CAS_LOG_PROC_ARQ_REC_GLOSAS LPARG',
',      ITENS I',
'WHERE  LPARG.CODIGO_EAN_ENVIADO = I.CODIGO_DE_BARRAS_FORNECEDOR (+)',
'AND    LPARG.SEQUENCIA_ARQUIVO = :P1030_SEQUENCIA_ARQUIVO',
'ORDER  BY LPARG.NUMERO_LINHA'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(35939576583060316)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24352109243032872)
,p_query_column_id=>1
,p_column_alias=>'NUMERO_LINHA'
,p_column_display_sequence=>1
,p_column_heading=>'Linha'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24352534935032872)
,p_query_column_id=>2
,p_column_alias=>'NUMERO_CARTA_REMESSA'
,p_column_display_sequence=>2
,p_column_heading=>'Carta Remessa'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24352908977032872)
,p_query_column_id=>3
,p_column_alias=>'DATA_ATENDIMENTO'
,p_column_display_sequence=>3
,p_column_heading=>'Data Atendimento'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24353332294032873)
,p_query_column_id=>4
,p_column_alias=>'NUMERO_CUPOM_FISCAL'
,p_column_display_sequence=>4
,p_column_heading=>'Cupom Fiscal'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24353734952032873)
,p_query_column_id=>5
,p_column_alias=>'CODIGO_EAN_ENVIADO'
,p_column_display_sequence=>5
,p_column_heading=>'Item'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24354133505032873)
,p_query_column_id=>6
,p_column_alias=>'NOMENCLATURA_VAREJO'
,p_column_display_sequence=>6
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24354503185032874)
,p_query_column_id=>7
,p_column_alias=>'TIPO_LOG_PROCESSAMENTO'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24354929960032874)
,p_query_column_id=>8
,p_column_alias=>'LOG_PROCESSAMENTO'
,p_column_display_sequence=>8
,p_column_heading=>'Mensagem Processamento'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="t-Icon fa #TIPO_LOG_PROCESSAMENTO# "></span>&nbsp;&nbsp;#LOG_PROCESSAMENTO#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24275977253381348)
,p_name=>'P1030_SEQUENCIA_ARQUIVO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24270091065368129)
,p_prompt=>'Sequencia Arquivo'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(35951161645060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_01040
begin
wwv_flow_api.create_page(
 p_id=>1040
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Parâmetros Aplicação'
,p_page_mode=>'NORMAL'
,p_step_title=>'Parâmetros Aplicação'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(19325279291421142)
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180502104541'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12207862800227329)
,p_plug_name=>'Parâmetros Aplicação'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(35930763326060313)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12220826699290552)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(35934079535060314)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(35958251496060323)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(35952332289060320)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12208340387227330)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12220826699290552)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P1040_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12208236634227330)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12220826699290552)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Criar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P1040_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12210510020227334)
,p_name=>'P1040_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12210928044227334)
,p_name=>'P1040_EMAIL_ADMINISTRADOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Administrador'
,p_source=>'EMAIL_ADMINISTRADOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12211362318227335)
,p_name=>'P1040_URL_PROXY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'URL Proxy'
,p_source=>'URL_PROXY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12211755357227337)
,p_name=>'P1040_USUARIO_PROXY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usuário Proxy'
,p_source=>'USUARIO_PROXY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12212125317227337)
,p_name=>'P1040_SENHA_PROXY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Senha Proxy'
,p_source=>'SENHA_PROXY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12212562114227338)
,p_name=>'P1040_URL_WEBSERVICE_ARQUIVOS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'URL Webservice Arquivos'
,p_source=>'URL_WEBSERVICE_ARQUIVOS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12212966465227339)
,p_name=>'P1040_USUARIO_WEBSERVICE_ARQUI'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usuário WebService Arquivos'
,p_source=>'USUARIO_WEBSERVICE_ARQUIVOS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12213363550227340)
,p_name=>'P1040_SENHA_WEBSERVICE_ARQUIVO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Senha WebService Arquivos'
,p_source=>'SENHA_WEBSERVICE_ARQUIVOS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12213784188227340)
,p_name=>'P1040_URL_SITE_RECURSOS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'URL Site Recursos'
,p_source=>'URL_SITE_RECURSOS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12214138560227341)
,p_name=>'P1040_USUARIO_SITE_RECURSOS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usuário Site Recursos'
,p_source=>'USUARIO_SITE_RECURSOS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12214565429227342)
,p_name=>'P1040_SENHA_SITE_RECURSOS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Senha Site Recursos'
,p_source=>'SENHA_SITE_RECURSOS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12224428655346559)
,p_name=>'P1040_URL_LOGIN_SITE_RECURSOS'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_api.id(12207862800227329)
,p_use_cache_before_default=>'NO'
,p_prompt=>'URL Login Site Recursos'
,p_source=>'URL_LOGIN_SITE_RECURSOS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(12220065802270426)
,p_computation_sequence=>10
,p_computation_item=>'P1040_ROWID'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ROWID',
'FROM   CAS_PARAMETROS_RECURSOS '))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12218313394227349)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CAS_PARAMETROS_RECURSOS'
,p_attribute_02=>'CAS_PARAMETROS_RECURSOS'
,p_attribute_03=>'P1040_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12218701373227349)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CAS_PARAMETROS_RECURSOS'
,p_attribute_02=>'CAS_PARAMETROS_RECURSOS'
,p_attribute_03=>'P1040_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
end;
/
prompt --application/pages/page_01050
begin
wwv_flow_api.create_page(
 p_id=>1050
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Glosas Recebidas'
,p_page_mode=>'NORMAL'
,p_step_title=>'Glosas Recebidas'
,p_step_sub_title=>'Consulta de Glosas'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.is-open {  ',
'  color: #ff2d55; }  ',
'  ',
'.is-holding {  ',
'  color: #ffcc00; }  ',
'  ',
'.is-pending {  ',
'  color: #ff9500; }  ',
'  ',
'.is-closed {  ',
'  color: #4cd964; }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(19325279291421142)
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180502104557'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12301531149550741)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(35934079535060314)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(35958251496060323)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(35952332289060320)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12302037657550754)
,p_plug_name=>'Glosas Recebidas'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(35930276739060313)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT /*+ ORDERED INDEX (I ITEM_CBF_UK) */',
'       APEX_ITEM.CHECKBOX2(P_IDX => 1',
'                          ,P_VALUE => RF.SEQ_RETORNO_FINANCEIRO',
'                          ,P_ATTRIBUTES => ''class="SELECIONADO"''',
'                          ,P_CHECKED_VALUES => :P1050_SELECAO_SEQUENCIAS',
'                          ,P_CHECKED_VALUES_DELIMITER => '','') CHECKBOX',
',      RF.SEQ_RETORNO_FINANCEIRO',
',      RF.NUM_CARTA_REMESSA',
',      RF.NUMERO_GUIA',
',      RF.NUMERO_AUTORIZACAO',
',      RF.NUMERO_CUPOM_SAIDA',
',      RF.DATA_ATENDIMENTO',
',      RF.CODIGO_BENEFICIARIO',
',      RF.NOME_BENEFICIARIO',
',      RF.CODIGO_EAN_CASSI',
',      RF.CODIGO_EAN_ENVIADO',
',      NVL(I.NOMENCLATURA_VAREJO,RF.DESCRICAO_PRODUTO) NOMENCLATURA_VAREJO',
',      RF.TIPO_PRODUTO',
',      RF.MOTIVO_GLOSA',
',      RF.VALOR_APRESENTADO',
',      RF.VALOR_PAGAMENTO',
',      RF.VALOR_GLOSADO',
',      (SELECT COUNT(*)',
'        FROM   CAS_RECURSOS_GLOSAS RG',
'        WHERE  RG.SEQ_RETORNO_FINANCEIRO = RF.SEQ_RETORNO_FINANCEIRO) NUMERO_RECURSOS',
',      CASE WHEN (SELECT COUNT(*)',
'                  FROM   CAS_RECURSOS_GLOSAS RG',
'                  WHERE  RG.SEQ_RETORNO_FINANCEIRO = RF.SEQ_RETORNO_FINANCEIRO) > 0 THEN ''t-Button--hot'' ELSE ''apex_disabled"'' END CLASSE_BOTAO',
'FROM   CAS_RETORNOS_FINANCEIROS RF',
',      ITENS I',
'WHERE  RF.CODIGO_EAN_ENVIADO = I.CODIGO_DE_BARRAS_FORNECEDOR (+)',
'AND    RF.VALOR_GLOSADO > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1050_SELECAO_SEQUENCIAS'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12302158566550754)
,p_name=>'Consulta de Glosas'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLS'
,p_detail_link_text=>'<span class="a-Icon icon-search" aria-hidden="true"></span>'
,p_allow_exclude_null_values=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ADMIN'
,p_internal_uid=>12302158566550754
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12604322649665701)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>10
,p_column_identifier=>'R'
,p_column_label=>'Recursar'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12302527741550756)
,p_db_column_name=>'SEQ_RETORNO_FINANCEIRO'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Seq Retorno Financeiro'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12302957896550759)
,p_db_column_name=>'NUM_CARTA_REMESSA'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Carta Remessa'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12303388944550760)
,p_db_column_name=>'NUMERO_GUIA'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Guia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12303761362550760)
,p_db_column_name=>'NUMERO_AUTORIZACAO'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Autorização'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12304100405550762)
,p_db_column_name=>'NUMERO_CUPOM_SAIDA'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Cupom Fiscal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12304597895550762)
,p_db_column_name=>'DATA_ATENDIMENTO'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Data Atendimento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12304902431550762)
,p_db_column_name=>'CODIGO_BENEFICIARIO'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Beneficiário'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12305323523550762)
,p_db_column_name=>'NOME_BENEFICIARIO'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Nome do Beneficiário'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12305741472550762)
,p_db_column_name=>'CODIGO_EAN_CASSI'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'EAN CASSI'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12306145400550763)
,p_db_column_name=>'CODIGO_EAN_ENVIADO'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'EAN Enviado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12306590204550763)
,p_db_column_name=>'NOMENCLATURA_VAREJO'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Descrição do Item'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12306994523550763)
,p_db_column_name=>'TIPO_PRODUTO'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Tipo do Item'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12307312444550764)
,p_db_column_name=>'MOTIVO_GLOSA'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Motivo da Glosa'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12307789449550764)
,p_db_column_name=>'VALOR_APRESENTADO'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Valor Apresentado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12308134217550764)
,p_db_column_name=>'VALOR_PAGAMENTO'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Valor Pagamento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12308507170550764)
,p_db_column_name=>'VALOR_GLOSADO'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Valor Glosado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12308984289550764)
,p_db_column_name=>'NUMERO_RECURSOS'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Recursos'
,p_column_link=>'f?p=&APP_ID.:1080:&SESSION.::&DEBUG.:1080:P1080_SEQ_RETORNO_FINANCEIRO:#SEQ_RETORNO_FINANCEIRO#'
,p_column_linktext=>'#NUMERO_RECURSOS#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--primary t-Button--small #CLASSE_BOTAO#"'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'ITEM_IS_NOT_ZERO'
,p_display_condition=>'#NUMERO_RECURSOS#'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12974105036117674)
,p_db_column_name=>'CLASSE_BOTAO'
,p_display_order=>181
,p_column_identifier=>'S'
,p_column_label=>'Classe Botao'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12309334135551842)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'123094'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NUMERO_RECURSOS:CHECKBOX:NUM_CARTA_REMESSA:NUMERO_GUIA:NUMERO_AUTORIZACAO:NUMERO_CUPOM_SAIDA:DATA_ATENDIMENTO:CODIGO_BENEFICIARIO:NOME_BENEFICIARIO:CODIGO_EAN_CASSI:CODIGO_EAN_ENVIADO:NOMENCLATURA_VAREJO:TIPO_PRODUTO:MOTIVO_GLOSA:VALOR_APRESENTADO:VA'
||'LOR_PAGAMENTO:VALOR_GLOSADO:CLASSE_BOTAO'
,p_sort_column_1=>'NUM_CARTA_REMESSA'
,p_sort_direction_1=>'ASC NULLS LAST'
,p_sort_column_2=>'DATA_ATENDIMENTO'
,p_sort_direction_2=>'ASC NULLS LAST'
,p_sort_column_3=>'NUMERO_GUIA'
,p_sort_direction_3=>'ASC NULLS LAST'
,p_sort_column_4=>'NUMERO_CUPOM_SAIDA'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12604731650665705)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12302037657550754)
,p_button_name=>'RECURSAR'
,p_button_static_id=>'RECURSAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Recursar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1070:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12453393065324786)
,p_name=>'P1050_DATA_INICIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12302037657550754)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12453622121324794)
,p_name=>'P1050_DATA_FINAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12302037657550754)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12604467591665702)
,p_name=>'P1050_SELECAO_SEQUENCIAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12302037657550754)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12604589756665703)
,p_name=>'Checkbox Selection'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.SELECIONADO'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12604676548665704)
,p_event_id=>wwv_flow_api.id(12604589756665703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1050_SELECAO_SEQUENCIAS'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var',
'  $checkBox = $(this.triggeringElement),',
'  apexItemIDList = apex.item(this.affectedElements.get(0)),',
'  ids = apexItemIDList.getValue().length === 0 ? [] : apexItemIDList.getValue().split('',''),',
'  idIndex = ids.indexOf($checkBox.val())',
';',
'if ($checkBox.is('':checked'') && idIndex < 0) {',
'  ids.push($checkBox.val());',
'}',
'else if (!$checkBox.is('':checked'') && idIndex >= 0){',
'  ids.splice(idIndex, 1);',
'}',
'apexItemIDList.setValue(ids.join('',''));'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12687920188908241)
,p_event_id=>wwv_flow_api.id(12604589756665703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'  --',
'  NULL;',
'  --',
'END;'))
,p_attribute_02=>'P1050_SELECAO_SEQUENCIAS'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12663334697341379)
,p_name=>'Is Any Checked'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1050_SELECAO_SEQUENCIAS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12663745378341380)
,p_event_id=>wwv_flow_api.id(12663334697341379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$("#RECURSAR").addClass("apex_disabled");',
'$("#RECURSAR").removeClass("t-Button--hot");'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12672469667538310)
,p_event_id=>wwv_flow_api.id(12663334697341379)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$("#RECURSAR").removeClass("apex_disabled");',
'$("#RECURSAR").addClass("t-Button--hot");'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12696978584162556)
,p_name=>'Recursar Button - Dialog Closed'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12604731650665705)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12697820610166004)
,p_event_id=>wwv_flow_api.id(12696978584162556)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1050_SELECAO_SEQUENCIAS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12701184796410668)
,p_event_id=>wwv_flow_api.id(12696978584162556)
,p_event_result=>'TRUE'
,p_action_sequence=>7
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_DE.DANIELH.TOASTRNOTIFICATIONS'
,p_attribute_01=>'success'
,p_attribute_02=>'Solicitações de recursos efetuadas com sucesso!'
,p_attribute_03=>'toast-top-right'
,p_attribute_04=>'true'
,p_attribute_05=>'true'
,p_attribute_06=>'true'
,p_attribute_07=>'true'
,p_attribute_08=>'300'
,p_attribute_09=>'1000'
,p_attribute_10=>'5000'
,p_attribute_11=>'1000'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12697369459162558)
,p_event_id=>wwv_flow_api.id(12696978584162556)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12302037657550754)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12397291412140629)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Default Filter'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_REGION_ID APEX_050000.APEX_APPLICATION_PAGE_REGIONS.REGION_ID%TYPE;',
'  V_DATA_BASE DATE;',
'BEGIN',
'  --',
'  IF :P1050_DATA_INICIAL IS NULL THEN',
'    SELECT MAX(RF.DATA_ATENDIMENTO)',
'      INTO V_DATA_BASE',
'      FROM CAS_RETORNOS_FINANCEIROS RF;',
'    --',
'    :P1050_DATA_INICIAL := TRUNC(V_DATA_BASE, ''MM'');',
'    :P1050_DATA_FINAL := LAST_DAY(V_DATA_BASE);',
'  END IF;',
'  --',
'  SELECT REGION_ID',
'    INTO V_REGION_ID',
'    FROM APEX_050000.APEX_APPLICATION_PAGE_REGIONS',
'   WHERE APPLICATION_ID = :APP_ID',
'     AND PAGE_ID = :APP_PAGE_ID',
'     AND TEMPLATE = ''Interactive Report'';',
'  --',
'  APEX_IR.RESET_REPORT(P_PAGE_ID => :APP_PAGE_ID',
'                      ,P_REGION_ID => V_REGION_ID',
'                      ,P_REPORT_ID => NULL);',
'  --',
'  DMD_APEX_IR.ADD_BETWEEN_FILTER(P_PAGE_ID => :APP_PAGE_ID',
'                                ,P_REGION_ID => V_REGION_ID',
'                                ,P_REPORT_COLUMN => ''DATA_ATENDIMENTO''',
'                                ,P_FILTER_VALUE => :P1050_DATA_INICIAL',
'                                ,P_FILTER_VALUE_2 => :P1050_DATA_FINAL);',
'  --',
'END;',
''))
);
end;
/
prompt --application/pages/page_01060
begin
wwv_flow_api.create_page(
 p_id=>1060
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Recursos Registrados'
,p_page_mode=>'NORMAL'
,p_step_title=>'Recursos Registrados'
,p_step_sub_title=>'Consulta de Recursos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.erro {',
'  color: red; }',
'',
'.sucesso {',
'  color: blue; }',
'',
'.pendente {',
'  color: yellow; }',
'',
'.finalizado {',
'  color: green; }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(19325279291421142)
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180502104619'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12477634288838226)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(35934079535060314)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(35958251496060323)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(35952332289060320)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12478222537838240)
,p_plug_name=>'Recursos Registrados'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(35930276739060313)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT RF.NUM_CARTA_REMESSA',
',      RF.NUMERO_GUIA',
',      RF.NUMERO_AUTORIZACAO',
',      RF.NUMERO_CUPOM_SAIDA',
',      RF.DATA_ATENDIMENTO',
',      RF.MOTIVO_GLOSA',
',      RF.VALOR_APRESENTADO',
',      RF.VALOR_PAGAMENTO',
',      RF.VALOR_GLOSADO',
',      RG.DTHR_SOLICITACAO_RECURSO',
',      RG.DESCRICAO_RECURSO',
',      RG.DTHR_RECURSO',
',      RG.NUMERO_PROTOCOLO_RECURSO',
',      CASE WHEN RG.STATUS_RECURSO = ''P'' THEN ''PENDENTE''',
'            WHEN RG.STATUS_RECURSO = ''E'' THEN ''ERRO''',
'            ELSE ''FINALIZADO'' END STATUS_RECURSO',
',      CASE WHEN RG.STATUS_RECURSO = ''P'' THEN ''fa-clock-o pendente''',
'            WHEN RG.STATUS_RECURSO = ''E'' THEN ''fa-times-circle erro''',
'            ELSE ''fa-check-circle finalizado'' END ICONE_STATUS_RECURSO',
',      RG.LOG_RECURSO',
'FROM   CAS_RECURSOS_GLOSAS RG',
',      CAS_RETORNOS_FINANCEIROS RF',
'WHERE  RG.SEQ_RETORNO_FINANCEIRO = RF.SEQ_RETORNO_FINANCEIRO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12478372708838240)
,p_name=>'Consulta de Recursos'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLS:PDF:RTF'
,p_detail_link_text=>'<span class="a-Icon icon-search" aria-hidden="true"></span>'
,p_icon_view_columns_per_row=>1
,p_owner=>'ADMIN'
,p_internal_uid=>12478372708838240
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12478766789838257)
,p_db_column_name=>'NUM_CARTA_REMESSA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Carta Remessa'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12479087932838264)
,p_db_column_name=>'NUMERO_GUIA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Guia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12479454271838265)
,p_db_column_name=>'NUMERO_CUPOM_SAIDA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cupom Fiscal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12479852587838265)
,p_db_column_name=>'DATA_ATENDIMENTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Data Atendimento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12480259121838265)
,p_db_column_name=>'MOTIVO_GLOSA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Motivo da Glosa'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12480628196838266)
,p_db_column_name=>'VALOR_APRESENTADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Valor Apresentado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990D00'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12481088940838266)
,p_db_column_name=>'VALOR_GLOSADO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Valor Glosado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990D00'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12481436810838266)
,p_db_column_name=>'DTHR_SOLICITACAO_RECURSO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Data/Hora Solicitação Recurso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12481887838838266)
,p_db_column_name=>'DESCRICAO_RECURSO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Descrição Recurso'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12482273797838267)
,p_db_column_name=>'DTHR_RECURSO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Data/Hora Recurso'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12482646579838267)
,p_db_column_name=>'STATUS_RECURSO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Status Recurso'
,p_column_html_expression=>'<span class="t-Icon fa #ICONE_STATUS_RECURSO# "></span>&nbsp;&nbsp;#STATUS_RECURSO#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12483014604838268)
,p_db_column_name=>'LOG_RECURSO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Log Recurso'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12484517826851158)
,p_db_column_name=>'NUMERO_AUTORIZACAO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Autorização'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12485208657851160)
,p_db_column_name=>'VALOR_PAGAMENTO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Valor Pagamento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990D00'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13069724790891742)
,p_db_column_name=>'NUMERO_PROTOCOLO_RECURSO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Protocolo Recurso'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13070488277891750)
,p_db_column_name=>'ICONE_STATUS_RECURSO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Icone Status Recurso'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12483448754838832)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'124835'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NUM_CARTA_REMESSA:NUMERO_GUIA:NUMERO_AUTORIZACAO:NUMERO_CUPOM_SAIDA:DATA_ATENDIMENTO:MOTIVO_GLOSA:VALOR_APRESENTADO:VALOR_PAGAMENTO:VALOR_GLOSADO:DTHR_SOLICITACAO_RECURSO:DESCRICAO_RECURSO:DTHR_RECURSO:STATUS_RECURSO:LOG_RECURSO:NUMERO_PROTOCOLO_RECU'
||'RSO:ICONE_STATUS_RECURSO'
,p_sort_column_1=>'DTHR_SOLICITACAO_RECURSO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DTHR_RECURSO'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'NUM_CARTA_REMESSA'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'DATA_ATENDIMENTO'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'NUMERO_GUIA'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'NUMERO_CUPOM_SAIDA'
,p_sort_direction_6=>'ASC'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_01070
begin
wwv_flow_api.create_page(
 p_id=>1070
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Registrar Recursos'
,p_page_mode=>'MODAL'
,p_step_title=>'Registrar Recursos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'280'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20170912185112'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12604863401665706)
,p_plug_name=>'Recursos de Glosas'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(35930763326060313)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12606253904665720)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(35930763326060313)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12605008575665708)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12606253904665720)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12605117422665709)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12606253904665720)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(35951830129060320)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Gravar Recursos'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12604904697665707)
,p_name=>'P1070_DESCRICAO_RECURSOS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12604863401665706)
,p_prompt=>'Descrição recursos'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(35951523944060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12674380418573657)
,p_name=>'P1070_SELECAO_SEQUENCIAS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12604863401665706)
,p_prompt=>'Selecao Sequencias'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(12693863509028041)
,p_computation_sequence=>10
,p_computation_item=>'P1070_SELECAO_SEQUENCIAS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'V(''P1050_SELECAO_SEQUENCIAS'')'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12653917799073966)
,p_validation_name=>'P1070_DESCRICAO_RECURSOS'
,p_validation_sequence=>10
,p_validation=>'P1070_DESCRICAO_RECURSOS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(12605117422665709)
,p_associated_item=>wwv_flow_api.id(12604904697665707)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12652198168048571)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12605008575665708)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12652544205048579)
,p_event_id=>wwv_flow_api.id(12652198168048571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13295091033495743)
,p_name=>'Prevent Multiple Mouse Clicks'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12605117422665709)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13295460659495745)
,p_event_id=>wwv_flow_api.id(13295091033495743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$("body").append(''<div class="ui-widget-overlay ui-front"/>'');',
'apex.widget.waitPopup();',
'apex.submit("SAVE");'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12655980271107448)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Gravar Recursos'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'  --',
'  UPDATE CAS_RECURSOS_GLOSAS RG',
'     SET RG.LOG_RECURSO = ''Recurso substituido manualmente!''',
'        ,RG.STATUS_RECURSO = ''F''',
'   WHERE RG.SEQ_RETORNO_FINANCEIRO IN (SELECT REGEXP_SUBSTR(:P1070_SELECAO_SEQUENCIAS, ''[^,]+'', 1, LEVEL)',
'                                         FROM DUAL',
'                                       CONNECT BY LEVEL <= REGEXP_COUNT(:P1070_SELECAO_SEQUENCIAS, '','') + 1',
'                                              AND PRIOR SYS_GUID() IS NOT NULL)',
'     AND RG.STATUS_RECURSO = ''P'';',
'  --',
'  INSERT INTO CAS_RECURSOS_GLOSAS(SEQ_RETORNO_FINANCEIRO',
'                                 ,DTHR_SOLICITACAO_RECURSO',
'                                 ,USUARIO_SOLICITACAO_RECURSO',
'                                 ,DESCRICAO_RECURSO',
'                                 ,STATUS_RECURSO)',
'  SELECT REGEXP_SUBSTR(:P1070_SELECAO_SEQUENCIAS, ''[^,]+'', 1, LEVEL)',
'        ,SYSDATE',
'        ,NVL(V(''APP_USER''),USER)',
'        ,:P1070_DESCRICAO_RECURSOS',
'        ,''P''',
'    FROM DUAL',
'  CONNECT BY LEVEL <= REGEXP_COUNT(:P1070_SELECAO_SEQUENCIAS, '','') + 1',
'         AND PRIOR SYS_GUID() IS NOT NULL;',
'  --',
'  COMMIT;',
'  --',
'  APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''<span style="color:green">Solicitações de recursos efetuadas com sucesso!</span>'';',
'  --',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12605117422665709)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12653518501062601)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_01080
begin
wwv_flow_api.create_page(
 p_id=>1080
,p_user_interface_id=>wwv_flow_api.id(35957023658060322)
,p_name=>'Consulta de Recursos Registrados'
,p_page_mode=>'MODAL'
,p_step_title=>'Consulta de Recursos Registrados'
,p_step_sub_title=>'Consulta de Recursos 2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.erro {',
'  color: red; }',
'',
'.sucesso {',
'  color: blue; }',
'',
'.pendente {',
'  color: yellow; }',
'',
'.finalizado {',
'  color: green; }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'80%'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20170912181122'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(13162804484122872)
,p_name=>'Detalhes da Glosa'
,p_template=>wwv_flow_api.id(35930763326060313)
,p_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT RF.NUM_CARTA_REMESSA',
',      RF.NUMERO_GUIA',
',      RF.NUMERO_AUTORIZACAO',
',      RF.NUMERO_CUPOM_SAIDA',
',      RF.DATA_ATENDIMENTO',
',      RF.MOTIVO_GLOSA',
',      RF.VALOR_APRESENTADO',
',      RF.VALOR_PAGAMENTO',
',      RF.VALOR_GLOSADO',
'FROM   CAS_RETORNOS_FINANCEIROS RF',
'WHERE  RF.SEQ_RETORNO_FINANCEIRO = :P1080_SEQ_RETORNO_FINANCEIRO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(35939576583060316)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13163473992122886)
,p_query_column_id=>1
,p_column_alias=>'NUM_CARTA_REMESSA'
,p_column_display_sequence=>1
,p_column_heading=>'Carta Remessa'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13163828056122890)
,p_query_column_id=>2
,p_column_alias=>'NUMERO_GUIA'
,p_column_display_sequence=>2
,p_column_heading=>'Guia'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13164222650122890)
,p_query_column_id=>3
,p_column_alias=>'NUMERO_AUTORIZACAO'
,p_column_display_sequence=>3
,p_column_heading=>'Autorização'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13164634679122890)
,p_query_column_id=>4
,p_column_alias=>'NUMERO_CUPOM_SAIDA'
,p_column_display_sequence=>4
,p_column_heading=>'Cupom Fiscal'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13165074720122891)
,p_query_column_id=>5
,p_column_alias=>'DATA_ATENDIMENTO'
,p_column_display_sequence=>5
,p_column_heading=>'Data Atendimento'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13165464528122891)
,p_query_column_id=>6
,p_column_alias=>'MOTIVO_GLOSA'
,p_column_display_sequence=>6
,p_column_heading=>'Motivo da Glosa'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13165805875122891)
,p_query_column_id=>7
,p_column_alias=>'VALOR_APRESENTADO'
,p_column_display_sequence=>7
,p_column_heading=>'Valor Apresentado'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13166268112122892)
,p_query_column_id=>8
,p_column_alias=>'VALOR_PAGAMENTO'
,p_column_display_sequence=>8
,p_column_heading=>'Valor Pagamento'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13166643569122892)
,p_query_column_id=>9
,p_column_alias=>'VALOR_GLOSADO'
,p_column_display_sequence=>9
,p_column_heading=>'Valor Glosado'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(13187807547153541)
,p_name=>'Recursos Registrados'
,p_template=>wwv_flow_api.id(35930763326060313)
,p_display_sequence=>7
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT RG.DTHR_SOLICITACAO_RECURSO',
',      RG.DESCRICAO_RECURSO',
',      RG.DTHR_RECURSO',
',      RG.NUMERO_PROTOCOLO_RECURSO',
',      CASE WHEN RG.STATUS_RECURSO = ''P'' THEN ''PENDENTE''',
'            WHEN RG.STATUS_RECURSO = ''E'' THEN ''ERRO''',
'            ELSE ''FINALIZADO'' END STATUS_RECURSO',
',      CASE WHEN RG.STATUS_RECURSO = ''P'' THEN ''fa-clock-o pendente''',
'            WHEN RG.STATUS_RECURSO = ''E'' THEN ''fa-times-circle erro''',
'            ELSE ''fa-check-circle finalizado'' END ICONE_STATUS_RECURSO',
',      RG.LOG_RECURSO',
'FROM   CAS_RECURSOS_GLOSAS RG',
',      CAS_RETORNOS_FINANCEIROS RF',
'WHERE  RG.SEQ_RETORNO_FINANCEIRO = RF.SEQ_RETORNO_FINANCEIRO',
'AND    RG.SEQ_RETORNO_FINANCEIRO = :P1080_SEQ_RETORNO_FINANCEIRO',
'ORDER  BY RG.DTHR_SOLICITACAO_RECURSO DESC'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(35939576583060316)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13188461921153550)
,p_query_column_id=>1
,p_column_alias=>'DTHR_SOLICITACAO_RECURSO'
,p_column_display_sequence=>1
,p_column_heading=>'Data/Hora Solicitação Recurso'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY HH24:MI:SS'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13188823087153552)
,p_query_column_id=>2
,p_column_alias=>'DESCRICAO_RECURSO'
,p_column_display_sequence=>2
,p_column_heading=>'Descrição Recurso'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13189250242153553)
,p_query_column_id=>3
,p_column_alias=>'DTHR_RECURSO'
,p_column_display_sequence=>3
,p_column_heading=>'Data/Hora Recurso'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY HH24:MI:SS'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13189612082153553)
,p_query_column_id=>4
,p_column_alias=>'NUMERO_PROTOCOLO_RECURSO'
,p_column_display_sequence=>4
,p_column_heading=>'Protocolo Recurso'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13190009047153554)
,p_query_column_id=>5
,p_column_alias=>'STATUS_RECURSO'
,p_column_display_sequence=>5
,p_column_heading=>'Status Recurso'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="t-Icon fa #ICONE_STATUS_RECURSO# "></span>&nbsp;&nbsp;#STATUS_RECURSO#'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13190409491153554)
,p_query_column_id=>6
,p_column_alias=>'ICONE_STATUS_RECURSO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13190884370153555)
,p_query_column_id=>7
,p_column_alias=>'LOG_RECURSO'
,p_column_display_sequence=>7
,p_column_heading=>'Log Recurso'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13154404486067870)
,p_name=>'P1080_SEQ_RETORNO_FINANCEIRO'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(35951286886060320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13161512805091020)
,p_name=>'Resize Dialog'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13161944202091026)
,p_event_id=>wwv_flow_api.id(13161512805091020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_NL.DETORA.APEX.RESIZE_DIALOG'
,p_attribute_01=>'true'
,p_attribute_02=>'50'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(24312454830693533)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
