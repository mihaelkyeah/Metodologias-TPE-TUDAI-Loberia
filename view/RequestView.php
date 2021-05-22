<?php

require_once 'libs/smarty/Smarty.class.php';

class RequestView extends View{

    public function showFormRequest($error=null){
        $this->getSmarty()->assign('title', 'request');
        $this->smarty->assign('error', $error);
        $this->getSmarty()->display('templates/requestPickup.tpl');
    }

}
