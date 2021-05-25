<?php

include_once 'model/Model.php';

class MaterialsView extends View{

public function showMaterialsInfo()
{
    $this->getSmarty()->assign('title', 'Info');
    $this->getSmarty()->display('templates/info.tpl');
}

}

?>