<?php

require_once ('view/View.php');
require_once ('model/RequestModel.php');
require_once ('view/RequestView.php');

Class Controller {
    private $RequestModel;
    private $View;
    private $RequestView;

    public function __construct(){
        $this->View = new View();
        $this->RequestModel = new RequestModel();
        $this->RequestView = new RequestView();
    }
    
    function showHome(){
        $this->View->showHomeView();
    }

    function getRequestModel() {
        return $this->RequestModel;
    }

    function getRequestView() {
        return $this->RequestView;
    }

}
    
?>