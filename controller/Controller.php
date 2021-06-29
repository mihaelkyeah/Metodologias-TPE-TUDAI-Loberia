<?php
//MODELS
require_once('model/CollectorModel.php');
require_once('model/MaterialsModel.php');
require_once('model/StorageModel.php');
require_once('model/RequestModel.php');
//VIEWS
require_once('view/View.php');
require_once('view/CollectorView.php');
require_once('view/MaterialsView.php');
require_once('view/RequestView.php');
require_once('view/StorageView.php');

abstract class Controller
{
    //MODELS
    private $CollectorModel;
    private $MaterialsModel;
    private $RequestModel;
    private $StorageModel;
    //VIEWS
    private $View;
    private $CollectorView;
    private $MaterialstView;
    private $RequestView;
    private $StorageView;

    public function __construct()
    {
        //MODELS
        $this->CollectorModel = new CollectorModel();
        $this->MaterialsModel = new MaterialsModel();
        $this->RequestModel = new RequestModel();
        $this->StorageModel = new StorageModel();
        //VIEWS
        $this->View = new View();
        $this->CollectorView = new CollectorView();
        $this->MaterialsView = new MaterialsView();
        $this->RequestView = new RequestView();
        $this->StorageView = new StorageView();
    }
    //===============MODELS===============//
    function getCollectorModel()
    {
        return $this->CollectorModel;
    }
    function getMaterialsModel()
    {
        return $this->MaterialsModel;
    }
    function getRequestModel()
    {
        return $this->RequestModel;
    }
    function getStorageModel()
    {
        return $this->StorageModel;
    }
    //===============VIEWS===============//
    function getView()
    {
        return $this->View;
    }
    function getCollectorView()
    {
        return $this->CollectorView;
    }
    function getMateriasView()
    {
        return $this->MaterialsView;
    }
    function getRequestView()
    {
        return $this->RequestView;
    }
    function getStorageView()
    {
        return $this->StorageView;
    }
    //===============FUNCIONS===============//

    function assignFieldValue($input_value = null)
    {
        if (empty($input_value) || !isset($input_value)) {
            $this->showError('Faltan datos obligatorios');
        }
        return $input_value;
    }

    abstract function showError($error);

    abstract function showSuccess($success);
}
