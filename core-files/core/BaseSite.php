<?php

namespace SGBD;

use \SGBD\App;

/**
* Cette classe sert de base à tous
* les sites.
*/
class BaseSite
{
    protected $routes = [];
    protected $controller;
    
    function __construct()
    {
        $this->createRoutes();
        $this->boot();
        $this->run();
    }

    protected function createRoutes()
    {
        App::router()->addRoutes($this->routes);
    }

    protected function boot()
    {
        // boot actions if necessary (current route not yet defined).
    }

    protected function run()
    {
        App::router()->handleRequest();
        $route = App::router()->getCurrent();
        $this->controller = App::getController($route->controller);
        $response = call_user_func_array([$this->controller, $route->method], $route->arguments);
        if($response) $response->apply();
    }
}
