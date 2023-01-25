<?php 
class addtimeController {
    public function index() {
        $User = new User();
        $data = $User->get();
        require_once './src/views/addtime.php';
    }   
} 