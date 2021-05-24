<?php

require_once ('controller/Controller.php');
require_once ('model/RequestModel.php');
require_once ('view/RequestView.php');

Class RequestController extends Controller{

    function showForm() {
        $this->getRequestView()->showFormRequest();
    }
    
    function postRequest() {
    
        $name = $this->assignFieldValue($_POST['name']);
        $lastname = $this->assignFieldValue($_POST['lastname']);
        $address = $this->assignFieldValue($_POST['address']);
        $phone = $this->assignFieldValue($_POST['phoneNumber']);
        $category = $this->assignFieldValue($_POST['category']);

        if($_FILES['input_name']['type'] == "image/jpg" || 
            $_FILES['input_name']['type'] == "image/jpeg" || 
            $_FILES['input_name']['type'] == "image/png" || 
            $_FILES['input_name']['type'] == "image/jpeg") {
            $success = $this->getRequestModel()->postRequest($name,$lastname,$address,$phone,$category, $_FILES['input_name']['tmp_name']);
        } else {
            $success = $this->getRequestModel()->postRequest($name,$lastname,$address,$phone,$category);
        }
        if($success)
            $this->showSuccess("Solicitud guardada");
        else{
            $this->showError("No se pudo guardar");
        }
    }

    function showError($error){
        $this->getRequestView()->showFormRequest($error);
        die();
    }

    function showSuccess($success){
        $this->getRequestView()->showFormRequest(null, $success);
        die();
    }

}
    
?>