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
            <p class="text-xl m-4 p-2 rounded bg-slate-100">Thêm hợp đồng</p>
            <div class="content-home">
                <div class="mt-10 form_hd_user w-2/5 m-auto">
                    <div class="">
                        <div class="mt-5 md:col-span-2 md:mt-0">
                            <form action="./crud.php" method="POST" class="relative">
                                <input type="text" class="hidden" name="add_contract" value="<?php echo $maNV ?>">
                                <div class="overflow-hidden">
                                    <div class="bg-slate-100 px-4 py-5 sm:p-6  rounded">
                                        <div class="grid grid-cols-6 gap-6 relative">
                                            <div class="col-span-6">
                                                <label for="startDay" class="block text-sm font-medium text-gray-700">Ngày bắt đầu</label>
                                                <input type="date" name="startDay" id="startDay" autocomplete="startDay" class="mt-1 block w-full p-2 border rounded-md border-0 border-b-2 border-slate-600 focus:border-indigo-500">
                                            </div>
                                            <div class="col-span-6">
                                                <label for="longTime" class="block text-sm font-medium text-gray-700">Thời hạn</label>
                                                <select class="px-10 p-2 " name="longTime">
                                                    <option value="1">
                                                        1 năm
                                                    </option>
                                                    <option value="3">
                                                        3 năm
                                                    </option>
                                                    <option value="5">
                                                        5 năm
                                                    </option>
                                                    <option value="10">
                                                        10 năm
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bg-gray-50 px-4 py-3 text-right sm:px-6">
                                        <button type="submit" class="inline-flex justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white border-0 border-b-2 border-slate-600-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">Thêm</button>
                                    </div>
                                </div>
                            </form>
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