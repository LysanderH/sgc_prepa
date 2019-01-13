<?php

function request(){
    return \SGBD\App::router()->getRequest();
}

function asset($path){
    echo request()->getBase() . 'public/' . strtolower(SITE_NAME) . '/' . $path;
}
