<?php
class attendController
{
    public function index()
    {
        $User = new User();
        $data = $User->get();
        require_once './src/views/attend.php';
    }
    public function save_attend($maDD, $maNV, $date, $status,$start_time)
    {
        $Attend = new Attend();
        $User = new User();
        $User->update_status($maNV, $status);
        $Attend->add($maDD, $maNV, $date, $status, $start_time);
        header('location: ./diemdanh');
    }
    public function check_out($maDD, $maNV, $status, $start_time)
    {
        $Attend = new Attend();
        $User = new User();
        $User->update_status($maNV, $status);
        $Attend->check_out($maDD, $start_time);
        header('location: ./diemdanh');
    }
    public function count_unAttend($id)
    {
        $Attend = new Attend();
        $data = $Attend->count_unAttend($id);
        return $data;
    }
    public function attend_detail($id)
    {
        $Attend = new Attend();
        $data = $Attend->getId($id);
        require './src/views/attend-detail.php';
        return $data;
    }
}
