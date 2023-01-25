<?php 
class Addtime extends Database{
    public function get() {
        $data = mysqli_query($this->conn, "SELECT * FROM chucvu");
        return $data;
    }
    public function add($maCV, $tenCV) {
        $data = mysqli_query($this->conn, "INSERT INTO chucvu (maCV, tenCV) VAlUE ('$maCV','$tenCV');");
    }
    public function update($maCV, $tenCV) {
        $data = mysqli_query($this->conn, "UPDATE chucvu SET maCV = '$maCV', tenCV = '$tenCV' WHERE maCV = '$maCV'");
    }
    public function delete($maCV) {
        $data = mysqli_query($this->conn, "DELETE FROM chucvu WHERE maCV = '$maCV'");
        return $data;
    }
}