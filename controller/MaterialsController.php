<?php

include_once("controller/Controller.php");

Class MaterialsController extends Controller{
 
    public function showMaterials(){
        $materials = $this->getMateriasModel()->getMaterialsInfo();
        $this->getMateriasView()->showMaterialsInfo($materials);
    }

    function showError($error){
        $this->getRequestView()->showFormRequest($error);
        die();
    }

    function showSuccess($success){
        $this->getRequestView()->showFormRequest(null, $success);
        die();
    }

}

?>