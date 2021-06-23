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

    public function showUpdateMaterial($param = []){
        $id =intval($param[':ID']);
        $data = $this->getMaterialsModel()->getMaterial($id);
        $this->getMateriasView()->showFormEditMaterials($data);
    }

    function updateMaterial($param = []) 
    { 
        $id_material = intval($param[':ID']);
        $name = $this->assignFieldValue($_POST['name']);
        $delivery = $this->assignFieldValue($_POST['delivery']);
        $video=$this->assignFieldValue($_POST['video']);

            if ($_FILES['imageToUpload']['type'] == "image/jpg" ||
                $_FILES['imageToUpload']['type'] == "image/jpeg" ||
                $_FILES['imageToUpload']['type'] == "image/png" ||
                $_FILES['imageToUpload']['type'] == "image/jpeg")
            {
                $success = $this->getMaterialsModel()->updateMaterial($id_material,$name,$delivery,$video, $_FILES['imageToUpload']['tmp_name']);
            }
            else
                $success = $this->getMaterialsModel()->updateMaterial($id_material,$name,$delivery,$video,NULL);
            if($success)
                $this->showSuccess("Solicitud guardada");
            else{
                $this->showError("No se pudo guardar");
            }
        
    }
}
?>