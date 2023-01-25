<?php 
class bonusController {
    public function index() {
        $Bonus = new Bonus();
        $data = $Bonus->get();
        require_once './src/views/bonus.php';
    }
    public function add($maKT, $sotien) {
        $Bonus = new Bonus();
        $Bonus->add($maKT, $sotien);
        header('location: ./khenthuong');
    }
    public function delete($maKT) {
        $Bonus = new Bonus();
        $Bonus->delete($maKT);
        header('location: ./khenthuong');
    }
}