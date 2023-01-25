<form class="inline" action="./checkdiemdanh.php" method="GET">
    <input type="text" value="<?php echo $data['maNV'] ?>" class="hidden" name="maNv">
    <input type="text" class="hidden" name="attend" value="attend">
    <input type="text" class="hidden start_time" name="start_time" value="">
    <button type="submit" id="" class="btn_attend bg-green-500 text-white p-2 rounded disabled:opacity-50">Có mặt</button>
</form>
<form class="inline" action="./checkdiemdanh.php" method="GET">
    <input type="text" class="hidden" name="un_attend" value="un_attend">
    <input type="text" value="<?php echo $data['maNV'] ?>" class="hidden" name="maNv">
    <button type="submit" id="" class="btn_attend bg-red-500 text-white p-2 rounded disabled:opacity-50">Vắng</button>
</form>