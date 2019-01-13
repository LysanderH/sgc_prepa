<?php

namespace SGBD\Render;

/**
* Cette classe est une instance d'une
* route du site
*/
class View
{
    protected $name;
    protected $layout;
    protected $variables;
    protected $file;

    public function __construct($variables = [])
    {
        $this->name = 'baseview';
        $this->layout = null;
        $this->variables = is_array($variables) ? $variables : [];
        $this->file = $this->getBaseFile();
    }

    public function isValid()
    {
        return is_string($this->file);
    }

    public function apply()
    {
        extract($this->variables);
        include($this->file);
    }

    protected function getBaseFile()
    {
        foreach(scandir(VIEWS_PATH) as $file){
            if (substr($file,0,1) != '_' && substr($file, -3) == 'php'){
                return realpath(VIEWS_PATH . $file);
            }
        }
    }
}
