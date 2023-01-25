<?php
include_once './src/init.php';
$userController = new userController();
if ($_SERVER['REQUEST_METHOD'] == "GET") {
    $id = $_GET['maNv'];
    $userController->user_detail($id);
}