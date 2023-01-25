<?php 
class Bonus extends Database{
    public function get() {
        $data = mysqli_query($this->conn, "SELECT * FROM khenthuong");
        return $data;
    }
    public function getid() {
        $data = mysqli_query($this->conn, "SELECT maKT FROM khenthuong");
        return $data;
    }
    public function add($maKT, $sotien) {
        mysqli_query($this->conn, "INSERT INTO khenthuong (maKT, sotien) VAlUES ('$maKT','$sotien');");
    }
    public function delete($maKT) {
        mysqli_query($this->conn, "DELETE FROM khenthuong WHERE khenthuong.maKT = '$maKT'");
    }
}