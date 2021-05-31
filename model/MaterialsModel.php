<?php

require_once ('model/Model.php');

class MaterialsModel extends Model
{

    public function getMaterialsInfo()
    {
        $query = $this->getDbConnection()->prepare('SELECT * FROM material');
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ); 
    }

}
