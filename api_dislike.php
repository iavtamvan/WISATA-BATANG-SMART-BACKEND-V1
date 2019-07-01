<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 6/10/2019
 * Time: 10:00 AM
 */

include 'config.php';

if ($_GET){
    $id_keluhan = $_GET['id_keluhan'];

    $query = mysqli_query($db, "UPDATE wisba_keluhan SET dislike_keluhan=dislike_keluhan + 1 WHERE id_keluhan='$id_keluhan'; ");

    if($query){
        $response["error"] = false;
        $response["error_msg"] = "Disliked";
        echo json_encode($response);
    }
    else{
        $response["error"] = true;
        $response["error_msg"] = "Gagal Disliked";
        echo json_encode($response);
    }
}
else{
    $response["error"] = true;
    $response["error_msg"] = "404 Error";
    echo json_encode($response);
}

?>