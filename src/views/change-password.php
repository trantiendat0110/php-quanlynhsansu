<?php
require './src/views/component/head.php';
?>

<body>
    <div class="text-center m-20 relative">
        <h1 class="absolute right-60 top-40 p-2 rounded text-red-500 font-medium text-xl">
            <?php
            if (!empty($_SESSION['error_pw'])) {
                echo $_SESSION['error_pw'];
            } ?>
        </h1>
        <h1 class="bg-sky-500 text-white p-2 rounded w-1/2 m-auto">Đổi mật khẩu</h1>
        <form action="./crud.php" class="m-10" method="GET">
            <input type="text" class="hidden" name="changePw" value="changePw">
            <input type="text" class="hidden" name="maNv" value="<?php echo $_SESSION['isUser'] ?>">
            <label for="">Mật khẩu cũ</label>
            <input type="password" value="123123" class="block border bg-slate-100 m-auto mb-10 mt-4 p-2 rounded" name="password_old">
            <label for="">Mật khẩu mới</label>
            <input type="password" class="block border bg-slate-100 m-auto mb-10 mt-4 p-2 rounded" name="password_new">
            <label for="">Xác thực</label>
            <input type="password" class="block border bg-slate-100 m-auto mb-10 mt-4 p-2 rounded" name="password_again">
            <a href="./home" class="bg-green-500 text-white p-2 m-10 rounded w-1/6 m-auto inline">Quay lại</a>
            <button class="bg-green-500 text-white p-2 rounded w-1/6 m-auto inline">Gửi</button>
        </form>
    </div>

</body>
<?php
require './src/views/component/link.php';
?>

</html>