<?php

require './connect.php';

require './sql/select-all-monuments.php';
require './sql/select-all-units.php';
require './sql/select-comparison.php';

require './functions/functions.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./template/style.css">
    <link rel="shortcut icon" href="./template/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>Which size is it ?</title>
</head>

<body>
    <header class="container-fluid pt-3">
        <h1 class="text-center">Bienvenue sur Which Size Is It ?</h1>
        <?php if(isset($_POST['monument']) && isset($_POST['unit'])){ ?>

            <h2 class="text-center fs-3 pt-3">Le convertisseur qui vous donnera la taille de <span><?= $choiceReqResult['wsbl_monument_name'] ?></span> en <span><?= $choiceReqResult['wsbl_unit_name'] ?></span> !</h2>

        <?php } else { ?>

        <h2 class="text-center fs-3 pt-3">Le convertisseur qui vous donnera la taille de <span><?= $monuments[$randomMonumentsIndex]['wsbl_monument_name'] ?></span> en <span><?= $units[$randomUnitsIndex]['wsbl_unit_name'] ?></span> !</h2>

        <?php } ?>
    </header>
    <section class="container-fluid pt-5">
        <form action="" method="POST" class="col-lg-7 col-12 ps-2 pe-2 ps-sm-5 pe-sm-5 mx-auto bg-custom rounded">
            <div class="">
                <label for="monument" class="fs-5 pt-3">Sélectionner le monument dont vous voulez connaître la taille :</label>
                <select name="monument" class="form-select fs-5 mt-1">
                    <option value="" selected disabled hidden class="">-- Choisissez un monument --</option>
                    <?php
                    foreach ($monuments as $monument) {
                    ?>
                        <option value="<?= $monument['wsbl_monument_id'] ?>" class=""><?= $monument['wsbl_monument_name'] ?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
            <div class="">
                <label for="unit" class="fs-5 pt-3">Sélectionner une unité de mesure :</label>
                <select name="unit" class="form-select fs-5 mt-1">
                    <option value="" selected disabled hidden class="">-- Choisissez une unité de mesure --</option>
                    <?php
                    foreach ($units as $unit) {
                    ?>
                        <option value="<?= $unit['wsbl_unit_id'] ?>" class=""><?= $unit['wsbl_unit_name'] ?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
            <input type="submit" value="Calculer" class="btn btn-primary mt-4 mb-4 col-12">
        </form>
    </section>

    <section class="container-fluid pb-5">
        <?php
        if (isset($_POST['monument']) && isset($_POST['unit'])) {
        ?>
            <div>
                <h3 class="text-center fs-2 pt-5 pb-5"><?= $choiceReqResult['wsbl_monument_name'] ?> mesure <?= $finalConversion ?> <?= $choiceReqResult['wsbl_unit_name'] ?> !</h3>
            </div>
            <div class="container-fluid rounded bg-custom">
                <div class="d-xl-flex justify-content-between">
                    <div class="col-xl-6 col-12 pb-5 ps-4 pe-3">
                        <h3 class="pt-3 pb-3 text-center"><?= $choiceReqResult['wsbl_monument_name']?></h3>
                        <div class="d-md-flex justify-content-between">
                        <figure><img src="./template/img/monument/<?= $choiceReqResult['wsbl_monument_img_path'] ?>" alt="" class=""></figure>
                            <p class="col-md-8 col-12 ps-md-3 text-justify"><?= $choiceReqResult['wsbl_monument_overview']?></p>
                        </div>
                    </div>
                    <div class="col-xl-6 col-12 pb-5 ps-3 pe-4 bg-custom">
                        <h3 class="pt-3 pb-3 text-center"><?= $choiceReqResult['wsbl_unit_name']?></h3>
                        <div class="d-md-flex justify-content-between">
                            <figure class="col-md-4 col-12"><img src="./template/img/unit/<?= $choiceReqResult['wsbl_unit_img_path'] ?>" alt="" class=""></figure>
                            <p class="col-md-8 col-12 ps-md-3 text-justify"><?= $choiceReqResult['wsbl_unit_overview']?></p>
                        </div>
                    </div>
                </div>
            </div>
        <?php
        }
        ?>
    </section>

    <p class="position-absolute bottom-0 start-50 translate-middle">Developped by Lilian Diaz - 2022 - Using PHP/Bootstrap/MySQL</p>
</body>

</html>