<?php
/**
 * Created by PhpStorm.
 * User: lenovo
 * Date: 5/5/2019
 * Time: 10:01 PM
 */
include 'config.php';


if ($_POST) {

    $id_account = $_POST['id_account'];
    $gambar_keluhan = $_POST['gambar_keluhan'];
    $face_pelaporan_keluhan = $_POST['face_pelaporan_keluhan'];
    $nama_keluhan = $_POST['nama_keluhan'];
    $deskripsi_keluhan = $_POST['deskripsi_keluhan'];
    $jenis_keluhan = $_POST['jenis_keluhan'];
    $lat_keluhan = $_POST['lat_keluhan'];
    $long_keluhan = $_POST['long_keluhan'];

    $sql = "INSERT INTO wisba_keluhan
(id_account, gambar_keluhan, face_pelaporan_keluhan, nama_keluhan, deskripsi_keluhan, jenis_keluhan, lat_keluhan, long_keluhan, status_keluhan)
VALUE ('$id_account', '$gambar_keluhan', '$face_pelaporan_keluhan', '$nama_keluhan', '$deskripsi_keluhan', '$jenis_keluhan', '$lat_keluhan', '$long_keluhan', 'Pending')";

    $query = mysqli_query($db, $sql);
    if ($query){
        $response["error"] = false;
        $response["error_msg"] = "Berhasil, status Pending";
        echo json_encode($response);
    } else{
        $response["error"] = false;
        $response["error_msg"] = "Gagal Mengirim";
        echo json_encode($response);
    }

}
else{
    $response["error"] = true;
    $response["error_msg"] = "404";

    echo json_encode($response);
}

?>