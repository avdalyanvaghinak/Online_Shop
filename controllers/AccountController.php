<?php


class AccountController
{

    public function actionIndex()
    {

        $userId = User::checkLogged();

        $user = User::getUserById($userId);

        require_once (ROOT . '/views/account/index.php');

        return true;
    }

    public function actionEdit()
    {
        $userId = User::checkLogged();

        $user = User::getUserById($userId);

        $name = $user['name'];
        $password = $user['password'];

        $result = false;


        if (isset($_POST['submit'])){
            $name = $_POST['name'];
            $password = $_POST['password'];

            $errors = false;

            if (!User::checkName($name)){
                $errors[] = 'Anuna chpetq e lini 2 karch';
            }

            if (!User::checkPassword($password)){
                $errors[] = 'Parola chpetq e lini 6 karch';
            }

            if ($errors == false){
                $result = User::edit($userId,$name,$password);
            }
        }

        require_once (ROOT . '/views/account/edit.php');

        return true;

    }

}































