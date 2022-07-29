<?php
    require './sql/select-all-monuments.php';
    require './sql/select-all-units.php';
    require './sql/select-comparison.php';

    // Functions 

    // Random monument and unit selection for slogan

    // Random number

    function randomNumber($min, $max){
        $random_number = rand($min, $max);
        return $random_number;
    }

    // Random selection

    function randomSelection($array){
        $arrayLength = count($array);
        $randomArrayIndex = randomNumber(0, $arrayLength - 1);

        return $randomArrayIndex;
    }

    $randomUnitsIndex = randomSelection($units);
    $randomMonumentsIndex = randomSelection($monuments);

    // Converter

    if(isset($_POST['monument']) && isset($_POST['unit'])){
        function calcul($objectSize, $unitValue){
            $size = $objectSize / $unitValue;
            return $size;
        }

        function formatNumber($number, $nbAfterComa){
            $formatedNumber = number_format($number, $nbAfterComa);
            return $formatedNumber;
        }

        function converter($req, $nbAfterComa){
            $objectSize = $req['wsbl_monument_size'];
            $unitValue = $req['wsbl_unit_value'];

            $convertedSize = calcul($objectSize, $unitValue);

            $formatedConvertedSize = number_format($convertedSize, $nbAfterComa);

            return $formatedConvertedSize;
        }
        
        $finalConversion = converter($choiceReqResult, 2);
        // var_dump($finalConversion);
    }

?>