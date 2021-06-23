<?php

require_once('controller/Controller.php');

class AdminController extends Controller
{

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
