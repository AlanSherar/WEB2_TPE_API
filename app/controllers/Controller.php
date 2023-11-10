<?php

class Controller
{
    protected $model;
    protected $view;
    protected $filtro;

    public function __construct($filtro)
    {
        $this->filtro = $filtro;
    }

    protected function getData()
    {
        return json_decode(file_get_contents("php://input"));
    }
    protected function prepareMensaje($msj)
    {
        $data = new stdClass();
        $data->detalle = $msj;
        return $data;
    }

    public function get($params = [])
    {
        // verifico si quiere un subrecurso particular        
        $subrecurso = isset($_GET["subrecurso"]) ? $_GET["subrecurso"] : "*";

        // si no tengo params, quieren pedir todos
        if (empty($params)) {

            // verifico si quieren filtrar
            $filtro = isset($_GET[$this->filtro]) ? $_GET[$this->filtro] : "";

            // verifico si quieren ordenar por algun campo
            $order_by = isset($_GET["order_by"]) && $_GET["order_by"] != "" ? $_GET["order_by"] : "id";

            // verifico la manera en que quieren ordenar la coleccion
            $order = isset($_GET["desc"]) || isset($_GET["DESC"]) ? "DESC" : "ASC";
            $order = isset($_GET["asc"]) || isset($_GET["ASC"]) ? "ASC" : $order;

            $data = $this->model->getAll($subrecurso, $filtro, $order_by, $order);

            $this->view->response($data, 200);
            return;
        }

        // si tengo params, quieren pedir uno por id
        $id = $params[":id"];

        // si id es "" entonces no escribieron los datos necesarios.
        if ($id == "") {
            $msj = $this->prepareMensaje("Hace falta un id.");
            $this->view->response($msj, 400);
            return;
        }

        $data = $this->model->getById($id, $subrecurso);

        // si no encontró el recurso
        if (!$data) {
            $msj = $this->prepareMensaje("No se encontró el recurso con ID = $id.");
            $this->view->response($msj, 404);
            return;
        }

        $this->view->response($data, 200);
    }

    public function delete($params = [])
    {

        if (empty($params) || $params[":id"] != "") {
            $msj = $this->prepareMensaje("Hace falta un id.");
            $this->view->response($msj, 400);
            return;
        }

        $id = $params[":id"];
        $res = $this->model->deleteById($id);

        if (!$res) {
            $msj = $this->prepareMensaje("Se produjo un error al intentar eliminar. ID : $id.");
            $this->view->response($msj, 404);
            return;
        }

        $msj = $this->prepareMensaje("Se eliminó con éxito el recurso con ID : $id.");
        $this->view->response($msj, 200);
    }
}
