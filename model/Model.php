<?php

Class Model{

    private $db;

    function __construct() {
        $host = 'localhost';
        $userName = 'root';
        $password = '';
        $database = 'cooperativa';
        $this->db = new PDO('mysql:host=' . $host . ';' . 'dbname=' . $database . ';charset=utf8', $userName, $password);
       
           try {
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
           } catch (PDOException $c) {
               var_dump($c);
           }
        
    }

    public function getDbConnection() {
        return $this->db;
    }
}

?>