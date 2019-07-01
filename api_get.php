<?php
/**
 * Created by PhpStorm.
 * User: lenovo
 * Date: 6/9/2019
 * Time: 6:34 PM
 */
include 'config.php';
if ($_POST){
    $changeSwitch = $_POST['pindah'];

    switch ($changeSwitch){
        case "getDataKeluhan" :
            $querryGetKeluhan = mysqli_query($db, "select * from wisba_keluhan where status_keluhan = 'Publikasi'");
            $arrayJSON = array();
            while ($data = mysqli_fetch_assoc($querryGetKeluhan)){
                $arrayJSON[] = $data;
            }
            $responses =$arrayJSON;
            echo json_encode($responses);
            break;
        case "getDataUmkm" :
            $querryGetKeluhan = mysqli_query($db, "select * from wisba_umkm where status_umkm = 'Terverivikasi'");
            $arrayJSON = array();
            while ($data = mysqli_fetch_assoc($querryGetKeluhan)){
                $arrayJSON[] = $data;
            }
            $responses =$arrayJSON;
            echo json_encode($responses);
            break;
    }
}

?>