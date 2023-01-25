<?php
include './src/init.php';
$attendController = new attendController();
$Attend = new Attend();
if ($_SERVER['REQUEST_METHOD'] == "GET" and !empty($_GET['attend'])) {
    $maNV = $_SESSION['isUser'];
    $maDD = 'DD' . rand(1000, 9999);
    $_SESSION['attend_id'] = $maDD;
    $date = date('y-m-d');
    $status = $_GET["attend"] || '';
    $start_time = $_GET["start_time"];
    $status = 1;
    $attendController->save_attend($maDD, $maNV, $date, $status, $start_time);
}
if ($_SERVER['REQUEST_METHOD'] == "GET" and !empty($_GET['un_attend'])) {
    $maNV = $_SESSION['isUser'];
    $maDD = 'DD' . rand(1000, 9999);
    $_SESSION['attend_id'] = $maDD;
    $date = date('y-m-d');
    $status = 0;
    $attendController->save_attend($maDD, $maNV, $date, $status, $start_time);
}
if ($_SERVER['REQUEST_METHOD'] == "GET" and !empty($_GET['end_time'])) {
    $nowId = $Attend->getNowId($_SESSION['isUser']);
    $maDD = $Attend->getTopId($nowId);  
    $maNV = $_SESSION['isUser']; 
    $status = 0;
    $end_time = $_GET["end_time"];
    $attendController->check_out($maDD, $maNV,$status, $end_time);
}
