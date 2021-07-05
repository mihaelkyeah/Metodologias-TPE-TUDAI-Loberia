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
        $this->getView()->showError($error);
        die();
    }

    public function showSuccess($success)
    {
        $this->getRequestView()->showFormRequest(null, $success);
        die();
    }

    public function deleteMaterial($param = [])
    {
        Admin::adminCheck();
        $id = intval($param[':ID']);

        $this->getMaterialsModel()->delete($id);
        header('Location: ' . BASE_URL . 'info');
    }

    public function showUpdateMaterial($param = [])
    {
        Admin::adminCheck();
        $id = intval($param[':ID']);
        $data = $this->getMaterialsModel()->getMaterial($id);
        $this->getMateriasView()->showFormEditMaterials($data);
    }

    function updateMaterial($param = [])
    {
        Admin::adminCheck();
        $id_material = intval($param[':ID']);
        $name = $_POST['name'];
        $delivery = $_POST['delivery'];
        $video = $_POST['video'];

        $video = $this->parseYoutubeURL($video);

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
                // ver si $data hace falta en esta bifurcación
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
        Admin::adminCheck();
        $this->getMateriasView()->showFormNewMaterial();
    }

    public function newMaterial()
    {
        Admin::adminCheck();
        $url = null;

        if (isset($_POST['name']))  $name = $_POST['name'];
        if (isset($_POST['condition']))  $condition = $_POST['condition'];
        if (isset($_POST['url']))
            $url = $this->parseYoutubeURL($_POST['url']);

        if (
            $_FILES['img']['type'] == "image/jpg" ||
            $_FILES['img']['type'] == "image/jpeg" ||
            $_FILES['img']['type'] == "image/png" ||
            $_FILES['img']['type'] == "image/jpeg"
        ) {
            $success = $this->getMaterialsModel()->newMaterial($name, $condition, $_FILES['img']['tmp_name'], $url);
        } else {
            $success = $this->getMaterialsModel()->newMaterial($name, $condition, null, $url);
        }
        if ($success) {
            $this->getMateriasView()->showFormNewMaterial(NULL, "el material se registro con exito");
        } else {
            $this->getMateriasView()->showFormNewMaterial("error al registrar nuevo material");
        }
    }

    public function parseYoutubeURL($url) {
        Admin::adminCheck();
        $retorno = $url;
        for($i = 0; $i < 2; $i++) {
            if(str_contains($url,".com/watch?v="))
                $retorno = str_replace(".com/watch?v=",".com/embed/",$url);
            else if(str_contains($url,"youtu.be/"))
                $retorno = str_replace("youtu.be/","youtube.com/embed/",$url);
            else if(str_contains($url,"m.youtube.com"))
                $retorno = str_replace("m.youtube.com","youtube.com",$url);
        }
        if(str_contains($retorno,"?") || str_contains($retorno,"&")) {
            $this->showError("Esta URL de video no es válida. Quite los parámetros GET adicionales.");
        }
        else if(!empty($retorno) && !str_contains($retorno,"youtube")) {
            $this->showError("Esta URL no es de un video en YouTube.");
        }
        return $retorno;
    }
}
