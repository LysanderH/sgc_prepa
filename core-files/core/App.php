<?php

namespace SGBD;

use \SGBD\Routes\Router;
use \SGBD\Render\View;

/**
* Cette classe (objet) est la base frontale
* de tous les projets d'exemples.
*/

class App
{

    public static $instance;

    protected $site;

    protected $router;
    
    function __construct()
    {
        self::$instance = $this;
        $this->router = new Router(); 
    }

    public static function getInstance()
    {
        return self::$instance;
    }

    public static function getController($controller)
    {
        $class = '\\SGBD\\Sites\\' . SITE_NAME . '\\Controllers\\' . $controller;
        return new $class();
    }

    public static function getView($vars = [])
    {
        $view = new View($vars);
        if($view->isValid()) return $view;
        return false;
    }

    public static function __callStatic($name, $args)
    {
        return self::getInstance()->$name;
    }

    public function boot($site)
    {
        $this->load($site);
        $class = '\\SGBD\\Sites\\' . ucfirst($site) . '\\Site';
        $this->site = new $class();
    }

    protected function load($site)
    {
        define('SITE_NAME', ucfirst($site));
        define('SITE_PATH', SITES_PATH . SITE_NAME . DS);
        require_once(SITE_PATH . 'autoload.php');
    }
}
