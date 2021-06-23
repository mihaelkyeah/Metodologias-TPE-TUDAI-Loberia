<?php

include_once('view/View.php');

class MaterialsView extends View
{

    public function showMaterialsInfo($materials)
    {
        $this->getSmarty()->assign('title', 'Info Materiales');
        $this->getSmarty()->assign('materials', $materials);
        $this->getSmarty()->display('templates/info.tpl');
    }
    public function mostrarPanelAdminMateriales($materials)
    {
        $this->getSmarty()->assign('title', 'AdminPanel');
        $this->getSmarty()->assign('materials', $materials);
        $this->getSmarty()->display('templates/adminView.tpl');
    }

    public function showFormEditMaterials($data, $error = null, $success = null)
    {
        $this->getSmarty()->assign('title', 'Editar Material');
        $this->getSmarty()->assign('error', $error);
        $this->getSmarty()->assign('success', $success);
        $this->getSmarty()->assign('datos', $data);
        $this->getSmarty()->display('templates/formEditMaterials.tpl');
    }
    public function showFormNewMaterial($error = null, $success = null)
    {
        $this->getSmarty()->assign('title', 'Agregar Material');
        $this->getSmarty()->assign('error', $error);
        $this->getSmarty()->assign('success', $success);
        $this->getSmarty()->display('templates/formNewMaterial.tpl');
    }
}
