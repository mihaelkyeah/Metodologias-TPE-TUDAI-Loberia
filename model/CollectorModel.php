<?php

require_once ('model/Model.php');

Class CollectorModel extends Model{

    public function getCollectors() {
        $query = $this->getDbConnection()->prepare('SELECT * FROM `recolector`');
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ); 
    }

    public function getCollectorData($id) {
        $query = $this->getDbConnection()->prepare('SELECT * FROM `recolector` WHERE `id_recolector` = ?');
        $query->execute([$id]);
        return $query->fetch(PDO::FETCH_OBJ);
    }

    public function updateCollector($id, $nombre, $apellido, $dni, $fecha_nacimiento, $vehiculo) {
        $query = $this->getDbConnection()->prepare('UPDATE `recolector` SET `nombre` = ?, `apellido` = ?, `nro_dni` = ?, `fecha_nacimiento` = ?, `vehiculo` = ? WHERE `id_recolector` = ?');
        return $query->execute([$nombre, $apellido, $dni, $fecha_nacimiento, $vehiculo, $id]);
    }

    public function addCollector($nombre, $apellido, $dni, $fecha_nacimiento, $vehiculo) {
        $query = $this->getDbConnection()->prepare('INSERT INTO recolector (nombre, apellido, nro_dni, fecha_nacimiento, vehiculo) VALUES (?, ?, ?, ?, ?)');
        return $query->execute([$nombre, $apellido, $dni, $fecha_nacimiento, $vehiculo]);
    }
    
}

?>