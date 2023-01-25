<?php 
class Position extends Database{
    public function get() {
        $data = mysqli_query($this->conn, "SELECT * FROM chucvu");
        return $data;
    }
    public function getid() {
        $data = mysqli_query($this->conn, "SELECT maCV FROM chucvu");
        return $data;
    }
    public function add($maCV, $tenCV) {
        mysqli_query($this->conn, "INSERT INTO chucvu (maCV, tenCV) VAlUES ('$maCV','$tenCV');");
    }
    public function delete($maCV) {
        mysqli_query($this->conn, "DELETE FROM chucvu WHERE maCV = '$maCV'");
    }
}