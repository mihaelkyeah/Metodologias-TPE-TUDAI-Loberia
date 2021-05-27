<?php

require_once ('view/View.php');
require_once ('model/RequestModel.php');
require_once ('model/MaterialsModel.php');
require_once ('view/RequestView.php');
require_once ('view/MaterialsView.php');

Abstract Class Controller {
    private $RequestModel;
    private $MaterialsModel;
    private $View;
    private $RequestView;
    private $MaterialstView;

    public function __construct(){
        $this->View = new View();
        $this->RequestModel = new RequestModel();
        $this->RequestView = new RequestView();
        $this->MaterialsView = new MaterialsView();
        $this->MaterialsModel = new MaterialsModel();
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

    function getMateriasView() {
        return $this->MaterialsView;
    }

    function getMateriasModel() {
        return $this->MaterialsModel;
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