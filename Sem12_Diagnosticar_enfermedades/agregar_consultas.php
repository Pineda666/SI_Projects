<?php
require_once "bd.php";
$arreglo = "";
for ($i = 1; $i <= 25; $i++) {
    if (isset($_POST[$i])) {
        $arreglo = $arreglo . "s" . $i . ",";
    }
}
$arreglo = "[" . substr($arreglo, 0, strlen($arreglo) - 1) . "]";
$output = `swipl -s evaluacion.pl -g "listar_sintomas($arreglo)." -t halt.`;
$nombres = $_POST["nombres"];
$apellidos = $_POST["apellidos"];
$diagnostico = strlen($output) == 0 ? "Sin diagnostico" : $output;
$query = mysqli_query($con, "insert into diagnosticos (nombres,apellidos,diagnostico) values ('$nombres', '$apellidos', '$diagnostico')");
header("Location: " . "./index.php");