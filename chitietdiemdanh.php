<?php
include_once './src/init.php';
$attendController = new attendController();
if ($_SERVER['REQUEST_METHOD'] == "GET") {
    $id = $_GET['maNv'];
    $attendController->attend_detail($id);
}