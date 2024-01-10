<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-AllowHeaders, Authorization, X-Requested-With");
include_once '../../config/database.php';
include_once '../../models/AntrianMcd.php';

$database = new Database();
$db = $database->getConnection();

    $item = new AntrianMcd($db);
   
    $item->generateAntrian();
    if($item->sk_avg != null){
        // create array
        $Data_arr = array(
           "waktu_tunggu" => "Pada entitas antrian yaitu entitas <b> Waktu Tunggu </b> pada kasir MCD Solo Grand Mall memiliki waktu tunggu minimal sebesar " . round($item->sk_min) . "Menit dan waktu tunggu maksimal sebesar ". round($item->sk_max) . " menit dengan rata-rata waktu tunggu sebesar " . date("i:s", $item->sk_avg) . " menit. ", "banyak_antrian" => "Pada entitas antrian yaitu entitas <b> Banyak Antrian </b> (number waiting) pada kasir 1 MCD Solo Grand Mall memiliki jumlah antrian minimal sebanyak " . round($item->sp_min) . "Konsumen dan jumlah antrian maksimal sebanyak " . round($item->sp_max) . " Konsumen dengan rata-rata jumlah antrian sebanyak " . $item->sk_avg . " Konsumen dan jika dibulatkan menjadi " . round($item->sp_avg) . " konsumen",
        );
        
        http_response_code(200);
        echo json_encode($Data_arr);
    }
    else{
        http_response_code(404);
        echo json_encode("Data not found.");
    }

?>
