<?php 

class userAttendController {
    public function index () {
        $User = new User();
        $data = $User->getId($_SESSION['isUser']);
        require_once './src/views/user-attend.php';
    }
}