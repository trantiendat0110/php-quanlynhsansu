<?php
require './src/views/component/head.php';
?>

<body>
    <main>
        <?php
        require './src/views/component/nav.php';
        ?>
        <section class="float-right w-5/6 admin_content">
            <?php
            require './src/views/component/search-header.php';
            ?>
            <p class="text-xl m-4 p-2 rounded bg-slate-100">Trang chủ</p>
            <div class="content-home">
                <div class="text-center flex justify-between">
                    <a class="transition ease-in-out delay-75 hover:-translate-y-1 hover:scale-110 hover:bg-indigo-400 card text-white text-xl font-medium rounded-xl relative leading-10 pl-2 p-10 m-10 bg-orange-600" href="./tangca">Tăng ca
                        <i class="right-0 bottom-0 m-4 absolute text-4xl opacity-40 fa-solid fa-bars"></i></a>
                    <a class="transition ease-in-out delay-75 hover:-translate-y-1 hover:scale-110 hover:bg-yellow-400 card text-white text-xl font-medium rounded-xl relative leading-10 pl-2 p-10 m-10 bg-green-600" href="./diemdanh">Điểm danh
                        <i class="right-0 bottom-0 m-4 absolute text-4xl opacity-40 fa-brands fa-slack"></i></a>
                    <a class="transition ease-in-out delay-75 hover:-translate-y-1 hover:scale-110 hover:bg-red-400 card text-white text-xl font-medium rounded-xl relative leading-10 pl-2 p-10 m-10 bg-cyan-600" href="./hopdong">Hợp đồng
                        <i class="right-0 bottom-0 m-4 absolute text-4xl opacity-40 fa-solid fa-gift"></i></a>
                    <a class="transition ease-in-out delay-75 hover:-translate-y-1 hover:scale-110 hover:bg-sky-400 card text-white text-xl font-medium rounded-xl relative leading-10 pl-2 p-10 m-10 bg-purple-600" href="./danhsachnhanvien">Nhân viên
                        <i class="right-0 bottom-0 m-4 absolute text-4xl opacity-40 fa-solid fa-magnifying-glass"></i></a>
                </div>
                <p class="bg-slate-300 w-1/6 rounded m-4 p-2">Nhân viên</p>
                <hr class="m-4 border-b-2 border-0 border-slate-400">
                <div class="m-4">
                    <table class="min-w-full leading-normal">
                        <thead>
                            <tr>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Mã Nhân viên
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Tên
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Trạng thái
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Email
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Chức vụ
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Kiểm tra
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            while ($rows = mysqli_fetch_assoc($data)) {
                            ?>
                                <tr>
                                    <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                        <p class="text-gray-900 whitespace-no-wrap"><?php echo $rows['maNV'] ?></p>
                                    </td>
                                    <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                        <div class="flex items-center">
                                            <div class="flex-shrink-0 w-10 h-10">
                                                <img class="w-full h-full rounded-full" src="./assets/img/<?php echo $rows['hinhanh'] ?>" alt="" />
                                            </div>
                                            <div class="ml-3">
                                                <p class="text-gray-900 whitespace-no-wrap">
                                                    <?php echo $rows['hoten'] ?>
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                        <?php if ($rows['trangthai'] == 0) {
                                            echo '<p class="inline text-white p-2 bg-red-600 rounded-full">Không hoạt động</p>';
                                        } else {
                                            echo '<p class="inline text-white p-2 bg-green-600 rounded-full">Đang làm việc</p>';
                                        }
                                        ?>
                                    </td>
                                    <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                        <p class="text-gray-900 whitespace-no-wrap">
                                            <?php echo $rows['email'] ?>
                                        </p>
                                    </td>
                                    <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                        <span class="relative inline-block px-3 py-1 font-semibold text-green-900 leading-tight">
                                            <span aria-hidden class="absolute inset-0 bg-green-200 opacity-50 rounded-full"></span>
                                            <span class="relative"><?php echo $rows['maChucVu'] ?></span>
                                        </span>
                                    </td>
                                    <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                        <form class="inline" action="./chitietnhanvien.php" method="GET">
                                            <input type="text" value="<?php echo $rows['maNV'] ?>" name="maNv" class="hidden">
                                            <button class="text-white bg-green-500 p-2 rounded">Kiểm tra</button>
                                        </form>
                                    </td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </main>
    <div class="text-center loading">
        <img width="" class="block m-auto" src="./assets/img/loading.gif" alt="">
    </div>
</body>
<?php
require './src/views/component/link.php';
?>

</html>