<?php

include_once "controller/Controller.php";
require_once 'model/MaterialsModel.php';

class MaterialsController extends Controller
{

    public function showMaterials()
    {
        $materials = $this->getMaterialsModel()->getMaterialsInfo();
        $this->getMateriasView()->showMaterialsInfo($materials);
    }

    public function showError($error)
    {
        $this->getRequestView()->showFormRequest($error);
        die();
    }

    public function showSuccess($success)
    {
        $this->getRequestView()->showFormRequest(null, $success);
        die();
    }

    public function deleteMaterial($param = [])
    {
        $id = intval($param[':ID']);

        $this->getMaterialsModel()->delete($id);
        header('Location: ' . BASE_URL . 'info');
    }

    public function showUpdateMaterial($param = [])
    {
        $id = intval($param[':ID']);
        $data = $this->getMaterialsModel()->getMaterial($id);
        $this->getMateriasView()->showFormEditMaterials($data);
    }

    function updateMaterial($param = [])
    {
        $id_material = intval($param[':ID']);
        $name = $_POST['name'];
        $delivery = $_POST['delivery'];
        $video = $_POST['video'];

        if ($name != "" && $delivery != "") {
            if (
                $_FILES['imageToUpload']['type'] == "image/jpg" ||
                $_FILES['imageToUpload']['type'] == "image/jpeg" ||
                $_FILES['imageToUpload']['type'] == "image/png" ||
                $_FILES['imageToUpload']['type'] == "image/jpeg"
            ) {
                $success = $this->getMaterialsModel()->updateMaterial($id_material, $name, $delivery, $video, $_FILES['imageToUpload']['tmp_name']);
            } else
                $success = $this->getMaterialsModel()->updateMaterial($id_material, $name, $delivery, $video, NULL);
            if ($success) {
                $data = $this->getMaterialsModel()->getMaterial($id_material);
                $this->showMaterials();
            }
        } else {
            $data = $this->getMaterialsModel()->getMaterial($id_material);
            $this->getMateriasView()->showFormEditMaterials($data, "Por Favor Recuerde Que los Campos NOMBRE y FORMA DE ENTREGA no pueden estar vacios ", NULL);
        }
    }

    public function showFormNewMaterial()
    {
        $this->getMateriasView()->showFormNewMaterial();
    }

    public function newMaterial()
    {
        if (isset($_POST['name']))  $name = $_POST['name'];
        if (isset($_POST['condition']))  $condition = $_POST['condition'];

        if (
            $_FILES['img']['type'] == "image/jpg" ||
            $_FILES['img']['type'] == "image/jpeg" ||
            $_FILES['img']['type'] == "image/png" ||
            $_FILES['img']['type'] == "image/jpeg"
        ) {
            $success = $this->getMaterialsModel()->newMaterial($name, $condition, $_FILES['img']['tmp_name']);
        } else {
            $success = $this->getMaterialsModel()->newMaterial($name, $condition);
        }
        if ($success) {
            $this->getMateriasView()->showFormNewMaterial(NULL, "el material se registro con exito");
        } else {
            $this->getMateriasView()->showFormNewMaterial("error al registrar nuevo material");
        }
    }
}
