<?php 
class homeController{
    public function __construct()
    {
        if (!empty($_SESSION['isUser'])) {
            $User = new User();
            $data = $User->get();
            include_once './src/views/home.php';
        }
        else {
            header('location: ./dangnhap');
        }
    }
}
