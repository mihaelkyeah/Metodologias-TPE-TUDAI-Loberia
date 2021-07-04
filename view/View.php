<?php

require_once('libs/smarty/Smarty.class.php');

class View
{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
        $this->getSmarty()->assign('isLogged', Admin::checkLoggedIn());
        //BASE_URL es asignado aca porque es necesario que url llegue a todos los tamplates
        $this->getSmarty()->assign('url', BASE_URL);
    }

    /**
     * @return Smarty object
     */
    public function getSmarty()
    {
        return $this->smarty;
    }

    public function showHomeView()
    {
        $this->getSmarty()->assign('title', 'C.R.U.T');
        $this->getSmarty()->display('templates/home.tpl');
    }

    public function showError($error) {
        $this->getSmarty()->assign('title', 'C.R.U.T - ERROR');
        $this->getSmarty()->assign('errorMsg', $error);
        $this->getSmarty()->display('templates/error.tpl');
    }
}
