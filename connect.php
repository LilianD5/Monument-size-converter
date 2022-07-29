<?php
// DB Connection
try {
    return $db = new PDO("mysql:host=localhost;dbname=wsbl_converter;charset=utf8", 'root', '');
    // print 'Success';
} catch (Exception $e) {
    print 'Error : ' . $e -> getMessage();
die();
}