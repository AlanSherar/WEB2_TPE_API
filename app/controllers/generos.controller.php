<?php

require_once "./app/controllers/Controller.php";
require_once "./app/models/generos.model.php";
require_once './app/models/juegos.model.php';
require_once './app/views/View.php';

class GenerosController extends Controller
{
    private $juegos_model;

    public function __construct()
    {
        $this->view = new View();
        $this->model = new GenerosModel();
        $this->juegos_model = new JuegosModel();
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
            $this->view->response($msj, 404);
            return;
        }

        $msj = $this->prepareMensaje("Se agregó con éxito el recurso con id = $res.");
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
