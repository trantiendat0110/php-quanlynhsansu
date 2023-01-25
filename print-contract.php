<?php

use Mpdf\Mpdf;

require './src/init.php';
require './vendor/autoload.php';
$mpdf = new Mpdf();
$Contract = new Contract();
$id = $_GET['maNv'];
$data = $Contract->getId($id);
ob_start();
require './src/views/component/contract-pdf.php';
$html  = ob_get_contents();
ob_get_clean();
$mpdf->WriteHTML($html);
$mpdf->Output('hopdong.pdf', 'D');
?>