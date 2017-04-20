<?php

header('Access-Control-Allow-Origin:*');

$host = 'localhost';
$user = 'root';
$password='';
$database='yihaocaipu';
$tablename='foodclass';

class Goods{
    public $id;
    public $src;
    public $name;
    public $classid;
   
}

$conn = new mysqli($host,$user,$password,$database) or die('error');

$conn->query("set names utf8");

$sql = "SELECT * FROM foodclass";
$result = $conn->query($sql);

if($result->num_rows > 0){//$result->num_rows == 返回的数据
        $arr = array();
        while($row = $result->fetch_assoc()){//循环整个数据每次拿出一条
            $goods = new Goods();
            $goods->id = $row["id"];
            $goods->src = $row["src"];
            $goods->title = $row["name"];
            $goods->classid = $row["classid"];
          

            array_push($arr, $goods);
        }
        echo json_encode($arr);
}else {
        echo "没有数据";
}

$conn->close();

?>