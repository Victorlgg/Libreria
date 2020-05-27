<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

//conexion
include_once("conexion.php");

//clase
include_once("../clases/categoria.php");

//Inicializar
$conexion = new Conexion();
$db = $conexion->getConnection();

$categoria = new categoria($db);

$stmt = $categoria->readAll();
$num = $stmt->rowCount();

$categories = array();
$categories["records"]=array();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
    extract($row);

    $cat_item = array("idCategoria"=>$idCategoria, "descripcion"=>$descripcion);

    array_push($categories["records"],$cat_item);
}

    //200 OK
    http_response_code(200);

    //Respuesta
    echo json_encode($categories["records"]);

/* $data = json_encode(file_get_contents("php://input"));

if($data){
    if(
        !empty($data->idCategoria) &&
        !empty($data->descripcion) 
    
    
    ){
    
    
    }
}else{
    
} */
//GET 

?>