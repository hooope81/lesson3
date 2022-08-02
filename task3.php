<?php
$students = [
    'ИТ20' => [
        'Иванов Иван' => 5,
        'Кириллов Кирилл' => 3,
        'Смирнова Мария' => 3,
        'Андреев Андрей' => 2,
        'Золин Владилен' => 4,
        'Калинин Агап' => 2
    ],
    'БАП20' => [
        'Антонов Антон' => 4,
        'Ильин Илья' => 3,
        'Архаткина Владислава' => 4,
        'Белорусов Ефрем' => 2,
        'Протасова Майя' => 3,
        'Ябров Тимур' => 5
    ]
];

$result = 0;
$group = '';
foreach ($students as $key => $value) {
    $average = array_sum($value) / count($value);
    if ($result < $average) {
        $result = $average;
        $group = $key;
    }
}
echo "В группе $group самое высокое среднее значение успеваемости ($result)\n";

$arr = [];
foreach ($students as $key => $value) {
    $arr[$key] = [];
    foreach ($value as $k => $item) {
        if($item < 3) {
            $arr[$key][$k] = $item;
        }
    }
}
print_r($arr);
