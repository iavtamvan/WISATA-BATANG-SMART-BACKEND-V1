<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 7/1/2019
 * Time: 9:40 AM
 */
include 'config.php';


if ($_POST) {

//    $id_umkm= $_POST['id_umkm'];
    $id_account= $_POST['id_account'];
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

//    $sql = "INSERT INTO wisba_umkm
//(id_umkm,id_account,registered,nama_umkm,gambar_thumbnail_umkm,alamat_umkm,jarak_umkm,lat_umkm,long_umkm,gambar_1_umkm,gambar_2_umkm,detail_deskripsi_umkm,like_umkm,dislike_umkm,kategori_umkm,status_umkm)
//VALUE ('$id_umkm','$id_account','$registered','$nama_umkm','$gambar_thumbnail_umkm','$alamat_umkm','$jarak_umkm','$lat_umkm','$long_umkm','$gambar_1_umkm','$gambar_2_umkm','$detail_deskripsi_umkm','$like_umkm','$dislike_umkm','$kategori_umkm','Belum Terverfikasi')";

    $sql ="INSERT INTO wisba_umkm(id_account, nama_umkm, gambar_thumbnail_umkm, alamat_umkm, lat_umkm, long_umkm, detail_deskripsi_umkm, kategori_umkm, status_umkm) VALUE 
          ( '$id_account', '$nama_umkm','$gambar_thumbnail_umkm','$alamat_umkm', '$lat_umkm','$long_umkm','$detail_deskripsi_umkm','Oleh - Oleh','Terverivikasi')";
    $query = mysqli_query($db, $sql);
    if ($query){
        $response["error"] = false;
        $response["error_msg"] = "Berhasil, status Terverivikasi";
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