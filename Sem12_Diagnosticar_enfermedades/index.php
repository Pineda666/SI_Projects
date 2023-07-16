<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Diagnóstico de Enfermedades</title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
    <?php
    $resultado = require_once("obtener_lista_sintomas.php");
    $consultas = require_once("buscar_consultas.php");
    ?>

    <div class="container" style="width: 30%; padding: 20px 40px">
        <h4 style="text-align: center; margin: 20px 0;">Registrar usuario y sintomas</h4>
        <form action="agregar_consultas.php" method="post" class="formPrincipal">
            <label style="display: block">Ingrese nombres:
                <input type="text" name="nombres" required>
            </label>
            <label style="display: block">Ingrese apellidos:
                <input type="text" name="apellidos" required>
            </label>
            <ul>
                <?php
                for ($i = 0; $i < count($resultado); $i++) {
                    $j = $i + 1;
                    echo "<li><input type='checkbox' class='form-check-input' value='1' name='$j'> {$resultado[$i][1]}</input></li>";
                }
                ?>
            </ul>
            <button type="submit" class="btn btn-success">Registrar</button>
        </form>
    </div>

    <div class="result-container">
        <div class="container container-enfermedad">
            <?php
            echo "<h1>Usted puede tener {$consultas[count($consultas)-1][3]}</h1>";
            ?>
        </div>

        <div class="container table-container">

            <h4 style="text-align: center; margin: 20px 0;">Listado de consultas</h4>
            <table class="table table-striped ">
                <thead>
                    <tr>
                        <td scope="col" style='color: white !important;'>ID</td>
                        <td scope="col" style='color: white !important;'>Nombres</td>
                        <td scope="col" style='color: white !important;'>Apellidos</td>
                        <td scope="col" style='color: white !important;'>Diagnostico</td>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    for ($i = 0; $i < count($consultas); $i++) {
                        echo "<tr>";
                        for ($j = 0; $j < 4; $j++) {
                            echo "<td style='color: white !important;'>{$consultas[$i][$j]}</td>";
                        }
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>



</body>

</html>