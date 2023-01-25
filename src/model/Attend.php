<?php
class Attend extends Database
{
    public function count_unAttend($id)
    {
        $result = mysqli_query($this->conn, "SELECT COUNT(maNv) as unAttend
        FROM diemdanh where maNv = '$id' and trangthai = 0");
        $data = mysqli_fetch_array($result);
        return $data['unAttend'];  
    }
    public function add($maDD, $maNV, $date, $status,$start_time)
    {
        mysqli_query($this->conn, "INSERT INTO diemdanh (maDD, maNv, ngay, trangthai, giovao) VALUES ('$maDD', '$maNV', '$date', '$status', '$start_time')");
    }
    public function check_out($maDD, $end_time)
    {
        mysqli_query($this->conn, "UPDATE diemdanh
        SET diemdanh.giora = '$end_time' where maDD = '$maDD'");
    }
    public function deleteId($id) {
        mysqli_query($this->conn, "DELETE From diemdanh where maNv = '$id'");
    }
    public function getId($maNv)
    {
        $data  = mysqli_query($this->conn, "SELECT * FROM diemdanh where maNV = '$maNv'");
        return $data;
    }
    public function getTopId($id)
    {
        $data  = mysqli_query($this->conn, "SELECT maDD FROM diemdanh where id = '$id'");
        $result  = mysqli_fetch_assoc($data);
        return $result['maDD'];
    }
    public function getNowId($maNV)
    {
       $data =  mysqli_query($this->conn, "SELECT id FROM diemdanh  WHERE maNv = '$maNV' ORDER BY id DESC LIMIT 1;");
       $result = mysqli_fetch_assoc($data);
       return  $result['id'];

    }
}