<?php
session_start();
date_default_timezone_set("Asia/Ho_Chi_Minh");
include_once './src/config/database.php';
include_once './src/controller/userController.php';
include_once './src/controller/homeController.php';
include_once './src/controller/loginController.php';
include_once './src/controller/contractController.php';
include_once './src/controller/attendController.php';
include_once './src/controller/userAttendController.php';
include_once './src/controller/addtimeController.php';
include_once './src/controller/positionController.php';
include_once './src/controller/roomController.php';
include_once './src/controller/bonusController.php';
include_once './src/controller/changePwController.php';
include_once './src/model/Contract.php';
include_once './src/model/Addtime.php';
include_once './src/model/Bonus.php';
include_once './src/model/Room.php';
include_once './src/model/Position.php';
include_once './src/model/User.php';
include_once './src/model/Attend.php';
?>