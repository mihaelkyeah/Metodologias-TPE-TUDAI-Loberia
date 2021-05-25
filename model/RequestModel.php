<?php

require_once ('model/Model.php');

Class RequestModel extends Model{

    public function postRequest($name,$lastname,$address,$phone,$category,$hora,$img=null){
        $pathImg = null;
        if ($img) $pathImg = $this->uploadImage($img);
        
        $query = $this->getDbConnection()->prepare('INSERT INTO request (name, lastname, address, phone_number, category, image) VALUES (?, ?, ?, ?, ?, ?, ?)');
        return $query->execute([$name, $lastname, $address, $phone, $category, $hora, $pathImg]);
    }

    private function uploadImage($image){
        $target = 'upload/materials/' . uniqid() . '.jpg';
        move_uploaded_file($image, $target);
        return $target;
    }

}

?>