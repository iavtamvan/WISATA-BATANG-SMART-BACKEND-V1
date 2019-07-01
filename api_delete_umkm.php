<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 7/1/2019
 * Time: 11:13 AM
 */
include 'config.php';


if ($_POST) {

    $id_umkm= $_POST['id_umkm'];

    $sql = mysqli_query($db, "DELETE FROM wisba_umkm WHERE id_umkm='$id_umkm'");
    if ($sql){
        $response["error"] = false;
        $response["error_msg"] = "Berhasil, DiHapus";
        echo json_encode($response);
    } else{
        $response["error"] = false;
        $response["error_msg"] = "Gagal Dihapus";
        echo json_encode($response);
    }

}
else{
    $response["error"] = true;
    $response["error_msg"] = "404";

    echo json_encode($response);
}
?>