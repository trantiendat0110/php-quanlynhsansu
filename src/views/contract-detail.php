<?php
require './src/views/component/head.php';
?>

<body>
    <main>
        <?php
        require './src/views/component/nav.php';
        ?>
        <section class="float-right w-5/6 relative admin_content">
            <?php
            require './src/views/component/search-header.php';
            ?>
            <div class="content-home bg_user">
                <div class="flex text-green-900 font-medium">
                    <p class="border border-slate-400 rounded border-0 border-r-4 border-b-4 m-4 p-2">Chi tiết hợp đồng</p>
                </div>
                <hr class="m-4 border-b-2 border-0 border-slate-400">
                <div class="m-4 flex justify-between">
                    <div class="border border-r-2 border-slate-400 border-0 w-full h-full">
                        <p class="text-xl font-medium w-1/2 m-auto text-center border border-slate-400 rounded border-0 border-b-4 p-2">Thông tin nhân viên</p>
                        <div class="mt-20 m-2">
                            <p class="m-4">Mã nhân viên : <i class="p-2 text-white bg-sky-600 rounded"><?php echo $data['maNV'] ?></i></p>
                            <hr>
                            <p class="m-4">Tên nhân viên : <i class="p-2 text-white bg-sky-600 rounded"><?php echo $data['hoten'] ?></i></p>
                            <hr>
                            <p class="m-4">Địa chỉ nhân viên : <i class="p-2 text-white bg-sky-600 rounded"><?php echo $data['diachi'] ?></i></p>
                            <hr>
                            <p class="m-4">Email nhân viên : <i class="p-2 text-white bg-sky-600 rounded"><?php echo $data['email'] ?></i></p>
                        </div>
                    </div>
                    <div class="w-full h-full">
                        <p class="text-xl font-medium w-1/2 m-auto text-center border border-slate-400 rounded border-0 border-b-4 p-2">Thông tin hợp đồng</p>
                        <div class="mt-20 m-2">
                            <p class="m-4">Mã hợp đồng : <i class="p-2 text-white bg-green-400 rounded"><?php echo $data['maHD'] ?></i></p>
                            <hr>
                            <p class="m-4">Ngày ký hợp đồng : <i class="p-2 text-white bg-green-400 rounded"><?php echo $data['ngaybatdau'] ?></i></p>
                            <hr>
                            <p class="m-4">Thời hạn hợp đồng : <i class="p-2 text-white bg-green-400 rounded"><?php echo $data['thoihan'].' Năm' ?></i></p>
                            <hr>
                        </div>
                    </div>
                </div>
                <div class="text-center m-20">
                    <form action="./print-contract.php">
                        <input class="hidden" type="text" name="maNv" value="<?php echo $data['maNV']?>">
                        <button class="p-2 bg-green-600 text-white rounded">Xuất file PDF</button>
                    </form>
                </div>
            </div>
        </section>
    </main>
</body>
<?php
require './src/views/component/link.php';
?>

</html>