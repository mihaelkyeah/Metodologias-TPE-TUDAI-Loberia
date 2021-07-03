<?php
//MODELS
require_once('model/CollectorModel.php');
require_once('model/MaterialsModel.php');
require_once('model/StorageModel.php');
require_once('model/RequestModel.php');
require_once('model/AdminModel.php');
//VIEWS
require_once('view/View.php');
require_once('view/CollectorView.php');
require_once('view/MaterialsView.php');
require_once('view/RequestView.php');
require_once('view/StorageView.php');
require_once('view/AdminView.php');

abstract class Controller
{
    //MODELS
    private $CollectorModel;
    private $MaterialsModel;
    private $RequestModel;
    private $StorageModel;
    private $AdminModel;
    //VIEWS
    private $View;
    private $CollectorView;
    private $MaterialstView;
    private $RequestView;
    private $StorageView;
    private $AdminView;

    public function __construct()
    {
        //MODELS
        $this->CollectorModel = new CollectorModel();
        $this->MaterialsModel = new MaterialsModel();
        $this->RequestModel = new RequestModel();
        $this->StorageModel = new StorageModel();
        $this->AdminModel = new AdminModel();
        //VIEWS
        $this->View = new View();
        $this->CollectorView = new CollectorView();
        $this->MaterialsView = new MaterialsView();
        $this->RequestView = new RequestView();
        $this->StorageView = new StorageView();
        $this->AdminView = new AdminView();
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
    function getAdminModel()
    {
        return $this->AdminModel;
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
    function getAdminView()
    {
        return $this->AdminView;
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
