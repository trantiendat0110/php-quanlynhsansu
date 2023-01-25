<form class="inline" action="./checkdiemdanh.php" method="GET">
    <input type="text" value="<?php echo $data['maNV'] ?>" class="hidden" name="maNv">
    <input type="text" class="hidden start_time" name="end_time" value="">
    <input type="text" value="checkout" class="hidden" name="checkout">
    <button type="submit" id="" class="btn_attend bg-red-500 text-white p-2 rounded disabled:opacity-50">Check out</button>
</form>