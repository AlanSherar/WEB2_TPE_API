    <?php
    require_once "./app/helpers/db.helper.php";
    require_once "./app/models/Model.php";

    class GenerosModel extends Model
    {

        function __construct()
        {
            parent::__construct("generos",
            ["id", "nombre"]);
        }

        // falta terminar
        function getAll($subrecurso = "*", $filtro = "", $order_by, $order = "")
        {
            $subrecurso = in_array($subrecurso, $this->columns, true) ? $subrecurso : "*";
    
            $cond = $filtro == "" ? "" : "WHERE precio <= ";
            
            $order_by = in_array($order_by,$this->columns, true) ? $order_by : $this->columns[0];
            
            $order = $order == "ASC" ? "ASC" : "DESC";
           
            $query = $this->db->prepare("SELECT $subrecurso FROM $this->table $cond ? ORDER BY $order_by $order");
            $query->execute([$filtro]);
                    
            $data = $query->fetchAll(PDO::FETCH_OBJ);
            return $data;
        }

        public function insert($data)
        {
            $query = $this->db->prepare("INSERT INTO $this->table(nombre) values (?)");
            $query->execute([$data->nombre]);
            return $this->db->lastInsertId();
        }
        function putById($data, $id)
        {
            $query = $this->db->prepare('UPDATE ' . $this->table . ' SET nombre = ? WHERE id = ?');
            return $query->execute([$data->nombre, $id]);
        }
    }
    ?>
