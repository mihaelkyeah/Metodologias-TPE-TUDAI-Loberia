<?php

require_once ('view/View.php');
require_once ('libs/smarty/Smarty.class.php');

class AdminView extends View{

    public function showLoginForm($error = null){
        $this->getSmarty()->assign('title', 'Login');
        $this->getSmarty()->assign('login', true);
        $this->getSmarty()->assign('error', $error);
        $this->getSmarty()->display('templates/loginForm.tpl');
    }

}
