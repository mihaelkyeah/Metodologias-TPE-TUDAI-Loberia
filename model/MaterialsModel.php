<?php

header('X-Frame-Options: SAMEORIGIN');

require_once ('model/Model.php');

class MaterialsModel extends Model
{

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

    public function newMaterial($name, $condition, $img = NULL){
        if ($img) $pathImg = $this->getTarget();
        $query = $this->getDbConnection()->prepare('INSERT INTO material (nombre_material, forma_entrega, img_path, video_link) VALUES (?, ?, ?, ?)');
        $success = $query->execute([$name,$condition, $pathImg, $_POST['url']]);
        if($success && isset($pathImg)) $this->saveImage($img, $pathImg);
        return $success;
    }

    private function getTarget() {
        $target = 'uploads/materials/' . uniqid() . '.jpg';
        return $target;
    }

    private function saveImage($image, $target) {
       move_uploaded_file($image, $target);
    }
}

?>