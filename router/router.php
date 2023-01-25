<?php
$url = $_SERVER['REQUEST_URI'];
switch ($url) {
    case '/php/du_an1/home':
        file_put_contents(
            '../index.php',
            '
        <?php 
        include_once "./src/init.php";
        $homeController = new homeController();
        '
        );
        header('location: ./');
        break;
    case '/php/du_an1/danhsachnhanvien':
        file_put_contents(
            '../index.php',
            '
        <?php
        include_once "./src/init.php";
        $userController = new userController();
        $userController->index();
        '
        );
        header('location: ./');
        break;
    case '/php/du_an1/hopdong':
        file_put_contents(
            '../index.php',
            '
        <?php
        include_once "./src/init.php";
        $contractController = new contractController();
        $contractController->index();
        '
        );
        header('location: ./');
        break;
    case '/php/du_an1/diemdanh':
        file_put_contents(
            '../index.php',
            '
            <?php
            include_once "./src/init.php";
            if ($_SESSION["isUser"] == "admin") {
                $attendController = new attendController();
                $attendController->index();
            }
            else {
                $userAttendController = new userAttendController();
                $userAttendController->index();
            }
            '
        );
        header('location: ./');
        break;
    case '/php/du_an1/tangca':
        file_put_contents(
            '../index.php',
            '
            <?php
            include_once "./src/init.php";
            $addtimeController = new addtimeController();
            $addtimeController->index();
            '
        );
        header('location: ./');
        break;
    case '/php/du_an1/phongban':
        file_put_contents(
            '../index.php',
            '
                <?php
                include_once "./src/init.php";
                $roomController = new roomController();
                $roomController->index();
                '
        );
        header('location: ./');
        break;
    case '/php/du_an1/khenthuong':
        file_put_contents(
            '../index.php',
            '
                <?php
                include_once "./src/init.php";
                $bonusController = new bonusController();
                $bonusController->index();
                '
        );
        header('location: ./');
        break;
    case '/php/du_an1/chucvu':
        file_put_contents(
            '../index.php',
            '
                <?php
                include_once "./src/init.php";
                $positionController = new positionController();
                $positionController->index();
                '
        );
        header('location: ./');
        break;
    case '/php/du_an1/dangxuat':
        file_put_contents(
            '../index.php',
            '
            <?php
            include_once "./src/init.php";
            $loginController = new loginController();
            $loginController->logout();

            '
        );
        header('location: ./');
        break;
    case '/php/du_an1/quenmatkhau':
        file_put_contents(
            '../index.php',
            '
            <?php
            include_once "./src/init.php";
            include "./src/views/fogot-password.php";
            '
        );
        header('location: ./');
        break;
    case '/php/du_an1/doimatkhau':
        file_put_contents(
            '../index.php',
            '
            <?php
            include_once "./src/init.php";
            $changePwController = new changePwController();
            $changePwController->index();
            '
        );
        header('location: ./');
        break;
    case '/php/du_an1/dangnhap':
        file_put_contents(
            '../index.php',
            '
            <?php
            ob_start(); 
            include "./src/init.php";
            $loginController = new loginController();
            $loginController->index();
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $username = $_POST["username"];
                $pw = $_POST["password"];
                $loginController->login($username, $pw);
            }
            ob_end_flush();
                '
        );
        header('location: ./');
        break;
}
