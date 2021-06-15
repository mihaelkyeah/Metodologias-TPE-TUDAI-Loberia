<?php

require_once ('view/View.php');
require_once ('libs/smarty/Smarty.class.php');

class StorageView extends View{

    public function showStorageFormView($collectors,$error=null, $success=null) {
        $this->getSmarty()->assign('title', 'storage');
        $this->getSmarty()->assign('error', $error);
        $this->getSmarty()->assign('success', $success);
        $this->getSmarty()->assign('collectors', $collectors);
        $this->getSmarty()->display('templates/formMaterialStorage.tpl');  //crear tpl
    }

}
