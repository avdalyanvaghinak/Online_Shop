<?php


class SiteController
{

    public function actionIndex()
    {
        $categories = array();
        $categories = Category::getCategoriesList();

        $latestProducts = array();
        $latestProducts = Product::getLatestProducts(6);

        $sliderProducts = Product::getRecommendedProducts();

        require_once (ROOT . '/views/site/index.php');
        return true;
    }

    public function actionContact(){

        $adminEmail = 'avdalyanvaxo@gmail.com';
        $message = "Текст";
        $subject = 'Тема письма';
        $result = mail($adminEmail, $subject, $message);

        var_dump($result); die();
    }

//    public function actionContact(){
//
//
//        $userEmail = '';
//        $userText = '';
//        $result = false;
//
//        if (isset($_POST['submit'])){
//
//            $userEmail = $_POST['userEmail'];
//            $userText = $_POST['userText'];
//
//            $errors = false;
//
//            if (!User::checkEmail($userEmail)){
//                $errors[] = 'Sxal  Email';
//            }
//
//
//
//            if ($errors == false){
//
//
//                $adminEmail = 'avdalyanvaxo@gmail.com';
//                $message = "Tekst: {$userText}. From {$userEmail}" ;
//                $subject = 'letter';
//                $result = mail($adminEmail, $subject, $message);
//                $result = true;
//
//                var_dump($result);
//            }
//        }
//
//         require_once (ROOT . '/views/site/contact.php');
//
//        return true;
//    }

}