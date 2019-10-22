<?php

//FRONT CONTROLLER
// 1. All Configuration

ini_set('display_errors',1);
error_reporting(E_ALL);

session_start();

// 2. Patkluchenie  Faylov Sistemi
define('ROOT', dirname(__FILE__));
require_once (ROOT . '/components/Autoload.php');
require_once (ROOT . '/components/Db.php');


// 4. Call  Router
$router = new Router;
$router->run();













