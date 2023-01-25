<header class="bg-slate-100 drop-shadow-sm flex justify-between w-full">
    <form action="./timkiemnhanvien.php" method="GET">
        <input type="text" name="search" class="p-2 pr-40 bg-slate-200 text-slate-700 rounded m-2 ml-8" placeholder="Tìm kiếm">
        <button type="submit"><i class="p-2 rounded-full bg-slate-400 fa-solid fa-magnifying-glass"></i></button>
    </form>
    <div class="profile mr-10 relative">
        <?php 
            $User = new User();
            $dataUserId = $User->getId($_SESSION['isUser']);
        ?>
        <form class="flex m-2 cursor-pointer" action="./chitietnhanvien.php" method="GET">
            <input type="text" class="hidden" name="maNv" value="<?php echo $_SESSION['isUser'] ?>">
            <img class="m-auto" width="33%" src="./assets/img/<?php echo $dataUserId['hinhanh'] ?>" alt="">
            <button class="m-auto"><?php echo $dataUserId['hoten'] ?></button>
        </form>
    </div>
</header>
