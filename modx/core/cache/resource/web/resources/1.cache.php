<?php  return array (
  'resourceClass' => 'modDocument',
  'resource' => 
  array (
    'id' => 1,
    'type' => 'document',
    'contentType' => 'text/html',
    'pagetitle' => 'Главная',
    'longtitle' => '',
    'description' => 'Главная страница сайта',
    'alias' => 'index',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '',
    'richtext' => 1,
    'template' => 1,
    'menuindex' => 0,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1564388325,
    'editedby' => 1,
    'editedon' => 1564467879,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 0,
    'publishedby' => 0,
    'menutitle' => '',
    'donthit' => 0,
    'privateweb' => 0,
    'privatemgr' => 0,
    'content_dispo' => 0,
    'hidemenu' => 0,
    'class_key' => 'modDocument',
    'context_key' => 'web',
    'content_type' => 1,
    'uri' => 'index.html',
    'uri_override' => 0,
    'hide_children_in_tree' => 0,
    'show_in_tree' => 1,
    'properties' => NULL,
    '_content' => '<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../../assets/templates/jumbotron-bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/jumbotron.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/style.css" rel="stylesheet">
<script src="../../assets/templates/jumbotron-bootstrap/js/ie-emulation-modes-warning.js"></script>
    <title>MODX Revolution - Главная</title>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Hello, World!</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          [[!Auth? &loginTpl=`loginFront` &logoutTpl=`logoutFront` &errTpl=`errorMsg` &loginResourceId=`5` &logoutResourceId=`1`]]
        </div>
      </div>
    </nav>
    <div class="container">
      <div class="loginMessage">[[+errors]]</div>
    </div>


    <div class="jumbotron">
      <div class="container">
        <h1>Hello, world!</h1>
        <p>Тестовый сайт на MODX Revolution</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">Бесполезная кнопка</a></p>
      </div>
    </div>

    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <h2>Заголовок-1</h2>
          <p>Рандомный текст-1</p>
          <p><a class="btn btn-default" href="#" role="button">Кнопка</a></p>
        </div>
        <div class="col-md-4">
          <h2>Заголовок-2</h2>
          <p>Рандомный текст-2</p>
          <p><a class="btn btn-default" href="#" role="button">Кнопка</a></p>
       </div>
        <div class="col-md-4">
          <h2>Заголовок-3</h2>
          <p>Рандомный текст-3</p>
          <p><a class="btn btn-default" href="#" role="button">Кнопка</a></p>
        </div>
      </div>

      <hr>

    </div>

    <footer class="footer">
    <div class="container">
        <p>&copy; 2019 Hello World, Inc.</p>
    </div>
</footer>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write(\'<script src="../../assets/templates/jumbotron-bootstrap/js/vendor/jquery.min.js"><\\/script>\')</script>
<script src="../../assets/templates/jumbotron-bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/templates/jumbotron-bootstrap/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
',
    '_isForward' => true,
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
  'policyCache' => 
  array (
  ),
  'elementCache' => 
  array (
    '[[$headFront]]' => '<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../../assets/templates/jumbotron-bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/jumbotron.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/style.css" rel="stylesheet">
<script src="../../assets/templates/jumbotron-bootstrap/js/ie-emulation-modes-warning.js"></script>',
    '[[*pagetitle]]' => 'Главная',
    '[[$navFront]]' => '<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Hello, World!</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          [[!Auth? &loginTpl=`loginFront` &logoutTpl=`logoutFront` &errTpl=`errorMsg` &loginResourceId=`5` &logoutResourceId=`1`]]
        </div>
      </div>
    </nav>
    <div class="container">
      <div class="loginMessage">[[+errors]]</div>
    </div>
',
    '[[$footerFront]]' => '<footer class="footer">
    <div class="container">
        <p>&copy; 2019 Hello World, Inc.</p>
    </div>
</footer>',
    '[[$footerScriptFront]]' => '<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write(\'<script src="../../assets/templates/jumbotron-bootstrap/js/vendor/jquery.min.js"><\\/script>\')</script>
<script src="../../assets/templates/jumbotron-bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/templates/jumbotron-bootstrap/js/ie10-viewport-bug-workaround.js"></script>',
    '[[~5]]' => 'index.php?id=5',
  ),
  'sourceCache' => 
  array (
    'modChunk' => 
    array (
      'headFront' => 
      array (
        'fields' => 
        array (
          'id' => 1,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'headFront',
          'description' => 'Головная часть страницы заключается в теги <head></head>',
          'editor_type' => 0,
          'category' => 1,
          'cache_type' => 0,
          'snippet' => '<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../../assets/templates/jumbotron-bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/jumbotron.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/style.css" rel="stylesheet">
<script src="../../assets/templates/jumbotron-bootstrap/js/ie-emulation-modes-warning.js"></script>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../../assets/templates/jumbotron-bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/jumbotron.css" rel="stylesheet">
<link href="../../assets/templates/jumbotron-bootstrap/css/style.css" rel="stylesheet">
<script src="../../assets/templates/jumbotron-bootstrap/js/ie-emulation-modes-warning.js"></script>',
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
      'navFront' => 
      array (
        'fields' => 
        array (
          'id' => 3,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'navFront',
          'description' => 'Шапка сайта (Navbar)',
          'editor_type' => 0,
          'category' => 1,
          'cache_type' => 0,
          'snippet' => '<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Hello, World!</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          [[!Auth? &loginTpl=`loginFront` &logoutTpl=`logoutFront` &errTpl=`errorMsg` &loginResourceId=`5` &logoutResourceId=`1`]]
        </div>
      </div>
    </nav>
    <div class="container">
      <div class="loginMessage">[[+errors]]</div>
    </div>
',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Hello, World!</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          [[!Auth? &loginTpl=`loginFront` &logoutTpl=`logoutFront` &errTpl=`errorMsg` &loginResourceId=`5` &logoutResourceId=`1`]]
        </div>
      </div>
    </nav>
    <div class="container">
      <div class="loginMessage">[[+errors]]</div>
    </div>
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
      'footerFront' => 
      array (
        'fields' => 
        array (
          'id' => 4,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'footerFront',
          'description' => 'Подвал сайта (footer)',
          'editor_type' => 0,
          'category' => 1,
          'cache_type' => 0,
          'snippet' => '<footer class="footer">
    <div class="container">
        <p>&copy; 2019 Hello World, Inc.</p>
    </div>
</footer>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<footer class="footer">
    <div class="container">
        <p>&copy; 2019 Hello World, Inc.</p>
    </div>
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
      'footerScriptFront' => 
      array (
        'fields' => 
        array (
          'id' => 2,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'footerScriptFront',
          'description' => 'JS-скрипты, подключаемые после <footer></footer>',
          'editor_type' => 0,
          'category' => 1,
          'cache_type' => 0,
          'snippet' => '<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write(\'<script src="../../assets/templates/jumbotron-bootstrap/js/vendor/jquery.min.js"><\\/script>\')</script>
<script src="../../assets/templates/jumbotron-bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/templates/jumbotron-bootstrap/js/ie10-viewport-bug-workaround.js"></script>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write(\'<script src="../../assets/templates/jumbotron-bootstrap/js/vendor/jquery.min.js"><\\/script>\')</script>
<script src="../../assets/templates/jumbotron-bootstrap/js/bootstrap.min.js"></script>
<script src="../../assets/templates/jumbotron-bootstrap/js/ie10-viewport-bug-workaround.js"></script>',
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
      'logoutFront' => 
      array (
        'fields' => 
        array (
          'id' => 18,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'logoutFront',
          'description' => 'Кнопка выхода',
          'editor_type' => 0,
          'category' => 1,
          'cache_type' => 0,
          'snippet' => '<div class="navbar-form navbar-right">
    <div class="loginRegister">
        <a class="btn btn-info" href="[[~5]]" title="Личный кабинет">Личный кабинет</a>
        <a class="btn btn-danger" href="[[+logoutUrl]]" title="Выход">[[+actionMsg]]</a>
    </div>
</div>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<div class="navbar-form navbar-right">
    <div class="loginRegister">
        <a class="btn btn-info" href="[[~5]]" title="Личный кабинет">Личный кабинет</a>
        <a class="btn btn-danger" href="[[+logoutUrl]]" title="Выход">[[+actionMsg]]</a>
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
    ),
    'modTemplateVar' => 
    array (
    ),
  ),
);