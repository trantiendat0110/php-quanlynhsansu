<?php 
class roomController {
    public function index() {
        $room = new Room();
        $data = $room->get();
        require_once './src/views/room.php';
    }
    public function add($maPB, $tenPB) {
        $room = new Room();
        $room->add($maPB, $tenPB);
        header('location: ./phongban');
    }
    public function delete($maPB) {
        $room = new Room();
        if ($room->delete($maPB) == false) {
            // lỗi
            $_SESSION['error'] = 'Tồn tại nhân viên ở phòng ban';
            // view
            header('location: ./phongban');
        }
        else {
            $_SESSION['error'] = '';
            header('location: ./phongban');
        }
    }
}