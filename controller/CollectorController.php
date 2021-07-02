<?php

require_once('controller/Controller.php');

class CollectorController extends Controller
{

    function showListCollectors()
    {
        $collectors = $this->getCollectorModel()->getCollectors();
        array_shift($collectors);
        $this->getCollectorView()->showListCollectors($collectors);
    }

    function showEditCollector($param = [])
    {
        $id = intval($param[':ID']);
        $collector = $this->getCollectorModel()->getCollectorData($id);
        $this->getCollectorView()->showFormEditCollector($collector);
    }

    function updateCollector($param = [])
    {
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
            $success = $this->getCollectorModel()->updateCollector($id, $nombre, $apellido, $dni, $fecha_nacimiento, $vehiculo);
        if ($success) {
            $this->showListCollectors();
        } else {
            $this->showError("Falta algún dato obligatorio del recolector que usted intentó editar.");
        }
    }

    function showCollectedMaterials($param = []){
        $id = intval($param[':ID']);
        $collector = $this->getCollectorModel()->getCollectorData($id);
        $materials = $this->getStorageModel()->getStorageByCollector($id);
        $this->getCollectorView()->showCollectedMaterials($collector, $materials);
    }

    function showError($error)
    {
        var_dump($error);
        die();
    }

    function showSuccess($success)
    {
        var_dump($success);
        die();
    }

    function deleteCollector($params = [])
    {
        $id = $params[':ID'];
        $this->getCollectorModel()->deleteCollector($id);
    }
}
