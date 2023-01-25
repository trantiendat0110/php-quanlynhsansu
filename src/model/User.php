<?php
class User extends Database
{
    public function get()
    {
        $data = mysqli_query($this->conn, "SELECT * FROM nhanvien");
        return $data;
    }
    public function getEmail()
    {
        $data = mysqli_query($this->conn, "SELECT email FROM nhanvien");
        return $data;
    }
    public function getUsername()
    {
        $data = mysqli_query($this->conn, "SELECT maNv FROM nhanvien");
        return $data;
    }
    public function getPasswordId($id)
    {
        $data = mysqli_query($this->conn, "SELECT password FROM nhanvien where maNv = '$id'");
        $pw = mysqli_fetch_assoc($data);
        return $pw['password'];
    }
    public function getId($id)
    {
        $reusult = mysqli_query($this->conn, "SELECT * FROM nhanvien where maNv = '$id'");
        $data = mysqli_fetch_assoc($reusult);
        return $data;
    }
    public function deleteId($id)
    {
        mysqli_query($this->conn, "DELETE FROM nhanvien where maNv = '$id'");
    }
    public function add($id ,$fullName, $img, $salary, $address, $email, $gender, $maKT, $maPB, $maCv)
    {
        mysqli_query($this->conn, "INSERT INTO `nhanvien` (`maNV`, `password`, `luong`, `hoten`, `hinhanh`, `diachi`, `email`, `gioitinh`, `trangthai`, `maKT`, `maPhongBan`, `maChucVu`) VALUES ('$id', 'dat123', '$salary', '$fullName', '$img', '$address', '$email', '$gender', '1', '$maKT', '$maPB', '$maCv');");
    }
    public function updateId($id ,$fullName, $img, $salary, $address, $email, $gender, $maKT, $maPB, $maCv)
    {
        mysqli_query($this->conn, "UPDATE nhanvien
        SET `maNV` = '$id', `password` = 'dat123', `hoten` = '$fullName', `hinhanh` = '$img', `diachi` = '$address', `email` = '$email', `gioitinh` = $gender, `trangthai` = '',`luong` = '$salary',`maKT` = '$maKT', `maPhongBan` = '$maPB', `maChucVu` = '$maCv' WHERE nhanvien.maNV = '$id'");
    }
    public function update_status($id, $status) {
        mysqli_query($this->conn, "UPDATE nhanvien
        SET trangthai = '$status' where maNv = '$id'");
    }
    public function update_password_email($email, $pw) {
        mysqli_query($this->conn, "UPDATE nhanvien
        SET nhanvien.password = '$pw' where email = '$email'");
    }
    public function update_password($id, $pw) {
        mysqli_query($this->conn, "UPDATE nhanvien
        SET nhanvien.password = '$pw' where maNV = '$id'");
    }

    public function search($value) {
        $data = mysqli_query($this->conn, "SELECT * FROM nhanvien
        WHERE HoTen LIKE '%$value%'
        ");
        return $data;
    }
}
