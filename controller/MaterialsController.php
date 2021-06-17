<?php

include_once("controller/Controller.php");
require_once ('model/MaterialsModel.php');

Class MaterialsController extends Controller{
 
    public function showMaterials(){
        $materials = $this->getMaterialsModel()->getMaterialsInfo();
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

    function deleteMaterial($param = []){
        $id =intval($param[':ID']);
       
        $this->getMaterialsModel()->delete($id);
        header('Location: ' . BASE_URL . 'info');
    }

}

?>