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
            <div class="content-home bg_user ">
                <div class="flex text-green-900 font-medium">
                    <p class="border border-slate-400 rounded border-0 border-r-4 border-b-4 m-4 p-2">Chi tiết nhân viên</p>
                </div>
                <hr class="m-4 border-b-2 border-0 border-slate-400">
                <div class="m-4 flex">
                    <div class="w-1/3 text-center">
                        <img  class="m-auto" src="./assets/img/<?php echo $data['hinhanh']?>" alt="">
                        <p class="mt-4 font-medium text-xl"><?php echo $data['hoten'] ?></p>
                        <p class="mt-4">t<?php echo $data['email'] ?></p>
                        <form action="./crud.php" method="GET">
                            <input type="text" class="hidden" name="delete_user" value="<?php echo $data['maNV']?>">
                            <button class="disabled disabled:opacity-50 rounded p-2 m-2 mt-4 bg-red-400 text-white" type="submit">Xoá</button>
                        </form>
                    </div>
                    <div class="w-2/3">
                        <form action="./crud.php" method="POST" class="">
                            <input type="text" class="hidden" name="update_user" value="<?php echo $data['maNV'] ?>">
                            <div class="overflow-hidden">
                                <div class="bg-slate-100 px-4 py-5 sm:p-6  rounded">
                                    <div class="grid grid-cols-6 gap-6 relative">
                                        <div class="col-span-2">
                                            <label for="fullName" class="block text-sm font-medium text-gray-700">Họ tên</label>
                                            <input type="text" name="fullName" id="fullName"  value="<?php echo $data['hoten'] ?>" autocomplete="given-name" class="mt-1 block w-full p-2 border rounded-md shadow focus:border-indigo-500">
                                        </div>

                                        <div class="col-span-2">
                                            <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                                            <input type="email" name="email" id="email" value="<?php echo $data['email'] ?>" autocomplete="email" class="mt-1 block w-full p-2 border rounded-md shadow focus:border-indigo-500">
                                        </div>
                                        <div class="col-span-2">
                                            <label for="address" class="block text-sm font-medium text-gray-700">Địa chỉ</label>
                                            <input type="text" value="<?php echo $data['diachi'] ?>" name="address" id="address" autocomplete="address-level1" class="mt-1 block w-full p-2 border rounded-md shadow focus:border-indigo-500">
                                        </div>
                                        <div class="col-span-2">
                                            <label for="maKT" class="block text-sm font-medium text-gray-700">Mã khen thưởng</label>
                                            <select id="maKT" name="maKT" autocomplete="maKT-name" class="mt-1 disabled block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500">
                                                <option><?php echo $data['maKT']?></option>
                                                <option>KT1</option>
                                                <option>KT2</option>
                                                <option>KT3</option>
                                            </select>
                                        </div>
                                        <div class="col-span-2">
                                            <label for="maPB" class="block text-sm font-medium text-gray-700">Mã phòng ban</label>
                                            <select id="maPB" name="maPB" autocomplete="maPB-name" class="disabled mt-1 disabled block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500">
                                                <option><?php echo $data['maPhongBan']?></option>
                                                <option>PCNTT</option>
                                                <option>PGD</option>
                                                <option>PKT</option>
                                                <option>PMKT</option>
                                            </select>
                                        </div>
                                        <div class="col-span-2">
                                            <label for="maCV" class="block text-sm font-medium text-gray-700">Mã chức vụ</label>
                                            <select id="maCV" name="maCV" autocomplete="maCV-name" class="mt-1 disabled block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500">
                                                <option><?php echo $data['maChucVu']?></option>
                                                <option>Admin</option>
                                                <option>NV</option>
                                                <option>TP</option>
                                            </select>
                                        </div>

                                        <div class="col-span-3">
                                            <label for="img" class="block text-sm font-medium text-gray-700">Hình ảnh</label>
                                            <input type="file" name="img" id="img" autocomplete="family-name" class="mt-1 block w-full p-2 border rounded-md shadow focus:border-indigo-500">
                                        </div>

                                        <div class="col-span-1">
                                            <label for="gender" class="block text-sm font-medium text-gray-700">Giới tính</label>
                                            <select id="gender" name="gender" autocomplete="gender-name" class="mt-1 block w-full rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500">
                                                <option value="0">Nam</option>
                                                <option value="1">Nữ</option>
                                            </select>
                                        </div>

                                        <div class="col-span-2">
                                            <label for="salary" class="block text-sm font-medium text-gray-700">Mức lương (vnd)</label>
                                            <input type="text" value="<?php echo $data['luong']?>" name="salary" id="salary" autocomplete="salary" class="mt-1 disabled block w-full p-2 border rounded-md shadow focus:border-indigo-500">
                                        </div>
                                    </div>
                                </div>
                                <div class="bg-gray-50 px-4 py-3 text-right sm:px-6">
                                    <button type="submit" class="inline-flex justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">Cập nhật</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div></div>
                </div>
            </div>
        </section>
    </main>
</body>
<?php
require './src/views/component/link.php';
?>

</html>