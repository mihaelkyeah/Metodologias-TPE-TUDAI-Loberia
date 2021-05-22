<?php

// MUCHO MUY IMPORTANTE REFERENCIAR TODOS LOS CONTROLADORES
require_once 'libs/router/Router.php';
require_once 'controller/Controller.php';

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

// creo el ruteador usando la libreria externa
$router = new Router();

// ruta por defecto !!!!!!!!!!
$router->setDefaultRoute('Home', 'GET', 'Controller', 'showHome');
$router->addRoute('request', 'GET', 'RequestController', 'showForm');
$router->addRoute('request', 'POST', 'RequestController', 'postRequest');
/**
 * Ejemplo "Caminito"
 * $router->addRoute('Game/:ID/Comment', 'POST', 'C_Comment', 'addComment');
 */

// rutea
$router->route($_REQUEST['action'], $_SERVER['REQUEST_METHOD']);
