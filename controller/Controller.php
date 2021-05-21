<?php

require_once('model/Model.php');
require_once('view/View.php');

Class Controller {
    private $Model;
    private $View;

    public function __construct(){
        $this->View = new View();
    }
    
    function showHome(){
        $this->View->showHomeView();
    }
}
    
?>