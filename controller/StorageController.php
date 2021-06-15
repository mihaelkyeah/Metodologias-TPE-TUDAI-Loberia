<?php

require_once ('controller/Controller.php');
require_once ('model/StorageModel.php');
require_once ('model/CollectorModel.php');

Class StorageController extends Controller{

    function postMaterialWeight() {
        $collector = $this->assignFieldValue($_POST['collector']);  //id_collector reference
        $material = $this->assignFieldValue($_POST['material']); 
        $date = $this->assignFieldValue($_POST['date']);
        $weight = $this->assignFieldValue($_POST['weight']);

        $success = $this->getStorageModel()->postMaterialWeight($collector, $material, $date, $weight);
        if($success)
            $this->showSuccess("Pesaje guardado");
        else{
            $this->showError("No se pudo guardar");
        }
    }

    function showMaterialWeight() {
        $collectors = $this->getCollectorModel()->getCollectors();
        $this->getStorageView()->showStorageFormView($collectors);
    }

    function showError($error) {
        //implementar
    }

    function showSuccess($success){
        //implementar
    }

}
    
?>