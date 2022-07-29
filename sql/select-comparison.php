<?php

require './connect.php';

// Select the monument and units measurement chosen

if(isset($_POST['monument']) && isset($_POST['unit'])){
    $id_monument = $_POST['monument'];
    $id_unit = $_POST['unit'];

    $req = $db->prepare("SELECT `wsbl_unit_id`, `wsbl_unit_name`, `wsbl_unit_simple_name`, `wsbl_unit_value`, `wsbl_unit_overview`, `wsbl_unit_img_path`, `wsbl_monument_id`, `wsbl_monument_name`, `wsbl_monument_simple_name`, `wsbl_monument_size`, `wsbl_monument_overview`, `wsbl_monument_img_path` FROM `wsbl_units` INNER JOIN `wsbl_monuments` WHERE `wsbl_unit_id` = :id_unit AND `wsbl_monument_id` = :id_monument");

    $req->bindParam('id_monument', $id_monument, PDO::PARAM_INT);
    $req->bindParam('id_unit', $id_unit, PDO::PARAM_INT);

    $req->execute();

    $choiceReqResult = $req->fetch(PDO::FETCH_ASSOC);
}

