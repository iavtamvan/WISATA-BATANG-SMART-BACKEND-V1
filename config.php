<?php

$server = "10.169.250.7";
$user = "app_admin";
$password = "kwh2xxbtE0";
$nama_database = "app_admin";

$db = mysqli_connect($server, $user, $password, $nama_database);

if( !$db ){
    die("Gagal terhubung dengan database: " . mysqli_connect_error());
}

?>	