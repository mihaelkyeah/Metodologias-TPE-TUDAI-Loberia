<?php

require_once ('model/Model.php');

Class RequestModel extends Model{

    public function postRequest($name,$lastname,$address,$phone,$category,$hora,$img=null){
        $pathImg = null;
        if ($img) $pathImg = $this->getTarget();
        
        $query = $this->getDbConnection()->prepare('INSERT INTO pedido_recoleccion (nombre, apellido, direccion, nro_telefono, volumen, franja_horaria, imagen) VALUES (?, ?, ?, ?, ?, ?, ?)');
        $success = $query->execute([$name, $lastname, $address, $phone, $category, $hora, $pathImg]);
        if($success && isset($pathImg)) $this->saveImage($img, $pathImg);
        return $success;
    }

    private function getTarget() {
        $target = 'uploads/requests/' . uniqid() . '.jpg';
        return $target;
    }

    private function saveImage($image, $target) {
        move_uploaded_file($image, $target);
    }

    public function getList(){
        $query = $this->getDbConnection()->prepare('SELECT * FROM pedido_recoleccion');
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ); 
    }

}

?>