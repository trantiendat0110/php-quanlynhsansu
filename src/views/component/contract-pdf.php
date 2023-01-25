<?php
require './src/views/component/head.php';
?>

<body>
    <main>
        <section class="">
            <div class="content-home bg_user">
                <div class="">
                    <h1 style="align-items: center;" class="">Chi tiết hợp đồng</h1>
                </div>
                <hr class="">
                <div class="">
                    <div class="">
                        <p class="">Thông tin nhân viên</p>
                        <div class="">
                            <p class="">Mã nhân viên : <i class=""><?php echo $data['maNV'] ?></i></p>
                            <hr>
                            <p class="">Tên nhân viên : <i class=""><?php echo $data['hoten'] ?></i></p>
                            <hr>
                            <p class="">Địa chỉ nhân viên : <i class=""><?php echo $data['diachi'] ?></i></p>
                            <hr>
                            <p class="">Email nhân viên : <i class=""><?php echo $data['email'] ?></i></p>
                        </div>
                    </div>
                    <div class="">
                        <p class="">Thông tin hợp đồng</p>
                        <div class="">
                            <p class="">Mã hợp đồng : <i class=""><?php echo $data['maHD'] ?></i></p>
                            <hr>
                            <p class="">Ngày ký hợp đồng : <i class=""><?php echo $data['ngaybatdau'] ?></i></p>
                            <hr>
                            <p class="">Ngày kết thúc hợp đồng : <i class=""><?php echo $data['ngayketthuc'] ?></i></p>
                            <hr>
                            <p class="">Thời hạn hợp đồng : <i class=""><?php echo $data['thoihan'].' Năm' ?></i></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</body>
<?php
require './src/views/component/link.php';
?>

</html>