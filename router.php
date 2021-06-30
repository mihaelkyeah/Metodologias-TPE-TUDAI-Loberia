<?php

// MUCHO MUY IMPORTANTE REFERENCIAR TODOS LOS CONTROLADORES
require_once('libs/router/Router.php');
require_once('controller/Controller.php');
require_once('controller/RequestController.php');
require_once('controller/HomeController.php');
require_once('controller/MaterialsController.php');
require_once('controller/StorageController.php');
require_once('controller/CollectorController.php');

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

// creo el ruteador usando la libreria externa
$router = new Router();

// ruta por defecto !!!!!!!!!!
$router->setDefaultRoute('Home', 'GET', 'HomeController', 'showHome');
$router->addRoute('info', 'GET', 'MaterialsController', 'showMaterials');
$router->addRoute('info', 'POST', 'MaterialsController', 'newMaterial');
$router->addRoute('info/new', 'GET', 'MaterialsController', 'showFormNewMaterial');
$router->addRoute('request', 'GET', 'RequestController', 'showForm');
$router->addRoute('request', 'POST', 'RequestController', 'postRequest');
$router->addRoute('request/list', 'GET', 'RequestController', 'showList');
$router->addRoute('storage', 'POST', 'StorageController', 'postMaterialWeight');
$router->addRoute('storage', 'GET', 'StorageController', 'showMaterialWeight');
$router->addRoute('info/DELETE/:ID', 'POST', 'MaterialsController', 'deleteMaterial');
$router->addRoute('editar_material/:ID', 'POST', 'MaterialsController', 'showUpdateMaterial');
$router->addRoute('editar/:ID', 'POST', 'MaterialsController', 'updateMaterial');
$router->addRoute('collectors', 'GET', 'CollectorController', 'showListCollectors');
$router->addRoute('collectors/editar/:ID', 'POST', 'CollectorController', 'showEditCollector');
$router->addRoute('editar/recolector/:ID', 'POST', 'CollectorController', 'updateCollector');
$router->addRoute('error/:ERROR', 'GET', 'controller', 'viewPageError');


/**
 * Ejemplo "Caminito"
 * $router->addRoute('Game/:ID/Comment', 'POST', 'C_Comment', 'addComment');
 */

// rutea
$router->route($_REQUEST['action'], $_SERVER['REQUEST_METHOD']);
