<?php

namespace SGBD\Sites\Exam\Models;

use \SGBD\App;
use \SGBD\BaseModel;

class Movie extends BaseModel
{
    protected $folder = 'examen';

    static function makeRequest()
    {
        $response = self::getInstance()->loadRequest();
        if($response) return $response->fetchAll();
        return false;
    }
}
