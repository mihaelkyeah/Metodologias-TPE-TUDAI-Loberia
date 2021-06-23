<?php

header('X-Frame-Options: SAMEORIGIN');

require_once ('model/Model.php');

class MaterialsModel extends Model
{

    private function getTarget() {
        $target = 'uploads/requests/' . uniqid() . '.jpg';
        return $target;
    }

    private function saveImage($image, $target) {
        move_uploaded_file($image, $target);
     }

    public function getMaterialsInfo()
    {
        $query = $this->getDbConnection()->prepare('SELECT * FROM material');
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ); 
    }

    public function delete($id){
        $query = $this->getDbConnection()->prepare('DELETE FROM material WHERE id_material = ?');
        $query->execute([$id]);
    }

    public function getMaterial($id)
    {
        $query = $this->getDbConnection()->prepare('SELECT * FROM material WHERE id_material = ?');
        $query->execute([$id]);
        return $query->fetch(PDO::FETCH_OBJ); 
    }

    public function updateMaterial($id_material,$name,$delivery, $video = NULL, $img = NULL){
        if ($img) 
            $pathImg = $this->getTarget();
        else
            $pathImg =NULL;
        $query = $this->getDbConnection()->prepare('UPDATE material SET nombre_material = ?, forma_entrega = ?, img_path = ?, video_link = ? WHERE id_material = ?')  ;
        $success = $query->execute([$name, $delivery, $pathImg, $video, $id_material]);
        if($success && isset($pathImg)) $this->saveImage($img, $pathImg);
        return $success;
    }

    public function newMaterial($name, $condition, $img = NULL){
        if ($img) 
            $pathImg = $this->getTarget();
        else
            $pathImg = NULL;
        $query = $this->getDbConnection()->prepare('INSERT INTO material (nombre_material, forma_entrega, img_path, video_link) VALUES (?, ?, ?, ?)');
        $success = $query->execute([$name,$condition, $pathImg, $_POST['url']]);
        if($success && isset($pathImg)) $this->saveImage($img, $pathImg);
        return $success;
    }

}
