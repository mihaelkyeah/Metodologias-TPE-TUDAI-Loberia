<?php

require_once('controller/Controller.php');

class CollectorController extends Controller
{

    function showListCollectors()
    {
        $collectors = $this->getCollectorModel()->getCollectors();
        $this->getCollectorView()->showListCollectors($collectors);
    }

    function showError($error)
    {
        var_dump($error);
        die();
    }

    function showSuccess($success)
    {
        var_dump($success);
        die();
    }
}
