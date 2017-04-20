<?php

header('Access-Control-Allow-Origin:*');

$host = 'localhost';
$user = 'root';
$password='';
$database='no1cookmenu';
$tablename='foodlist';
class Goods{
    public $id;
    public $src;
    public $name;
    public $time;
    public $taste;
    public $star;
    public $classname;
}

$conn = new mysqli($host,$user,$password,$database) or die('error');
$conn->query("set names utf8");
if(!empty( $_POST['show'])){
$num = $_POST['show'];
$type = $_POST["type"];
$sort =$_POST["sort"];
$rank =$_POST["rank"];
// elect * from bookinfo order by bjy desc limit 10 " LIMIT 0,"."$num"
$sql = "SELECT * FROM foodlist where  classname = '$type' order by $sort $rank limit 0,"."$num";
// $sql ="SELECT * FROM foodlist";
$result = $conn->query($sql);
if($result->num_rows > 0){//$result->num_rows == 返回的数据
        $arr = array();
        while($row = $result->fetch_assoc()){//循环整个数据每次拿出一条
            $goods = new Goods();
            $goods->id = $row["id"];
            $goods->src = $row["src"];
            $goods->name = $row["name"];
            $goods->time = $row["time"];
            $goods->taste = $row["taste"];
            $goods->star = $row["star"];
            $goods->classname = $row["classname"];
            array_push($arr, $goods);
        }
        echo json_encode($arr);
        // echo ($_POST)
}else {
        echo "没有数据";
}

$conn->close();
}

?>
