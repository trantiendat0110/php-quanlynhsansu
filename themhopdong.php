<?php 
require './src/init.php';
$contractController = new contractController();
$maNV = $_GET['maNV'];
$contractController->form($maNV);
