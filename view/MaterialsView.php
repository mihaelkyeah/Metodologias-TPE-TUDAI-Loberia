<?php

include_once ('view/View.php');

class MaterialsView extends View{

public function showMaterialsInfo($materials)
{

    $this->getSmarty()->assign('title', 'Info');
    $this->getSmarty()->assign('materials', $materials);
    $this->getSmarty()->display('templates/info.tpl');
}

}

?>