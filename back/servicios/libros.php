<?php
//header("Access-Control-Allow-Origin: *");
//header("Content-Type: application/json; charset=UTF-8");

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

//Conexion a la base de datos
include_once("conexion.php");

$data = json_decode(file_get_contents("php://input"));



//echo json_encode($data);

if($data){
//Crear libro
$nombre = $data->nombre;
$autor = $data->autor;
$editorial = $data->editorial;
$year = $data->year;
$idCategoria = $data->idCategoria;
$precio = $data->precio;
$query = "INSERT INTO `libros`(`nombre`, `autor`, `editorial`, `year`, `idCategoria`, `precio`)
 VALUES ('$nombre','$autor','$editorial','$year',$idCategoria,$precio)";
$result = mysqli_query($connection,$query);
//echo $query." ,".json_encode($data);

if(!$result){
    die("error consulta");
}
//http_response_code(201);
$resultado = array("result" =>"registrado exitosamente");
echo json_encode($resultado);
//echo "Registrado exitosamente";
}



//Buscar libros


//Eliminar libros



//Actualizar libros
