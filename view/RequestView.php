<?php

require_once 'view/View.php';
require_once 'libs/smarty/Smarty.class.php';

class RequestView extends View
{

    public function showFormRequest($error = null, $success = null)
    {
        $this->getSmarty()->assign('title', 'request');
        $this->getSmarty()->assign('error', $error);
        $this->getSmarty()->assign('success', $success);
        $this->getSmarty()->display('templates/requestPickup.tpl');
    }

    public function showRequestList($params)
    {
        $this->getSmarty()->assign('title', 'request list');
        $this->getSmarty()->assign('list', $params);
        echo ('TODO mostrar lista de pedidos en tpl <br><br>');
        var_dump($params);
        // $this->getSmarty()->assign('error', $error);
        // $this->getSmarty()->assign('success', $success);
        // $this->getSmarty()->display('templates/requestPickup.tpl');
    }

}
