<?php
class userController
{
    public function index()
    {
        $User = new User();
        $Bonus = new Bonus();
        $Room = new Room();
        $Position = new Position();
        $data = $User->get();
        $maKTs = $Bonus->getid();
        $maCVs = $Position->getid();
        $maPBs = $Room->getid();
        include_once './src/views/user.php';
    }
    public function update($id ,$fullName, $img, $salary,$address, $email, $gender, $maKT, $maPB, $maCv)
    {
        $User = new User();
        $User->updateId($id ,$fullName, $img, $salary,$address, $email, $gender, $maKT, $maPB, $maCv);
        header('location: ./danhsachnhanvien');
    }
    public function add($id ,$fullName, $img, $salary, $address, $email, $gender, $maKT, $maPB, $maCv)
    {
        $User = new User();
        $User->add($id ,$fullName, $img, $salary, $address, $email, $gender, $maKT, $maPB, $maCv);
        header('location: ./danhsachnhanvien');
    }
    public function delete($id)
    {
        $User = new User();
        $Contract = new Contract();
        $Attend = new Attend();
        $Contract->deleteId($id);
        $Attend->deleteId($id);
        $User->deleteId($id);
        header('location: ./danhsachnhanvien');
    }
    public function user_detail($id) {
        $User = new User();
        $data = $User->getId($id);
        include_once './src/views/user-detail.php';
    }
    public function search($value) {
        $User = new User();
        $data = $User->search($value);
        include_once './src/views/user.php';
    }
    public function update_password_email($email, $newPw) {
        $User = new User();
        $result = $User->getEmail();
        while($data = mysqli_fetch_assoc($result)) {
            if ($data['email'] == $email) {
                $User->update_password_email($email, $newPw);
            }
        }
    }
    public function update_password($email, $newPw) {
        $User = new User();
        
    }

}
