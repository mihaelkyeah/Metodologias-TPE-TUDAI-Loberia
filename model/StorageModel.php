<?php

require_once ('model/Model.php');

Class StorageModel extends Model{

    public function postMaterialWeight($collector,$material,$date,$weight){
        $query = $this->getDbConnection()->prepare('INSERT INTO deposito (id_recolector, material, fecha, peso) VALUES (?, ?, ?, ?)');
        return $query->execute([$collector,$material,$date,$weight]);
    }
    
}

?>