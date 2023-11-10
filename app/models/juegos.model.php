<?php
require_once "./app/helpers/db.helper.php";
require_once "./app/models/Model.php";

class JuegosModel extends Model
{

    public function __construct()
    
    {
        parent::__construct("juegos",
            ["id",
            "nombre",
            "precio",
            "genero",
            "desarrolladora",
            "micro_transacciones",
            "lanzamiento"]);
    }

    function getAll($subrecurso = "*", $filtro = "", $order_by, $order = "")
    {
        $subrecurso = in_array($subrecurso, $this->columns, true) ? $subrecurso : "*";
        
        $order_by = in_array($order_by, $this->columns, true) ? $order_by : $this->columns[0];
        
        $order = $order == "ASC" ? "ASC" : "DESC";
        
        if($filtro != ""){
            $query = $this->db->prepare("SELECT $subrecurso FROM $this->table WHERE precio <= ? ORDER BY $order_by $order");
            $query->execute([$filtro]);
        }else {
            $query = $this->db->prepare("SELECT $subrecurso FROM $this->table ORDER BY $order_by $order");
            $query->execute();
        }

        $data = $query->fetchAll(PDO::FETCH_OBJ);
        return $data;
    }

    public function deleteAllByGeneroId($id)
    {
        $query = $this->db->prepare('DELETE FROM ' . $this->table . ' WHERE genero = ?');
        return $query->execute([$id]);
    }

    public function insert($data)
    {
        $query = $this->db->prepare('INSERT INTO ' . $this->table . ' (nombre, precio, genero, desarrolladora, micro_transacciones, lanzamiento) values (?,?,?,?,?,?)');
        $query->execute([$data->nombre, $data->precio, $data->genero, $data->desarrolladora, $data->micro_transacciones, $data->lanzamiento]);
        return $this->db->lastInsertId();
    }

    public function putById($id, $data)
    {
        $query = $this->db->prepare('UPDATE ' . $this->table . ' SET nombre = ?, precio = ?, genero = ?, desarrolladora = ?, micro_transacciones = ?, lanzamiento = ? WHERE id = ?');
        return $query->execute([$data->nombre, $data->precio, $data->genero, $data->desarrolladora, $data->micro_transacciones, $data->lanzamiento, $id]);
    }
}
?>
