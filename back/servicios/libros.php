<?php
//header("Access-Control-Allow-Origin: *");
//header("Content-Type: application/json; charset=UTF-8");

header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Credentials: true');
header("Access-Control-Allow-Methods: POST, GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
header("Content-Type: application/json; charset=UTF-8");

//Conexion a la base de datos
include_once("conexion.php");

//Clase libro
include_once("../clases/libro.php");

$conexion = new Conexion();
$db = $conexion->getConnection();

//crear instancia libro
$libro = new Libro($db);

//get post data
$data = json_decode(file_get_contents("php://input"));
//var_dump($data);

//Validar que es busqueda
if (!empty($data->search)) {
    $stmt = $libro->search($data);

    $num = $stmt->rowCount();
    //Total resultados 
    //echo $num;
    $json = array();
    if ($num > 0) {
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $json[] = array(
                "idLibro" => $row["idLibro"],
                "nombre" => $row["nombre"],
                "autor" => $row["autor"],
                "editorial" => $row["editorial"],
                "year" => $row["year"],
                "idCategoria" => $row["idCategoria"],
                "precio" => $row["precio"],
                "descripcion" => $row["descripcion"]

            );
        }
        echo json_encode($json);
        //200 ok
        http_response_code(200);
        //echo json_encode($json);
    }else{
        echo json_encode(array("result" => "Nada encontrado"));
    }
} elseif (
    //Si es una insercion
    !empty($data->nombre) &&
    !empty($data->autor) &&
    !empty($data->editorial) &&
    !empty($data->year) &&
    !empty($data->idCategoria) &&
    !empty($data->precio)
) {
    $libro->nombre = $data->nombre;
    $libro->autor = $data->autor;
    $libro->editorial = $data->editorial;
    $libro->year = $data->year;
    $libro->idCategoria = $data->idCategoria;
    $libro->precio = $data->precio;

    if ($libro->create()) {
        //Response code 201 - created
        http_response_code(201);

        echo json_encode(array("result" => "Registrado exitosamente"));
    } else {
        //503 service unavailable
        http_response_code(503);

        echo json_encode(array("result" => "Registro fallido"));
    }
} else {
    //400 - Bad Request
    http_response_code(400);

    echo json_encode(array("result" => "Faltan datos"));
}




//Buscar libros


//Eliminar libros



//Actualizar libros



/* Codigo viejo
if ($data) {
    crearLibro($data);
}

function crearLibro($datos)
{
    //Crear libro
    $nombre = $datos->nombre;
    $autor = $datos->autor;
    $editorial = $datos->editorial;
    $year = $datos->year;
    $idCategoria = $datos->idCategoria;
    $precio = $datos->precio;
    //Quitar sql, m-> funcion
    $query = "INSERT INTO `libros`(`nombre`, `autor`, `editorial`, `year`, `idCategoria`, `precio`)
 VALUES ('$nombre','$autor','$editorial','$year',$idCategoria,$precio)";
    $result = mysqli_query($connection, $query);
    //echo $query." ,".json_encode($datos);

    if (!$result) {
        die("error consulta");
    }
    //http_response_code(201);
    $resultado = array("result" => "registrado exitosamente");
    echo json_encode($resultado);
    //echo "Registrado exitosamente";
}


*/
