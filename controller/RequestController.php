<?php


Class RequestController {
    private $RequestView;

    public function __construct(){
        $this->Model->RequestModel();
        $this->RequestView->RequestView();
    }
    
    function postRequest() {
        if (empty($_POST['name']) || empty($_POST['lastname']) || empty($_POST['address']) || empty($_POST['phoneNumber']) || empty($_POST['category'])) {
            $this->RequestView->showFormRequest("Faltan datos obligatorios");
            die();
        }
        $name = $_POST['name'];
        $lastname = $_POST['lastname'];
        $address = $_POST['address'];
        $phone = $_POST['phoneNumber'];
        $category = $_POST['category'];

        if($_FILES['input_name']['type'] == "image/jpg" || $_FILES['input_name']['type'] == "image/jpeg" 
            || $_FILES['input_name']['type'] == "image/png") {
            $success = $this->model->save($name,$lastname,$address,$phone,$category, $_FILES['input_name']['tmp_name']);
        } else {
            $success = $this->model->save($name,$lastname,$address,$phone,$category);
        }
        if($success)
            header('Location: ' . ""); //DEFINIR
        else{
            $this->RequestView->showFormRequest("No se pudo guardar");
        }
    }
}
    
?>