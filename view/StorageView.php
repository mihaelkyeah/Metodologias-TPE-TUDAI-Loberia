<?php

require_once ('view/View.php');
require_once ('libs/smarty/Smarty.class.php');

class StorageView extends View{

    public function showStorageFormView($collectors) {
        var_dump($collectors);
        die();
        $this->getSmarty()->assign('title', 'storage');
        $this->getSmarty()->assign('collectors', $collectors);
        $this->getSmarty()->display('templates/.tpl');  //crear tpl
    }
}
