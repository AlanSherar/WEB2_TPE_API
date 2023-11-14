<?php 
    require_once "./app/helpers/db.helper.php";

    abstract class Model {

    protected $db;
    protected $table;
    protected $columns;

    public function __construct($tabla, $columns) {
        $this->db = DbHelper::connect_db();
        $this->table = $tabla;
        $this->columns = $columns;
    }
    
    public function getById($id, $subrecurso = "*") {

        $subrecurso = in_array($subrecurso, $this->columns, true) ? $subrecurso : "*";

        $query = $this->db->prepare("SELECT $subrecurso FROM $this->table WHERE id = ?");
        $query->execute([$id]);
        $data = $query->fetch(PDO::FETCH_OBJ);
        
        return $data;
    }
    
    abstract function getAll($subrecurso = "*", $filtro = "", $order_by, $order = "");
    
    public function deleteById($id){

        try {
            $query = $this->db->prepare('DELETE FROM '.$this->table.' WHERE id = ?');
            return $query->execute([$id]);
        } catch (\Throwable $th) {
            return false;
        }
    }

    abstract public function insert($data);
    abstract public function putById($id, $data);
    
    }
?>