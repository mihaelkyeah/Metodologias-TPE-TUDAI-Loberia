<?php

require_once ('controller/Controller.php');
require_once ('model/RequestModel.php');
require_once ('view/RequestView.php');

Class RequestController extends Controller{

    function showForm() {
        $this->getRequestView()->showFormRequest();
    }
    
    function postRequest() {
        if (empty($_POST['name']) || empty($_POST['lastname']) || empty($_POST['address']) || empty($_POST['phoneNumber']) || empty($_POST['category'])) {
            $this->getRequestView()->showFormRequest("Faltan datos obligatorios");
            die();
        }
        $name = $_POST['name'];
        $lastname = $_POST['lastname'];
        $address = $_POST['address'];
        $phone = $_POST['phoneNumber'];
        $category = $_POST['category'];

        if($_FILES['input_name']['type'] == "image/jpg" || $_FILES['input_name']['type'] == "image/jpeg" 
            || $_FILES['input_name']['type'] == "image/png") {
            $success = $this->getRequestModel()->postRequest($name,$lastname,$address,$phone,$category, $_FILES['input_name']['tmp_name']);
        } else {
            $success = $this->getRequestModel()->postRequest($name,$lastname,$address,$phone,$category);
        }
        if($success)
            $this->getRequestView()->showFormRequest(null, "Solicitud guardada");
        else{
            $this->getRequestView()->showFormRequest("No se pudo guardar");
        }
    }
}
    
?>