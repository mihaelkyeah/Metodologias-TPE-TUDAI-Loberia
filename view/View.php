<?php

require_once('libs/smarty/Smarty.class.php');

Class View{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
    }

    public function showHomeView(){
       // $this->getSmarty()->assign('game', $game);
        $this->smarty->assign('title', 'home');
        $this->smarty->display('templates/test.tpl');
    }

}

?>