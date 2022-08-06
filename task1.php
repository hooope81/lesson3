<?php
$arr = [4, 5, 1, 4, 7, 8, 15, 6, 71, 45, 2];

$newArr = array_map(
    function ($item) {
        return $item % 2 ? "нечетное" : "четное";
    },
    $arr
);

print_r($newArr);