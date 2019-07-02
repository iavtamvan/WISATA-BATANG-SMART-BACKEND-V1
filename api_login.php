<?php
// mengaktifkan session php
//session_start();

// menghubungkan dengan koneksi
include 'config.php';

if ($_POST){
    // menangkap data yang dikirim dari form
//    $kode_veriv_email_account = $_POST['kode_veriv_email_account'];
    $username = $_POST['username'];
    $password = $_POST['password'];

// menyeleksi data admin dengan username dan password yang sesuai
    $data = mysqli_query($db,"select * from wisba_account where username='$username' and password='$password'");
//    $data = mysqli_query($db,"select * from account_dasi where kode_veriv_email_account='$kode_veriv_email_account'");

// menghitung jumlah data yang ditemukan
    $cek = mysqli_num_rows($data);
    $user = mysqli_fetch_assoc($data);

// $id_user = echo $user['id_user'];
    $id_account = "".$user['id_account'];
    $registered = "".$user['registered'];
    $nama_account = "".$user['nama_account'];
    $email_account = "".$user['email_account'];
    $no_hp_account = "".$user['no_hp_account'];
    $nik_account = "".$user['nik_account'];
    $alamat_account = "".$user['alamat_account'];
    $agama_account = "".$user['agama_account'];
    $jabatan_account = "".$user['jabatan_account'];
    $kota_account = "".$user['kota_account'];
    $kab_account = "".$user['kab_account'];
    $foto_front_account = "".$user['foto_front_account'];
    $foto_back_account = "".$user['foto_back_account'];
    $username = "".$user['username'];
    $ttd_account = "".$user['ttd_account'];
    $lat_account = "".$user['lat_account'];
    $long_account = "".$user['long_account'];
    $status_account = "".$user['status_account'];
    if($cek > 0){
        $response["error"] = false;
        $response["error_msg"] = "Login Sukses";
        $response["id_account"] = $id_account;
        $response["registered"] = $registered;
        $response["nama_account"] = $nama_account;
        $response["email_account"] = $email_account;
        $response["no_hp_account"] = $no_hp_account;
        $response["nik_account"] = $nik_account;
        $response["alamat_account"] = $alamat_account;
        $response["agama_account"] = $agama_account;
        $response["jabatan_account"] = $jabatan_account;
        $response["kota_account"] = $kota_account;
        $response["kab_account"] = $kab_account;
        $response["foto_front_account"] = $foto_front_account;
        $response["foto_back_account"] = $foto_back_account;
        $response["ttd_account"] = $ttd_account;
        $response["lat_account"] = $lat_account;
        $response["long_account"] = $long_account;
        $response["status_account"] = $status_account;
        $response["username"] = $username;

        echo json_encode($response);
        // echo "Sukses";
    }else{
        // header("location:index.php?pesan=gagal");
//	    header('Location: ../pages/examples/500.html');
        $response["error"] = true;
        $response["error_msg"] = "Login Gagal";
        echo json_encode($response);
    }
}

else{

    $response["error"] = true;
    $response["error_msg"] = "404";
    echo json_encode($response);
}


?>