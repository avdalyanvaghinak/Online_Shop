<?php


class UserController
{

    public function actionRegister()
    {

        $name = false;
        $email = false;
        $password = false;
        $result = false;

        if (isset($_POST['submit'])) {

            $name = $_POST['name'];
            $email = $_POST['email'];
            $password = $_POST['password'];


            $errors = false;

            if (!User::checkName($name)) {
                $errors[] = 'Sxalll carch e';
            }

            if (!User::checkEmail($email)) {
                $errors[] = 'incorrect email';
            }

            if (!User::checkPassword($password)) {
                $errors[] = 'parol petq  e lini  6';
            }

            if (User::checkEmailExists($email)) {
                $errors[] = ' email isset';
            }

            if ($errors == false) {
                $result = User::register($name, $email, $password);
            }
        }
            require_once(ROOT . '/views/user/register.php');
            return true;


    }

    public function actionLogin()
    {

        $email = '';
        $password = '';


        if (isset($_POST['submit'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];


            $errors = false;

            if (!User::checkEmail($email)) {
                $errors[] = 'incorrect email';
            }

            if (!User::checkPassword($password)) {
                $errors[] = 'parol petq  e lini  6';
            }

            $userId = User::checkUserData($email, $password);

            if ($userId == false) {
                $errors[] = 'sxalll';

            } else {

                User::auth($userId);
                header("Location: /account/");
            }

        }

        require_once(ROOT . '/views/user/login.php');
        return true;
    }

    public function actionLogout()
    {
        session_start();
        unset($_SESSION["user"]);
        header("Location: /");
    }

}