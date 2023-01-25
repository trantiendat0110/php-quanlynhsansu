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
            <div class="content m-4">
                <h3 class="p-2 bg-slate-100 rounded">QUẢN LÝ KHEN THƯỞNG</h3>
                <div class="flex justify-around p-4">
                    <div class="text-center border border-0 w-full border-r-2 border-red-slate-300">
                        <h1 class="font-medium m-4">Danh sách khen thưởng</h1>
                        <hr class="w-1/2 m-auto">
                        <table class="leading-normal w-3/4 m-auto mt-10 border">
                            <thead>
                                <tr>
                                    <th class="text-center px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                        Mã khen thưởng
                                    </th>
                                    <th class="text-center px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                        Tên khen thưởng
                                    </th>
                                    <th class="text-center px-5 py-3 border-b-2 border-gray-200 bg-gray-100 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                                        Edit
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                while ($rows = mysqli_fetch_assoc($data)) {
                                ?>
                                    <tr>
                                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                            <p class="text-gray-900 whitespace-no-wrap"><?php echo $rows['maKT'] ?></p>
                                        </td>
                                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                            <p class="text-gray-900 whitespace-no-wrap">
                                                <?php echo $rows['sotien'] ?>
                                            </p>
                                        </td>
                                        <td class="px-5 py-5 border-b border-gray-200 bg-white text-sm">
                                            <form class="" action="./crud.php" method="get">
                                                <input type="text" class="hidden" name="delete-bonus" value="delete-bonus">
                                                <input name="maKT" value="<?php echo $rows['maKT'] ?>" class="hidden" type="text">
                                                <button class="bg-red-500 text-white p-2 rounded" type="submit">Xoá</button>
                                            </form>
                                        </td>

                                    </tr>
                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                    <div class="text-center w-full ">
                        <h1 class="font-medium m-4">Thêm khen thưởng</h1>
                        <hr class="w-1/2 m-auto">
                        <form class="mt-10" action="./crud.php" method="get">
                            <label for="">Mã khen thưởng</label>
                            <input type="text" class="hidden" name="add-bonus" value="add-bonus">
                            <input name="maKT" class="block bg-slate-200 shadow rounded p-2 m-auto mb-10 mt-2" type="text">
                            <label for="">Số tiền</label>
                            <input name="sotien" class="block bg-slate-200 shadow rounded p-2 m-auto mb-10 mt-2" type="text">
                            <button class="bg-sky-500 text-white p-2 rounded" type="submit">Thêm</button>
                        </form>

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