<?php

/* ************************************
 * Systèmes de gestion de contenu - TP
 * Par Toon Van den Bos
 * Septembre 2016
 * ************************************/

//  load base constants
require_once(__DIR__ . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'paths.php');

//  include configuration
require_once(CONFIG_PATH . 'database.php');

//  include autoload
require_once(CORE_PATH . 'autoload.php');

//  launch example website
$site = new \SGBD\App();
$site->boot('exam');
