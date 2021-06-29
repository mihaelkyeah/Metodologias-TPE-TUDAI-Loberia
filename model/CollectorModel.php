<?php

require_once ('model/Model.php');

Class CollectorModel extends Model{

    public function getCollectors() {
        $query = $this->getDbConnection()->prepare('SELECT * FROM recolector');
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ); 
    }
    
}

?>