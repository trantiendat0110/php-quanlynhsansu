<?php 
ob_start(); 
include './src/init.php';
$loginController = new loginController();
$loginController->index();
if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $username = $_POST['username'];
    $pw = $_POST['password'];
    $loginController->login($username, $pw);
}
ob_end_flush();