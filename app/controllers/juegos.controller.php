<?php

require_once "./app/controllers/Controller.php";
require_once "./app/models/generos.model.php";
require_once './app/models/juegos.model.php';
require_once "./app/views/View.php";

class JuegosController extends Controller
{
    private $generos_model;

    public function __construct()
    {
        parent::__construct("precio_max");
        $this->view = new View();
        $this->model = new JuegosModel();
        $this->generos_model = new GenerosModel();
    }

    public function post()
    {
        $data = $this->getData();
        if (empty($data->nombre) || empty($data->precio) || empty($data->genero) || empty($data->desarrolladora) || empty($data->micro_transacciones) || empty($data->lanzamiento)) {
            $msj = $this->prepareMensaje("Los datos necesarios no están completos.");
            $this->view->response($msj, 400);
            return;
        }

        $res = $this->model->insert($data);

        if (!$res) {
            $msj = $this->prepareMensaje("Se produjo un error al intentar agregar.");
            $this->view->response($msj, 500);
            return;
        }

        $msj = $this->prepareMensaje("Se agregó con éxito el recurso.");
        $this->view->response($msj, 201);
    }

    public function put($params = [])
    {

        if (empty($params) || $params[":id"] == "") {
            $msj = $this->prepareMensaje("Hace falta un id.");
            $this->view->response($msj, 400);
            return;
        }

        $data = $this->getData();

        if (empty($data->nombre) || empty($data->precio) || empty($data->genero) || empty($data->desarrolladora) || empty($data->micro_transacciones) || empty($data->lanzamiento)) {
            $msj = $this->prepareMensaje("Los datos necesarios no están completos.");
            $this->view->response($msj, 400);
            return;
        }

        $id = $params[":id"];
        $res = $this->model->putById($id, $data);

        if (!$res) {
            $msj = $this->prepareMensaje("Se produjo un error al intentar modificar. ID: $id.");
            $this->view->response($msj, 404);
            return;
        }

        $msj = $this->prepareMensaje("Se modificó con éxito el recurso con ID : $id.");
        $this->view->response($msj, 200);
    }

}
