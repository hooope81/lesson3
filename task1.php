<?php
$arr1 = range(1, 10);
$arr2 = range(11, 20);
$arrNew = [];

foreach ($arr1 as $key => $item) {
    $value = $item * $arr2[$key];
    $arrNew[] = $value;
}

print_r($arrNew);