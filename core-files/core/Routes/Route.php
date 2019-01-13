<?php

namespace SGBD\Routes;

/**
* Cette classe est une instance d'une
* route du site
*/
class Route
{
    public $name;
    public $controller;
    public $method;
    public $arguments = [];
    protected $facade;
    protected $regex;

    public function __construct($facade, $name, $controller, $method){
        $this->name = $name;
        $this->controller = $controller;
        $this->method = $method;
        $this->facade = $facade;
        $this->regex = $this->extractFacade();
    }

    public function matches($uri){
        if(preg_match($this->regex, $uri, $a)){
            array_shift($a);
            foreach (array_keys($this->arguments) as $i => $k) {
                $this->arguments[$k] = $a[$i];
            }
            return true;
        }
        return false;
    }

    protected function extractFacade(){
        if($this->facade == '/') return '/^\/$/';

        $s = str_replace('/', '\/', trim($this->facade,'/'));
        preg_match_all('/{([^}]+)}/', $s, $a);
        foreach ($a[0] as $i => $var) {
            $this->arguments[$a[1][$i]] = null;
            $s = str_replace($var, '(.*)', $s);
        }
        $s = '^\/' . $s . '\/$';

        return '/' . $s . '/';
    }
}
