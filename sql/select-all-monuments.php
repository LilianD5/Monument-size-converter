<?php

require './connect.php';

// Select all monuments in DB

$req = $db->query("SELECT `wsbl_monument_id`, `wsbl_monument_name`, `wsbl_monument_simple_name`, `wsbl_monument_size`, `wsbl_monument_overview` FROM `wsbl_monuments` ORDER BY `wsbl_monument_name` ASC");

$monuments = $req->fetchAll(PDO::FETCH_ASSOC);