<?php

require_once 'libs/smarty/Smarty.class.php';

class RequestView extends View{

    public function showFormRequest($error=null, $success=null){
        $this->getSmarty()->assign('title', 'request');
        $this->smarty->assign('error', $error);
        $this->smarty->assign('success', $success);
        $this->getSmarty()->display('templates/requestPickup.tpl');
    }

}
