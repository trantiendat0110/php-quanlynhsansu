<?php 
require './src/init.php';
$userController = new userController();
if ($_SERVER['REQUEST_METHOD'] == 'GET' and !empty($_GET['search'])) {
    $value = $_GET['search'];
    $userController->search($value);
}