<nav class="bg-slate-600 w-1/6 navbar fixed h-screen">
    <a href="./home" class="block text-white text-center bg-slate-700 p-2 w-full">
        <i class="fa-solid fa-user"></i>
        <p class="is_user"><?php echo $_SESSION['isUser'] ?></p>
    </a>
    <ul class="text-slate-200 p-4 py-10">
        <li class="link p-2 py-2 m-2"><i class="px-2 fa-solid fa-list"></i><a href="./danhsachnhanvien">Danh sách nhân viên</a></li>
        <hr class="border border-0 border-b-2 border-slate-700">
        <li class="p-2 py-2 m-2"><i class="px-2 fa-solid fa-gauge"></i><a href="./hopdong">Hợp đồng</a></li>
        <hr class="border border-0 border-b-2 border-slate-700">
        <li class="p-2 py-2 m-2"><i class="px-2 fa-solid fa-calendar-days"></i><a href="./diemdanh">Điểm danh</a></li>
        <hr class="border border-0 border-b-2 border-slate-700">
        <li class="p-2 py-2 m-2"><i class="px-2 fa-brands fa-dropbox"></i><a href="./tangca">Tăng ca</a></li>
        <hr class="border border-0 border-b-2 border-slate-700">
        <ul class="m-4 p-2">
            <a href="" class="block p-2 bg-slate-700 rounded">Quản lý</a>
            <li class="p-2 py-2 m-2"><i class="px-2 fa-solid fa-shop"></i><a href="./phongban">Phòng ban</a></li>
            <li class="p-2 py-2 m-2"><i class="px-2 fa-solid fa-gauge"></i><a href="./khenthuong">Khen Thưởng</a></li>
            <li class="p-2 py-2 m-2"><i class="px-2 fa-brands fa-dropbox"></i><a href="./chucvu">Chức vụ</a></li>
        </ul>
    </ul>
    <div class="text-center">
        <a href="./dangxuat" class="bg-sky-600 p-2 m-2 text-white rounded">Đăng xuất</a>
        <a href="./doimatkhau" class="bg-sky-600 p-2 m-2 text-white rounded">Đổi mật khẩu</a>
    </div>

</nav>