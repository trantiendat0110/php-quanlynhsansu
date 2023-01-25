<?php 
class Room extends Database{
    public function get() {
        $data = mysqli_query($this->conn, "SELECT * FROM phongban");
        return $data;
    }
    public function getid() {
        $data = mysqli_query($this->conn, "SELECT maPB FROM phongban");
        return $data;
    }
    public function add($maPB, $tenPB) {
        mysqli_query($this->conn, "INSERT INTO phongban (maPB, tenPB) VAlUES ('$maPB','$tenPB');");
    }
    public function delete($maPB) {
        mysqli_query($this->conn, "DELETE FROM phongban WHERE phongban.maPB = '$maPB'");
        if (!mysqli_error($this->conn)) {
            return true;
        }
        else {
            return false;
        }
    }
}