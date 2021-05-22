<?php

Class RequestModel extends Model{

    public function postRequest($name,$lastname,$address,$phone,$category,$img=null){
        $pathImg = null;
        if ($img) $pathImg = $this->uploadImage($img);
        
        $query = $this->db->prepare('INSERT INTO request (name, lastname, address, phone_number, category, image) VALUES (?, ?, ?, ?, ?, ?)');
        return $query->execute([$name, $lastname, $address, $phone, $category, $pathImg]);
    }

    private function uploadImage($image){
        $target = 'upload/materials/' . uniqid() . '.jpg';
        move_uploaded_file($image, $target);
        return $target;
    }

}

?>