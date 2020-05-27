<?php

class categoria
{

    private $conexion;
    private $table_name = "categoria";

    public $idCategoria;
    public $descripcion;

    public function __construct($db){
        $this->conexion=$db;
    }

    //Read
    function readAll(){
        $query ="SELECT idCategoria, descripcion FROM ".$this->table_name." Order by idCategoria";
        
        $stmt= $this->conexion->prepare($query);
        
        $stmt->execute();
        
        return $stmt;
    }

    //Search , Es busqueda de libros, por lo tanto va en libros.
    /* function search($categoria){
        $query ="Select";

        $stmt= $this->conexion->prepare($query);

        $stmt->execute();

        return $stmt;
    } */
}
