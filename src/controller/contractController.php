<?php
class contractController
{
    public function index()
    {
        $Contract = new Contract();
        $data1 = $Contract->get();
        $data2 = $Contract->get_n();
        include_once './src/views/contract.php';
    }
    public function form($maNV)
    {
        $maNV;
        include_once './src/views/form-contract.php';
    }
    public function update($id ,$fullName, $img, $salary,$address, $email, $gender, $maKT, $maPB, $maCv)
    {
        $Contract = new Contract();
        $Contract->updateId($id ,$fullName, $img, $salary,$address, $email, $gender, $maKT, $maPB, $maCv);
        header('location: ./danhsachnhanvien');
    }
    public function add($maNV, $maHD, $startDay, $longTime)
    {
        $Contract = new Contract();
        $Contract->add($maNV, $maHD, $startDay, $longTime);
        header('location: ./hopdong');
    }
    public function delete($id)
    {
        $Contract = new Contract();
        $Contract->deleteId($id);
        header('location: ./danhsachnhanvien');
    }
    public function contract_detail($id) {
        $Contract = new Contract();
        $data = $Contract->getId($id);
        include_once './src/views/contract-detail.php';
    }
}
