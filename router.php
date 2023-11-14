<?php
require_once './app/controllers/juegos.controller.php';
require_once './app/controllers/generos.controller.php';
require_once './libs/Router.php';

$router = new Router();

/// JUEGOS
// GET
$router->addRoute("juegos", "GET", "JuegosController", "get");
$router->addRoute("juegos/:id", "GET", "JuegosController", "get");

// POST
$router->addRoute("juegos", "POST", "JuegosController", "post");

// PUT

$router->addRoute("juegos/:id", "PUT", "JuegosController", "put");

// DELETE

$router->addRoute("juegos/:id", "DELETE", "JuegosController", "delete");

/// GENEROS
// GET
$router->addRoute("generos", "GET", "GenerosController", "get");
$router->addRoute("generos/:id", "GET", "GenerosController", "get");

// POST
$router->addRoute("generos", "POST", "GenerosController", "post");

// PUT

$router->addRoute("generos/:id", "PUT", "GenerosController", "put");

// DELETE

$router->addRoute("generos/:id", "DELETE", "GenerosController", "delete");



$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
?>