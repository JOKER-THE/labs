<?php  return array (
  'resourceClass' => 'modDocument',
  'resource' => 
  array (
    'id' => 5,
    'type' => 'document',
    'contentType' => 'text/html',
    'pagetitle' => 'Страница пользователя',
    'longtitle' => '',
    'description' => 'Личный кабинет пользователя',
    'alias' => 'lk',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 2,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '[[!Profile]]
<div class="jumbotron">
  <div class="container">
    <p>Логин: [[+username]]</p>
    <p>Полное имя: [[+fullname]]</p>
    <p>Email: [[+email]]</p>
  </div>
</div>',
    'richtext' => 0,
    'template' => 4,
    'menuindex' => 2,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1564455126,
    'editedby' => 1,
    'editedon' => 1564545281,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 1564455120,
    'publishedby' => 1,
    'menutitle' => '',
    'donthit' => 0,
    'privateweb' => 0,
    'privatemgr' => 0,
    'content_dispo' => 0,
    'hidemenu' => 1,
    'class_key' => 'modDocument',
    'context_key' => 'web',
    'content_type' => 1,
    'uri' => 'user/lk.html',
    'uri_override' => 0,
    'hide_children_in_tree' => 0,
    'show_in_tree' => 1,
    'properties' => NULL,
    '_content' => '<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link href="../../assets/templates/adminLTE/css/bootstrap.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/font-awesome.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/ionicons.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/jquery-jvectormap.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/AdminLTE.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/_all-skins.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    <title>MODX Revolution - Страница пользователя</title>
  </head>

  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
      
      <header class="main-header">
    <a href="/" class="logo">
      <span class="logo-mini"><b>H</b>W</span>
      <span class="logo-lg"><b>Hello, </b>World!</span>
    </a>
    <nav class="navbar navbar-static-top">
      <div id="navbar" class="navbar-collapse collapse">
        [[!Auth? &logoutTpl=`logoutBack` &errTpl=`errorMsg` &logoutResourceId=`1`]]
      </div>
    </nav>
  </header>

      <aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../assets/templates/adminLTE/img/avatar.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>[[+username]]</p>
        </div>
      </div>
      <ul class="sidebar-menu" data-widget="tree">
        <li class="treeview">
          <a href="#">
            <span>Выпадающий список</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"></i> Кнопка 1</a></li>
            <li><a href="#"></i> Кнопка 2</a></li>
            <li><a href="#"></i> Кнопка 3</a></li>
            <li><a href="#"></i> Кнопка 4</a></li>
          </ul>
        </li>
      </ul>
    </section>
  </aside>

      <div class="content-wrapper">
        [[!Profile]]
<div class="jumbotron">
  <div class="container">
    <p>Логин: [[+username]]</p>
    <p>Полное имя: [[+fullname]]</p>
    <p>Email: [[+email]]</p>
  </div>
</div>
      </div>

    </div>
    
    <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.13
    </div>
    <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE</a>.</strong> All rights
    reserved.
</footer>

    <script src="../../assets/templates/adminLTE/js/jquery.min.js"></script>
<script src="../../assets/templates/adminLTE/js/bootstrap.min.js"></script>
<script src="../../assets/templates/adminLTE/js/fastclick.js"></script>
<script src="../../assets/templates/adminLTE/js/adminlte.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery.sparkline.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery.slimscroll.min.js"></script>
<script src="../../assets/templates/adminLTE/js/Chart.js"></script>
<script src="../../assets/templates/adminLTE/js/pages/dashboard2.js"></script>
<script src="../../assets/templates/adminLTE/js/demo.js"></script>
  
  </body>
</html>
',
    '_isForward' => false,
  ),
  'contentType' => 
  array (
    'id' => 1,
    'name' => 'HTML',
    'description' => 'HTML content',
    'mime_type' => 'text/html',
    'file_extensions' => '.html',
    'headers' => NULL,
    'binary' => 0,
  ),
  'resourceGroups' => 
  array (
    9 => 
    array (
      'id' => 9,
      'document_group' => 4,
      'document' => 5,
    ),
  ),
  'policyCache' => 
  array (
    'modAccessResourceGroup' => 
    array (
      4 => 
      array (
        0 => 
        array (
          'principal' => '4',
          'authority' => '9999',
          'policy' => 
          array (
            'load' => true,
            'list' => true,
            'view' => true,
          ),
        ),
      ),
    ),
  ),
  'elementCache' => 
  array (
    '[[$headBack]]' => '<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link href="../../assets/templates/adminLTE/css/bootstrap.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/font-awesome.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/ionicons.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/jquery-jvectormap.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/AdminLTE.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/_all-skins.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
',
    '[[*pagetitle]]' => 'Страница пользователя',
    '[[$navBack]]' => '<header class="main-header">
    <a href="/" class="logo">
      <span class="logo-mini"><b>H</b>W</span>
      <span class="logo-lg"><b>Hello, </b>World!</span>
    </a>
    <nav class="navbar navbar-static-top">
      <div id="navbar" class="navbar-collapse collapse">
        [[!Auth? &logoutTpl=`logoutBack` &errTpl=`errorMsg` &logoutResourceId=`1`]]
      </div>
    </nav>
  </header>',
    '[[$asideBack]]' => '<aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../assets/templates/adminLTE/img/avatar.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>[[+username]]</p>
        </div>
      </div>
      <ul class="sidebar-menu" data-widget="tree">
        <li class="treeview">
          <a href="#">
            <span>Выпадающий список</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"></i> Кнопка 1</a></li>
            <li><a href="#"></i> Кнопка 2</a></li>
            <li><a href="#"></i> Кнопка 3</a></li>
            <li><a href="#"></i> Кнопка 4</a></li>
          </ul>
        </li>
      </ul>
    </section>
  </aside>',
    '[[$footerBack]]' => '<footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.13
    </div>
    <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE</a>.</strong> All rights
    reserved.
</footer>',
    '[[$footerScriptBack]]' => '<script src="../../assets/templates/adminLTE/js/jquery.min.js"></script>
<script src="../../assets/templates/adminLTE/js/bootstrap.min.js"></script>
<script src="../../assets/templates/adminLTE/js/fastclick.js"></script>
<script src="../../assets/templates/adminLTE/js/adminlte.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery.sparkline.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery.slimscroll.min.js"></script>
<script src="../../assets/templates/adminLTE/js/Chart.js"></script>
<script src="../../assets/templates/adminLTE/js/pages/dashboard2.js"></script>
<script src="../../assets/templates/adminLTE/js/demo.js"></script>',
  ),
  'sourceCache' => 
  array (
    'modChunk' => 
    array (
      'headBack' => 
      array (
        'fields' => 
        array (
          'id' => 44,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'headBack',
          'description' => 'Головная часть страницы заключается в теги <head></head>',
          'editor_type' => 0,
          'category' => 2,
          'cache_type' => 0,
          'snippet' => '<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link href="../../assets/templates/adminLTE/css/bootstrap.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/font-awesome.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/ionicons.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/jquery-jvectormap.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/AdminLTE.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/_all-skins.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link href="../../assets/templates/adminLTE/css/bootstrap.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/font-awesome.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/ionicons.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/jquery-jvectormap.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/AdminLTE.min.css" rel="stylesheet">
<link href="../../assets/templates/adminLTE/css/_all-skins.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'navBack' => 
      array (
        'fields' => 
        array (
          'id' => 46,
          'source' => 0,
          'property_preprocess' => false,
          'name' => 'navBack',
          'description' => 'Шапка кабинета пользователя (header)',
          'editor_type' => 0,
          'category' => 2,
          'cache_type' => 0,
          'snippet' => '<header class="main-header">
    <a href="/" class="logo">
      <span class="logo-mini"><b>H</b>W</span>
      <span class="logo-lg"><b>Hello, </b>World!</span>
    </a>
    <nav class="navbar navbar-static-top">
      <div id="navbar" class="navbar-collapse collapse">
        [[!Auth? &logoutTpl=`logoutBack` &errTpl=`errorMsg` &logoutResourceId=`1`]]
      </div>
    </nav>
  </header>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<header class="main-header">
    <a href="/" class="logo">
      <span class="logo-mini"><b>H</b>W</span>
      <span class="logo-lg"><b>Hello, </b>World!</span>
    </a>
    <nav class="navbar navbar-static-top">
      <div id="navbar" class="navbar-collapse collapse">
        [[!Auth? &logoutTpl=`logoutBack` &errTpl=`errorMsg` &logoutResourceId=`1`]]
      </div>
    </nav>
  </header>',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
        ),
      ),
      'asideBack' => 
      array (
        'fields' => 
        array (
          'id' => 47,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'asideBack',
          'description' => 'Боковое меню кабинета пользователя',
          'editor_type' => 0,
          'category' => 2,
          'cache_type' => 0,
          'snippet' => '<aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../assets/templates/adminLTE/img/avatar.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>[[+username]]</p>
        </div>
      </div>
      <ul class="sidebar-menu" data-widget="tree">
        <li class="treeview">
          <a href="#">
            <span>Выпадающий список</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"></i> Кнопка 1</a></li>
            <li><a href="#"></i> Кнопка 2</a></li>
            <li><a href="#"></i> Кнопка 3</a></li>
            <li><a href="#"></i> Кнопка 4</a></li>
          </ul>
        </li>
      </ul>
    </section>
  </aside>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../assets/templates/adminLTE/img/avatar.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>[[+username]]</p>
        </div>
      </div>
      <ul class="sidebar-menu" data-widget="tree">
        <li class="treeview">
          <a href="#">
            <span>Выпадающий список</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"></i> Кнопка 1</a></li>
            <li><a href="#"></i> Кнопка 2</a></li>
            <li><a href="#"></i> Кнопка 3</a></li>
            <li><a href="#"></i> Кнопка 4</a></li>
          </ul>
        </li>
      </ul>
    </section>
  </aside>',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'footerBack' => 
      array (
        'fields' => 
        array (
          'id' => 48,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'footerBack',
          'description' => 'Подвал сайта (footer)',
          'editor_type' => 0,
          'category' => 2,
          'cache_type' => 0,
          'snippet' => '<footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.13
    </div>
    <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE</a>.</strong> All rights
    reserved.
</footer>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.13
    </div>
    <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE</a>.</strong> All rights
    reserved.
</footer>',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'footerScriptBack' => 
      array (
        'fields' => 
        array (
          'id' => 45,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'footerScriptBack',
          'description' => 'JS-скрипты, подключаемые после <footer></footer>',
          'editor_type' => 0,
          'category' => 2,
          'cache_type' => 0,
          'snippet' => '<script src="../../assets/templates/adminLTE/js/jquery.min.js"></script>
<script src="../../assets/templates/adminLTE/js/bootstrap.min.js"></script>
<script src="../../assets/templates/adminLTE/js/fastclick.js"></script>
<script src="../../assets/templates/adminLTE/js/adminlte.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery.sparkline.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery.slimscroll.min.js"></script>
<script src="../../assets/templates/adminLTE/js/Chart.js"></script>
<script src="../../assets/templates/adminLTE/js/pages/dashboard2.js"></script>
<script src="../../assets/templates/adminLTE/js/demo.js"></script>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<script src="../../assets/templates/adminLTE/js/jquery.min.js"></script>
<script src="../../assets/templates/adminLTE/js/bootstrap.min.js"></script>
<script src="../../assets/templates/adminLTE/js/fastclick.js"></script>
<script src="../../assets/templates/adminLTE/js/adminlte.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery.sparkline.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="../../assets/templates/adminLTE/js/jquery.slimscroll.min.js"></script>
<script src="../../assets/templates/adminLTE/js/Chart.js"></script>
<script src="../../assets/templates/adminLTE/js/pages/dashboard2.js"></script>
<script src="../../assets/templates/adminLTE/js/demo.js"></script>',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'logoutBack' => 
      array (
        'fields' => 
        array (
          'id' => 49,
          'source' => 0,
          'property_preprocess' => false,
          'name' => 'logoutBack',
          'description' => 'Кнопка выхода',
          'editor_type' => 0,
          'category' => 2,
          'cache_type' => 0,
          'snippet' => '<div class="container">
  <div class="navbar-form navbar-right">
    <div class="loginRegister">
        <a class="btn btn-danger" href="[[+logoutUrl]]" title="Выход">[[+actionMsg]]</a>
    </div>
  </div>
</div>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<div class="container">
  <div class="navbar-form navbar-right">
    <div class="loginRegister">
        <a class="btn btn-danger" href="[[+logoutUrl]]" title="Выход">[[+actionMsg]]</a>
    </div>
  </div>
</div>',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
        ),
      ),
    ),
    'modSnippet' => 
    array (
      'Auth' => 
      array (
        'fields' => 
        array (
          'id' => 11,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'Auth',
          'description' => '',
          'editor_type' => 0,
          'category' => 2,
          'cache_type' => 0,
          'snippet' => 'require_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';
$login = new Login($modx,$scriptProperties);
if (!is_object($login) || !($login instanceof Login)) return \'\';

$controller = $login->loadController(\'Login\');
$output = $controller->run($scriptProperties);
return $output;',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => 'require_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';
$login = new Login($modx,$scriptProperties);
if (!is_object($login) || !($login instanceof Login)) return \'\';

$controller = $login->loadController(\'Login\');
$output = $controller->run($scriptProperties);
return $output;',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'Profile' => 
      array (
        'fields' => 
        array (
          'id' => 32,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'Profile',
          'description' => '',
          'editor_type' => 0,
          'category' => 2,
          'cache_type' => 0,
          'snippet' => 'require_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';
$login = new Login($modx,$scriptProperties);

$controller = $login->loadController(\'Profile\');
return $controller->run($scriptProperties);',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => 'require_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';
$login = new Login($modx,$scriptProperties);

$controller = $login->loadController(\'Profile\');
return $controller->run($scriptProperties);',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
    ),
    'modTemplateVar' => 
    array (
    ),
  ),
);