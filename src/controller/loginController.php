<?php
class loginController
{
    public function index()
    {
        include_once './src/views/login.php';
    }
    public function login($username, $pw)
    {
        $User = new User();
        $data = $User->getUsername();
        while ($rows = mysqli_fetch_assoc($data)) {
            if ($rows['maNv'] == 'admin') {
                $password = $User->getPasswordId($rows['maNv']);
                if ($pw == $password && $rows['maNv'] == $username) {
                    $_SESSION['isUser'] = 'admin';
                    header('location: ./home');
                    exit();
                }
                else {
                    $_SESSION['error'] = 'Sai tài khoản hoặc mật khẩu';
                    header('location: ./dangnhap');
                }
            }
            if (!empty($rows['maNv'])) {
                $password = $User->getPasswordId($rows['maNv']);
                if ($pw == $password && $rows['maNv'] == $username) {
                    $_SESSION['isUser'] = $rows['maNv'];
                    header('location: ./home');
                    exit();
                }
                else {
                    $_SESSION['error'] = 'Sai tài khoản hoặc mật khẩu';
                    header('location: ./dangnhap');
                }
            }
            
        }
    }
    public function logout()
    {
        session_destroy();
        header('location: ./dangnhap');
    }
}
