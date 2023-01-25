<?php
class Contract extends Database
{
    public function get()
    {
        $data = mysqli_query($this->conn, "SELECT *
        FROM nhanvien JOIN hopdong ON nhanvien.maNV = hopdong.maNV ");
        return $data;
    }
    public function get_n()
    {
        $data = mysqli_query($this->conn, "SELECT * FROM nhanvien WHERE maNV NOT IN (SELECT maNV FROM hopdong)");
        return $data;
    }
    public function getId($id)
    {
        $result = mysqli_query($this->conn, "SELECT *
        FROM nhanvien JOIN hopdong ON nhanvien.maNV = hopdong.maNV where nhanvien.maNV = '$id'");
        $data  = mysqli_fetch_assoc($result);
        return $data;
    }
    public function deleteId($id)
    {
        mysqli_query($this->conn, "DELETE FROM hopdong where maNV = '$id'");
    }
    public function add($maNV, $maHD, $startDay, $longTime)
    {
        mysqli_query($this->conn, "INSERT INTO hopdong (maHD, maNV, ngaybatdau, thoihan) VALUES ('$maHD', '$maNV', '$startDay','$longTime')");
    }
    public function updateId($maNV, $maHD, $startDay, $longTime)
    {

    }
}
