<?php
$wishes = ["счастья", "здоровья", "успеха", "благополучия", "веселья", "достатка", "тепла"];
$adjective = ["крепкого", "большого", "бесконечного", "взаимного", "головокружительного", "космического", "безудержного"];
$new = [];
$name = readline("Как зовут именинника? ");

shuffle($wishes);
shuffle($adjective);
for ($i = 0; $i < 3; $i++) {
    $new[] = "$adjective[$i] $wishes[$i]";
}
$str = implode( ", ", $new);
$index = strrpos($str, ", ");
$str = substr_replace($str, " и", $index, 1);

echo "Дорогой $name, от всего сердца поздравляю тебя с днем рождения, желаю $str!\n";


