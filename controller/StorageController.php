<?php

require_once ('controller/Controller.php');

Class StorageController extends Controller{

    function postMaterialWeight() {
        $collector = $this->assignFieldValue($_POST['collector']);  //id_collector reference
        $material = $this->assignFieldValue($_POST['material']); 
        $date = $this->assignFieldValue($_POST['date']);
        $weight = $this->assignFieldValue($_POST['weight']);

        $success = true;
        if($success)
            $this->showSuccess("Pesaje guardado");
        else{
            $this->showError("No se pudo guardar");
        }
    }

    function showError($error) {
        //implementar
    }

    function showSuccess($success){
        //implementar
    }

}
    
?>