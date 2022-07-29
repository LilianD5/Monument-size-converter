<?php

require './connect.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Back offcie</title>
</head>
<body>
    <form action="#" method="GET">
        <label for="name">name</label>
        <input type="text" name="name" required>
        <br>
        <br>
        <label for="simple-name">simple name</label>
        <input type="text" name="simple_name" id="" required>
        <br>
        <br>
        <label for="size">taille en mm</label>
        <input type="text" name="size" required>
        <br>
        <br>
        <label for="overview">description</label>
        <br>
        <textarea name="overview" cols="30" rows="10" required></textarea>
        <input type="submit" value="envoyer">
    </form>
</body>
</html>

<?php
if(isset($_GET['name'])){
    $name = $_GET['name'];
    $simple = $_GET['simple_name'];
    $size = $_GET['size'];
    $overview = $_GET['overview'];

    $req = $db->prepare('INSERT INTO `wsbl_monuments`(`wsbl_monument_name`, `wsbl_monument_simple_name`, `wsbl_monument_size`, `wsbl_monument_overview`) VALUES (:nom, :simp, :size, :overview)');

    $req->bindParam('nom', $name, PDO::PARAM_STR);
    $req->bindParam('simp', $simple, PDO::PARAM_STR);
    $req->bindParam('size', $size, PDO::PARAM_INT);
    $req->bindParam('overview', $overview, PDO::PARAM_STR);

    $req->execute();
}

?>