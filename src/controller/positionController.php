<?php 
class positionController {
    public function index() {
        $Position = new Position();
        $data = $Position->get();
        require_once './src/views/position.php';
    }
    public function add($maCV, $tenCV) {
        $Position = new Position();
        $Position->add($maCV, $tenCV);
        header('location: ./chucvu');
    }
    public function delete($maCV) {
        $Position = new Position();
        $Position->delete($maCV);
        header('location: ./chucvu');
    }
}