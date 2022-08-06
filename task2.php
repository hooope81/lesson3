<?php
$numbers = [4, 5, 1, 4, 7, 8, 15, 6, 71, 45, 2];

function analysisArr (array $arr) : array
{
    return [
        "max" => max($arr),
        "min" => min($arr),
        "avg" => array_sum($arr) / count($arr)
    ];
}

print_r(analysisArr($numbers));