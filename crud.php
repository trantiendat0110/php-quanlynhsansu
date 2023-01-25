<?php 
include './src/init.php';
$positionController = new positionController();
$roomController = new roomController();
$userController = new userController();
$bonusController = new bonusController();
$changePwController = new changePwController();
$contractController = new contractController();

$User = new User();

if ($_SERVER['REQUEST_METHOD'] == 'GET' and !empty($_GET['add-position'])) {
    $maCV = $_GET['maCV'];
    $tenCV = $_GET['tenCV'];
    $positionController->add($maCV, $tenCV);
}
if ($_SERVER['REQUEST_METHOD'] == 'GET' and !empty($_GET['delete-position'])) {
    $maCV = $_GET['maCV'];
    $positionController->delete($maCV);
}
if ($_SERVER['REQUEST_METHOD'] == 'GET' and !empty($_GET['add-room'])) {
    $maPB = $_GET['maPB'];
    $tenPB = $_GET['tenPB'];
    $roomController->add($maPB, $tenPB);
}
if ($_SERVER['REQUEST_METHOD'] == 'GET' and !empty($_GET['delete-room'])) {
    $maPB = $_GET['maPB'];
    $roomController->delete($maPB);
}
if ($_SERVER['REQUEST_METHOD'] == 'GET' and !empty($_GET['add-bonus'])) {
    $maKT = $_GET['maKT'];
    $sotien = $_GET['sotien'];
    $bonusController->add($maKT, $sotien);
}
if ($_SERVER['REQUEST_METHOD'] == 'GET' and !empty($_GET['delete-bonus'])) {
    $maKT = $_GET['maKT'];
    $bonusController->delete($maKT);
}
if ($_SERVER['REQUEST_METHOD'] == 'GET' and !empty($_GET['changePw'])) {
    $maNv = $_GET['maNv'];
    $password_old = $_GET['password_old'];
    $password_new = $_GET['password_new'];
    $password_again = $_GET['password_again'];
    $changePwController->change($maNv,$password_old, $password_new , $password_again);
}

// crud user
if ($_SERVER['REQUEST_METHOD'] == 'POST' and !empty($_POST['add_user'])) {
    $fullName = $_POST['fullName'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $maKT = $_POST['maKT'];
    $maPB = $_POST['maPB'];
    $maCV = $_POST['maCV'];
    $img = $_POST['img'];
    $gender = $_POST['gender'];
    $salary = $_POST['salary'];
    $maNv = 'NV' . rand(100, 999);
    $userController->add($maNv, $fullName, $img, $salary,$address, $email, $gender, $maKT, $maPB, $maCV);
}
if ($_SERVER['REQUEST_METHOD'] == 'GET' and !empty($_GET['delete_user'])) {
    $maNv = $_GET['delete_user'];
    $userController->delete($maNv);
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' and !empty($_POST['update_user'])) {
    $maNv = $_POST['update_user'];
    $fullName = $_POST['fullName'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $maKT = $_POST['maKT'];
    $maPB = $_POST['maPB'];
    $maCV = $_POST['maCV'];
    $img = $_POST['img'];
    $gender = $_POST['gender'];
    $salary = $_POST['salary'];
    $userController->update($maNv, $fullName, $img, 
    $salary,$address, $email, $gender, $maKT, $maPB, $maCV);
}
// crud hop dong
if($_SERVER['REQUEST_METHOD'] == 'POST' and !empty($_POST['add_contract'])) {
    $maNV = $_POST['add_contract'];
    $maHD = 'HD'.rand(100, 999);
    $startDay = $_POST['startDay'];
    $longTime = $_POST['longTime'];
    $contractController->add($maNV, $maHD, $startDay, $longTime);
}
