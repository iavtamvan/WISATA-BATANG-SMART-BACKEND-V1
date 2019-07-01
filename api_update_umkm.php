<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 7/1/2019
 * Time: 10:39 AM
 */
include 'config.php';


if ($_POST) {

    $id_umkm= $_POST['id_umkm'];
//    $id_account= $_POST['id_account'];
//    $registered= $_POST['registered'];
    $nama_umkm= $_POST['nama_umkm'];
    $gambar_thumbnail_umkm= $_POST['gambar_thumbnail_umkm'];
    $alamat_umkm= $_POST['alamat_umkm'];
//    $jarak_umkm= $_POST['jarak_umkm'];
    $lat_umkm= $_POST['lat_umkm'];
    $long_umkm= $_POST['long_umkm'];
//    $gambar_1_umkm= $_POST['gambar_1_umkm'];
//    $gambar_2_umkm= $_POST['gambar_2_umkm'];
    $detail_deskripsi_umkm= $_POST['detail_deskripsi_umkm'];
//    $like_umkm= $_POST['like_umkm'];
//    $dislike_umkm= $_POST['dislike_umkm'];
//    $kategori_umkm= $_POST['kategori_umkm'];
//    $status_umkm= $_POST['status_umkm'];
    $sql = mysqli_query($db, "UPDATE wisba_umkm SET nama_umkm='$nama_umkm', gambar_thumbnail_umkm='$gambar_thumbnail_umkm', 
alamat_umkm='$alamat_umkm', lat_umkm='$lat_umkm', long_umkm='$long_umkm', detail_deskripsi_umkm='$detail_deskripsi_umkm' WHERE id_umkm='$id_umkm'");

    if ($sql){
        $response["error"] = false;
        $response["error_msg"] = "Berhasil, DiUpdate";
        echo json_encode($response);
    } else{
        $response["error"] = false;
        $response["error_msg"] = "Gagal DiUpdate";
        echo json_encode($response);
    }

}
else{
    $response["error"] = true;
    $response["error_msg"] = "404";

    echo json_encode($response);
}