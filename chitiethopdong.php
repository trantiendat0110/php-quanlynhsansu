<?php
include_once './src/init.php';
$contractController = new contractController();
if ($_SERVER['REQUEST_METHOD'] == "GET") {
    $id = $_GET['maNv'];
    $contractController->contract_detail($id);
}