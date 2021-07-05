<?php

require_once ('model/Model.php');

Class AdminModel extends Model{

    public function login($username, $password){
        $query = $this->getDbConnection()->prepare('SELECT * FROM `usuarios` WHERE username = ?');
        $query->execute([$username]);
        $user = $query->fetch(PDO::FETCH_OBJ);
        if($user && $this->passwordCheck($user, $password)){
            return $this->getUser($user->id_user);
        }
        return false;
    }

    private function passwordCheck($user, $password){
        $hash = $user->password;  
        return password_verify($password, $hash);
    }

    private function getUser($id){
        $query = $this->getDbConnection()->prepare('SELECT username FROM `usuarios` WHERE id_user = ?');
        $query->execute([$id]);
        return $query->fetch(PDO::FETCH_OBJ);
    }
    
}

?>