<?php


class Router
{

    private $routes;

    public function __construct()
    {

        $routesPath = ROOT . '/config/routes.php';
        $this->routes = include ($routesPath);

    }

    private function getURI()
    {
        if (!empty($_SERVER['REQUEST_URI'])){
            return trim($_SERVER['REQUEST_URI'],'/');
        }
    }


    public function run()
    {
     $uri = $this->getURI();

     foreach ($this->routes as $uriPattern => $path){
         if (preg_match("~$uriPattern~",$uri)){

             $internalRoute = preg_replace("~$uriPattern~", $path ,$uri);

             $segment = explode('/',$internalRoute);

             $contollerName = array_shift($segment) . 'Controller';
             $contollerName = ucfirst($contollerName);

             $actoinName = 'action' . ucfirst(array_shift($segment));


             $parametrs = $segment;



             $controllerFile = ROOT . '/controllers/' .
                 $contollerName . '.php';

             if (file_exists($controllerFile)){
                 include_once $controllerFile;
             }


             //sazdaem object , vizivate method
             $controllerObject = new $contollerName;

             $result = call_user_func_array(array($controllerObject,$actoinName),$parametrs);

             if ($result != null){
                 break;
             }

         }


     }
    }
}