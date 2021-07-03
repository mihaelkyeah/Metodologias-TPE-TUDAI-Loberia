<?php
require_once 'controller/Controller.php';

class Admin extends Controller
{

    public function showLogin()
    {
        if (self::checkLoggedIn()) {
            header('location:' . BASE_URL . 'Home');
        } else {
            $this->getAdminView()->showLoginForm();
        }
    }

    private static function start()
    {
        if (session_status() != PHP_SESSION_ACTIVE) {
            session_start();
        }
    }

    public function login()
    {
        $name = $this->assignFieldValue($_POST['username']);
        $pass = $this->assignFieldValue($_POST['password']);
        $user = $this->getAdminModel()->login($name, $pass);
        if ($user) {
            self::saveLog($user);
        } else {
            $this->showError('nombre de usuario o contraseña incorrecto');
        }
    }

    private static function saveLog($user)
    {
        self::start();
        $_SESSION['IS_LOGGED'] = true;
        $_SESSION['USERNAME'] = $user->username;
        header('location:' . BASE_URL . 'Home');
    }

    public static function adminCheck(){
        self::checkLoggedIn() ? : header('location:' . BASE_URL . 'Home');
    }

    /**
     * Control de usuario logueado
     */
    public static function checkLoggedIn()
    {
        self::start();
        if (!isset($_SESSION['IS_LOGGED'])) {
            return false;
        }
        return true;
    }

    public function logout()
    {
        self::start();
        session_destroy();
        header('location:' . BASE_URL . 'login');
    }

    public function showError($error)
    {
        $this->getAdminView()->showLoginForm($error);
        die();
    }

    public function showSuccess($success)
    {
        var_dump($success);
        die();
    }

}
