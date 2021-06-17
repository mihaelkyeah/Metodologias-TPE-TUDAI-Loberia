<?php

require_once ('view/View.php');
require_once ('model/RequestModel.php');
require_once ('model/MaterialsModel.php');
require_once ('view/RequestView.php');
require_once ('view/MaterialsView.php');
require_once ('model/StorageModel.php');
require_once ('model/CollectorModel.php');
require_once ('view/StorageView.php');

Abstract Class Controller {
    private $RequestModel;
    private $MaterialsModel;
    private $View;
    private $RequestView;
    private $MaterialstView;
    private $StorageModel;
    private $CollectorModel;
    private $StorageView;

    public function __construct(){
        $this->View = new View();
        $this->RequestModel = new RequestModel();
        $this->RequestView = new RequestView();
        $this->MaterialsView = new MaterialsView();
        $this->MaterialsModel = new MaterialsModel();
        $this->StorageModel = new StorageModel();
        $this->CollectorModel = new CollectorModel();
        $this->StorageView = new StorageView();
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

    function getMaterialsModel() {
        return $this->MaterialsModel;
    }

    function getStorageView() {
        return $this->StorageView;
    }

    function getStorageModel() {
        return $this->StorageModel;
    }

    function getCollectorModel() {
        return $this->CollectorModel;
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