<?php


class Category
{

    public static function getCategoriesList(){

        $db = DB::getConnection();

        $categoriyList = array();

        $result = $db->query(' SELECT id,name FROM category  '
        . ' ORDER BY sort_order ASC');

        $i = 0;
        while ($row = $result->fetch()){
            $categoriyList[$i]['id'] = $row['id'];
            $categoriyList[$i]['name'] = $row['name'];
            $i++;
        }
        return $categoriyList;
    }
}