<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

//Conexion a la base de datos
include("conexion.php");


//Crear libro
$nombre = $_POST["nombre"];
$autor = $_POST["autor"];
$editorial = $_POST["editorial"];
$year = $_POST["year"];
$idCategoria = $_POST["idCategoria"];
$precio = $_POST["precio"];
//Falta modificar el formato de fecha en el query
$query = "INSERT INTO `libros`(`nombre`, `autor`, `editorial`, `year`, `idCategoria`, `precio`)
 VALUES ('$nombre','$autor','$editorial','$year',$idCategoria,$precio)";
$result = mysqli_query($connection,$query);


if(!$result){
    die("No se pudo ingresar");
}else{
    echo "Insertado";
}

//Buscar libros


//Eliminar libros



//Actualizar libros

?>