<?php
class changePwController
{
    public function index()
    {
        require_once './src/views/change-password.php';
    }
    public function change($maNv, $oldPw, $newPw, $againPw)
    {
        $User = new User();
        $data = $User->getId($maNv);
        $oldPassword = $data['password'];
        if ($oldPassword == $oldPw and $newPw !== '' and $againPw !== '' and $oldPw !== '') {
            if ($newPw == $againPw) {
                $User->update_password($maNv, $newPw);
                header('location: ./home');
            } else {
                $_SESSION['error_pw'] = 'Mật khẩu xác thực không đÚng';
                header('location: ./doimatkhau');
            }
        }
        else if($newPw == '' or $againPw == '' or $oldPw == '') {
            $_SESSION['error_pw'] = 'Không để trống các ô';
            header('location: ./doimatkhau');
        }
        else {
            $_SESSION['error_pw'] = 'sai mật khẩu cũ';
            header('location: ./doimatkhau');
        }
    }
}
