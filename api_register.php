<?php
/**
 * Created by PhpStorm.
 * User: iav
 * Date: 8/27/18
 * Time: 12:21 PM
 */

include("config.php");
if ($_POST) {

    $nama_account = $_POST['nama_account'];
    $email_account = $_POST['email_account'];
    $no_hp_account = $_POST['no_hp_account'];
//    $nik_account = $_POST['nik_account'];
//    $alamat_account = $_POST['alamat_account'];
//    $agama_account = $_POST['agama_account'];
//    $jabatan_account = $_POST['jabatan_account'];
//    $kota_account = $_POST['kota_account'];
//    $kab_account = $_POST['kab_account'];
    $foto_front_account = $_POST['foto_front_account'];
    $foto_back_account = $_POST['foto_back_account'];
    $ttd_account = $_POST['ttd_account'];
    $lat_account = $_POST['lat_account'];
    $long_account = $_POST['long_account'];
    $username = $_POST['username'];
    $password = $_POST['password'];
//    $status_account = $_POST['status_account'];


    $sql = "INSERT INTO wisba_account(nama_account, email_account, no_hp_account, foto_front_account, foto_back_account, ttd_account, lat_account, long_account, username, password, status_account) 
VALUE ('$nama_account', '$email_account', '$no_hp_account', '$foto_front_account', '$foto_back_account', '$ttd_account', '$lat_account', '$long_account', '$username', '$password', 'Umum')";

//    $sql = "INSERT INTO apps_user
//    (nama_lengkap, email, tempat_tgl_lahir, alamat, kota_kab, provinsi, no_hp, jenis_kelamin, agama, username, password, foto_url, rule, status_verifikasi, token, lat, lng, status_aplikasi, token_firebase)
//    VALUE
//    ('$nama_lengkap', '$email', '$tempat_tgl_lahir', '$alamat','$kota_kab', '$provinsi','$no_hp', '$jenis_kelamin', '$agama', '$username', '$password', '$foto_url', '$rule', '$status_verifikasi', '$token', '$lat', '$lng', '$status_aplikasi', '$token_firebase')";
    $query = mysqli_query($db, $sql);

    // apakah query simpan berhasil?
    if ($query) {
        // kalau berhasil alihkan ke halaman index.php dengan status=sukses
//         header('Location: ../pages/login.html');
        $response["error"] = false;
        $response["error_msg"] = "Register Sukses";
        echo json_encode($response);
    } else {
        // kalau gagal alihkan ke halaman indek.php dengan status=gagal
//         header('Location: ../pages/examples/404.html');
        $response["error"] = true;
        $response["error_msg"] = "Register Gagal, username / email telah dipakai : ".$query;

        echo json_encode($response);

    }
} else {
        $response["error"] = true;
        $response["error_msg"] = "404";

        echo json_encode($response);
}
?>