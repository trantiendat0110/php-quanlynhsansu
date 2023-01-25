<?php
require './src/views/component/head.php';
?>

<body>
    <main>
        <?php
        require './src/views/component/nav.php';
        ?>
        <section class="float-right w-5/6 relative ">
            <?php
            require './src/views/component/search-header.php';
            ?>
            <div class="mt-10 absolute form_update_user hidden z-10 ">
                <div class="">
                    <div class="mt-5 md:col-span-2 md:mt-0">
                        <form action="./crud.php" method="POST" class="relative">
                            <input type="text" class="hidden" name="add_user" value="add_user">
                            <p class="cursor-pointer bg-red-600 rounded-full text-white absolute right-0 top-0 text-xl m-2 px-2 btn_close_form_add_user">X</p>
                            <div class="overflow-hidden shadow-xl">
                                <div class="bg-slate-100 px-4 py-5 sm:p-6  rounded">
                                    <div class="grid grid-cols-6 gap-6 relative">
                                        <div class="col-span-2">
                                            <label for="fullName" class="block text-sm font-medium text-gray-700">Họ tên</label>
                                            <input type="text" name="fullName" id="fullName" autocomplete="given-name" class="validate mt-1 block w-full p-2 border rounded-md shadow focus:border-indigo-500">
                                        </div>

                                        <div class="col-span-2">
                                            <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                                            <input type="email" name="email" id="email" autocomplete="email" class="validate mt-1 block w-full p-2 border rounded-md shadow focus:border-indigo-500">
                                        </div>
                                        <div class="col-span-2">
                                            <label for="address" class="block text-sm font-medium text-gray-700">Địa chỉ</label>
                                            <input type="text" name="address" id="address" autocomplete="address-level1" class="validate mt-1 block w-full p-2 border rounded-md shadow focus:border-indigo-500">
                                        </div>
                                        <div class="col-span-2">
                                            <label for="maKT" class="block text-sm font-medium text-gray-700">Mã khen thưởng</label>
                                            <select id="maKT" name="maKT" autocomplete="maKT-name" class="validate mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500">
                                                <?php
                                                while ($rows = mysqli_fetch_assoc($maKTs)) {
                                                ?>
                                                    <option><?php echo $rows['maKT'] ?></option>
                                                <?php
                                                }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="col-span-2">
                                            <label for="maPB" class="block text-sm font-medium text-gray-700">Mã phòng ban</label>
                                            <select id="maPB" name="maPB" autocomplete="maPB-name" class="validate mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500">
                                                <?php
                                                while ($rows = mysqli_fetch_assoc($maPBs)) {
                                                ?>
                                                    <option><?php echo $rows['maPB'] ?></option>
                                                <?php
                                                }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="col-span-2">
                                            <label for="maCV" class="block text-sm font-medium text-gray-700">Mã chức vụ</label>
                                            <select id="maCV" name="maCV" autocomplete="maCV-name" class="validate mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500">
                                                <?php
                                                while ($rows = mysqli_fetch_assoc($maCVs)) {
                                                ?>
                                                    <option><?php echo $rows['maCV'] ?></option>
                                                <?php
                                                }
                                                ?>
                                            </select>
                                        </div>

                                        <div class="col-span-3">
                                            <label for="img" class="block text-sm font-medium text-gray-700">Hình ảnh</label>
                                            <input type="file" name="img" id="img" autocomplete="family-name" class="validate mt-1 block w-full p-2 border rounded-md shadow focus:border-indigo-500">
                                        </div>

                                        <div class="col-span-1">
                                            <label for="gender" class="block text-sm font-medium text-gray-700">Giới tính</label>
                                            <select id="gender" name="gender" autocomplete="gender-name" class="validate mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500">
                                                <option>Nam</option>
                                                <option>Nữ</option>
                                            </select>
                                        </div>

                                        <div class="col-span-2">
                                            <label for="salary" class="block text-sm font-medium text-gray-700">Mức lương (vnd)</label>
                                            <input type="text" name="salary" id="salary" autocomplete="salary" class="validate mt-1 block w-full p-2 border rounded-md shadow focus:border-indigo-500">
                                        </div>
                                    </div>
                                </div>
                                <div class="bg-gray-50 px-4 py-3 text-right sm:px-6">
                                    <button type="submit" class="btn_add_user inline-flex justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 disabled:opacity-50" disabled>Thêm</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="content-home bg_user admin_content">
                <div class="flex text-green-900 font-medium">
                    <p class="border border-slate-400 rounded border-0 border-r-4 border-b-4 m-4 p-2">Danh sách nhân viên</p>
                    <button href="" class="disabled:opacity-50 btn_a_user text-white bg-green-500 rounded m-4 p-2 btn_form_add_user">Thêm nhân viên</button>
                </div>
                <hr class="m-4 border-b-2 border-0 border-slate-400">
                <div class="m-4 ">

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
                                    Địa chỉ
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Email
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Lương
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Chức vụ
                                </th>
                                <th class="px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                    Sửa
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
                                        <p class="text-gray-900 whitespace-no-wrap"><?php echo $rows['diachi'] ?></p>
                                    </td>
                                    <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                        <p class="text-gray-900 whitespace-no-wrap">
                                            <?php echo $rows['email'] ?>
                                        </p>
                                    </td>
                                    <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                        <p class="text-gray-900 whitespace-no-wrap">
                                            <?php echo number_format($rows['luong']) . ' đ' ?>
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
                                            <input type="text" value="<?php echo $rows['maNV'] ?>" name="maNv" class="hidden ">
                                            <button class="disabled:opacity-50 text-white bg-orange-500 p-2 rounded btn_u_user">Sửa</button>
                                        </form>
                                        <form class="inline" action="./crud.php" method="GET">
                                            <input type="text" value="<?php echo $rows['maNV'] ?>" name="delete_user" class="hidden ">
                                            <button class="disabled:opacity-50 btn_d_user text-white bg-red-500 p-2 rounded">xoá</button>
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