<?php

namespace SGBD\Routes;

/**
* Cette classe ressence et gère toutes
* les routes (URLs) utilisées par un site
*/
class Router
{
    protected $request;
    protected $routes = [];
    protected $current;

    public function __construct(){
        $this->request = new Request();
    }

    public function getRequest(){
        return $this->request;
    }

    public function getCurrent(){
        if(is_null($this->current)) return false;
        return $this->routes[$this->current];
    }

    public function addRoutes($a){
        foreach ($a as $facade => $args) {
            $this->addRoute($facade, $args['name'], $args['controller'], $args['method']);
        }
    }

    public function addRoute($facade, $name, $controller, $method){
        $this->routes[] = new Route($facade, $name, $controller, $method);
    }

    public function handleRequest(){
        $this->current = $this->findRoute($this->request->getUri());
    }

    protected function findRoute($uri){
        foreach ($this->routes as $i => $route) {
            if($route->matches($uri)) return $i;
        }
    }
}
