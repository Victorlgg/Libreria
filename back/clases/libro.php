<?php
class Libro{

    private $conexion;
    private $table_name="libros";

    public $nombre;
    public $autor;
    public $editorial;
    public $year;
    public $idCategoria;
    public $precio;

    public function __construct($db){
        $this->conexion=$db;
    }

    //Crear libro
    function create(){
        //consulta
        /* $query ="INSERT INTO ".$this->table_name." (`nombre`, `autor`, `editorial`, `year`, `idCategoria`, `precio`) 
        VALUES (?,?,?,?,?,?)"; */
        $query ="INSERT INTO ".$this->table_name." (`nombre`, `autor`, `editorial`, `year`, `idCategoria`, `precio`)
        VALUES(:nombre, :autor,:editorial, :year,
        :idCategoria, :precio)";


        //preparar
        $stmt = $this->conexion->prepare($query);

            //Sanitize
      $this->nombre=htmlspecialchars(strip_tags($this->nombre));
      $this->autor=htmlspecialchars(strip_tags($this->autor));
      $this->editorial=htmlspecialchars(strip_tags($this->editorial));
      /* $this->year=htmlspecialchars(strip_tags($this->year));
      $this->idCategoria=htmlspecialchars(strip_tags($this->idCategoria));
      $this->precio=htmlspecialchars(strip_tags($this->precio)); */
      
        //bind
        $stmt->bindParam(":nombre", $this->nombre);
      $stmt->bindParam(":autor", $this->autor);
      $stmt->bindParam(":editorial", $this->editorial);
     $stmt->bindParam(":year", $this->year,PDO::PARAM_INT);
     $stmt->bindParam(":idCategoria", $this->idCategoria,PDO::PARAM_INT);
     $stmt->bindParam(":precio", $this->precio,PDO::PARAM_INT);

      /* $stmt->bind_params("sssiii", $this->nombre, $this->autor, $this->editorial, 
      $this->year, $this->idCategoria, $this->precio); */

      
      if($stmt->execute()){
          /* $resultado = array("result" => "Registrado exitosamente"); */
          /* return json_encode($resultado); */
          return true;
      }
      /* return json_encode(array("result"=> "No registrado")); */
      return false;
    }

}

?>