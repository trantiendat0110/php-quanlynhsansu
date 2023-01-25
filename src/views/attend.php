<?php
require './src/views/component/head.php';
?>

<body>
    <main>
        <?php
        require './src/views/component/nav.php';
        ?>
        <section class="float-right w-5/6 relative">
            <?php
            require './src/views/component/search-header.php';
            ?>
            <div class="content-home bg_user">
                <div class="flex justify-between text-green-900 font-medium">
                    <p class="border border-slate-400 rounded border-0 border-r-4 border-b-4 m-4 p-2">Điểm danh</p>
                </div>
                <hr class="m-4 border-b-2 border-0 border-slate-400">
                <div class="m-10 pb-20">
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
                                    Email
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Chức vụ
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Số buổi vắng (T <?php echo date('m') ?>)
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    *
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
                                    <td class="px-5 py-5 border-b border-gray-200 text-center ">
                                        <p class=" bg-red-200 text-red-600 inline p-2 px-4 rounded-full whitespace-no-wrap">
                                            <?php
                                            $attendController = new attendController();
                                            echo  $attendController->count_unAttend($rows['maNV'])
                                            ?>
                                        </p>
                                    </td>
                                    <td class="py-5 text-center border-b border-gray-200 bg-white text-sm">
                                        <form action="./chitietdiemdanh.php" method="GET">
                                            <input type="text" value="<?php echo $rows['maNV'] ?>" class="hidden" name="maNv">
                                            <button type="text" id="" class="bg-yellow-500 text-white p-2 rounded" value="">Chi tiết</button>
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
</body>
<?php
require './src/views/component/link.php';
?>

</html>