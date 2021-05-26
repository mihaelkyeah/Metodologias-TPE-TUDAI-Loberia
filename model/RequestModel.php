<?php

require_once ('model/Model.php');

Class RequestModel extends Model{

    public function postRequest($name,$lastname,$address,$phone,$category,$hora,$img=null){
        $pathImg = null;
        if ($img) $pathImg = $this->uploadImage($img);
        
        $query = $this->getDbConnection()->prepare('INSERT INTO pedido_recoleccion (nombre, apellido, direccion, nro_telefono, volumen, franja_horaria, imagen) VALUES (?, ?, ?, ?, ?, ?, ?)');
        return $query->execute([$name, $lastname, $address, $phone, $category, $hora, $pathImg]);
    }

    private function uploadImage($image){
        $target = 'uploads/materials/' . uniqid() . '.jpg';
        move_uploaded_file($image, $target);
        return $target;
    }

}

?>