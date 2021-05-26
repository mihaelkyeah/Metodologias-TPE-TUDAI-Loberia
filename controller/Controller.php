<?php

require_once ('view/View.php');
require_once ('model/RequestModel.php');
require_once ('view/RequestView.php');

Abstract Class Controller {
    private $RequestModel;
    private $View;
    private $RequestView;

    public function __construct(){
        $this->View = new View();
        $this->RequestModel = new RequestModel();
        $this->RequestView = new RequestView();
    }
    
    function getView(){
        return $this->View;
    }

    function getRequestModel() {
        return $this->RequestModel;
    }

    function getRequestView() {
        return $this->RequestView;
    }

    function assignFieldValue($input_value = null) {
        if(empty($input_value) || !isset($input_value)){
            $this->showError('Faltan datos obligatorios');
        }
        return $input_value;
    }

    abstract function showError($error);

    abstract function showSuccess($success);
}
    
?>