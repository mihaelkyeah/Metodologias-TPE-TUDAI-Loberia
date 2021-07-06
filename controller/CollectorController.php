<?php

require_once 'controller/Controller.php';

class CollectorController extends Controller
{

    public function showListCollectors()
    {
        Admin::adminCheck();
        $collectors = $this->getCollectorModel()->getCollectors();
        array_shift($collectors);
        $this->getCollectorView()->showListCollectors($collectors);
    }

    public function showEditCollector($param = [])
    {
        Admin::adminCheck();
        $id = intval($param[':ID']);
        $collector = $this->getCollectorModel()->getCollectorData($id);
        $this->getCollectorView()->showFormEditCollector($collector);
    }

    public function updateCollector($param = [])
    {
        Admin::adminCheck();
        $id = intval($param[':ID']);
        $nombre = $_POST['name'];
        $apellido = $_POST['surname'];
        $dni = $_POST['id_number'];
        $fecha_nacimiento = $_POST['birth_date'];
        $vehiculo = $_POST['vehicle'];

        if (
            !empty($id)
            && !empty($nombre)
            && !empty($apellido)
            && !empty($dni)
            && !empty($fecha_nacimiento)
            && !empty($vehiculo)
        ) // VERIFICACIÓN COPMLETAMENTE INDISPENSABLE
        {
            $success = $this->getCollectorModel()->updateCollector($id, $nombre, $apellido, $dni, $fecha_nacimiento, $vehiculo);
        }

        if ($success) {
            $this->showListCollectors();
        } else {
            $this->showError("Falta algún dato obligatorio del recolector que usted intentó editar.");
        }
    }

    public function showCollectedMaterials($param = [])
    {
        Admin::adminCheck();
        $id = intval($param[':ID']);
        $collector = $this->getCollectorModel()->getCollectorData($id);
        $materials = $this->getStorageModel()->getStorageByCollector($id);
        $this->getCollectorView()->showCollectedMaterials($collector, $materials);
    }

    public function showError($error)
    {
        var_dump($error);
        die();
    }

    public function showSuccess($success)
    {
        var_dump($success);
        die();
    }

    public function newCollector()
    {

        $nombre = $_POST['name'];
        $apellido = $_POST['surname'];
        $dni = $_POST['id_number'];
        $fecha_nacimiento = $_POST['birth_date'];
        $vehiculo = $_POST['vehicle'];

        if (
            !empty($nombre)
            && !empty($apellido)
            && !empty($dni)
            && !empty($fecha_nacimiento)
            && !empty($vehiculo)
        ) // VERIFICACIÓN COPMLETAMENTE INDISPENSABLE
        {
            $success = $this->getCollectorModel()->addCollector($nombre, $apellido, $dni, $fecha_nacimiento, $vehiculo);
        }

        if ($success) {
            $this->showListCollectors();
        } else {
            $this->showError("Falta algún dato obligatorio del recolector.");
        }
    }

    public function deleteCollector($params = [])
    {
        Admin::adminCheck();
        $id = $params[':ID'];
        $this->getCollectorModel()->deleteCollector($id);
    }
}
