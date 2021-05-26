<?php

require_once ('controller/Controller.php');

Class HomeController extends Controller{

    function showHome(){
        $this->getView()->showHomeView();
    }

    function showError($error) {
        var_dump($error);
        die();
    }

    function showSuccess($success) {
        var_dump($success);
        die();
    }

}
    
?>