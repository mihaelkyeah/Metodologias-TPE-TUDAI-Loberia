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

    public function getMaterial($id)
    {
        $query = $this->getDbConnection()->prepare('SELECT * FROM material WHERE id_material = ?');
        $query->execute([$id]);
        return $query->fetchAll(PDO::FETCH_OBJ); 
    }

}

?>