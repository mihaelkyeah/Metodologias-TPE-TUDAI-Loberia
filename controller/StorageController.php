<?php

require_once 'controller/Controller.php';
require_once 'model/StorageModel.php';
require_once 'model/CollectorModel.php';

class StorageController extends Controller
{
    private $collectors;

    public function __construct()
    {
        parent::__construct();
        $this->collectors = $this->getCollectorModel()->getCollectors();
        $this->materials  = $this->getMaterialsModel()->getMaterialsInfo();
    }

    public function postMaterialWeight()
    {
        $collector = $this->assignFieldValue($_POST['collector']); //id_collector reference
        $material = $this->assignFieldValue($_POST['material']);
        $date = $this->assignFieldValue($_POST['date']);
        $weight = $this->assignFieldValue($_POST['weight']);

        $success = $this->getStorageModel()->postMaterialWeight($collector, $material, $date, $weight);
        if ($success) {
            $this->showSuccess("Pesaje guardado");
        } else {
            $this->showError("No se pudo guardar");
        }
    }

    public function showMaterialWeight()
    {
        $this->getStorageView()->showStorageFormView($this->collectors, $this->materials);
    }

    public function showError($error)
    {
        $this->getStorageView()->showStorageFormView($this->collectors, $this->materials, $error);
    }

    public function showSuccess($success)
    {
        $this->getStorageView()->showStorageFormView($this->collectors, $this->materials, null, $success);
    }
}
