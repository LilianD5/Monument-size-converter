<?php

require './connect.php';

// Select all units measurement in DB

$req = $db->query("SELECT `wsbl_unit_id`, `wsbl_unit_name`, `wsbl_unit_simple_name`, `wsbl_unit_value`, `wsbl_unit_overview` FROM `wsbl_units`");

$units = $req->fetchAll(PDO::FETCH_ASSOC);