<?php

require_once "../controladores/arqueo.controlador.php";
require_once "../modelos/arqueo.modelo.php";
require_once "../controladores/cajas.controlador.php";
require_once "../modelos/cajas.modelo.php";

class AjaxArqueo {
    public function ajaxVerificarCaja() {
        $idUsuario = $_GET["idUsuario"];
        $respuesta = ControladorArqueo::ctrVerificarCajaAbierta($idUsuario);
        
        echo json_encode($respuesta);
    }

    public function ajaxObtenerNroTicket() {
        if(isset($_GET["idCaja"])) {
            $idCaja = $_GET["idCaja"];
            $respuesta = ControladorCajas::ctrObtenerNroTicket($idCaja);
            echo json_encode(["nroTicket" => $respuesta]);
        } else {
            echo json_encode(["error" => "ID de caja no proporcionado"]);
        }
    }
}

if(isset($_GET["accion"])) {
    $arqueo = new AjaxArqueo();
    
    if($_GET["accion"] == "verificarCaja") {
        $arqueo->ajaxVerificarCaja();
    } 
    else if($_GET["accion"] == "obtenerNroTicket") {
        $arqueo->ajaxObtenerNroTicket();
    }
} 
// Instanciar y ejecutar
if(isset($_POST["accion"])) {
    $arqueo = new AjaxArqueo();
    if($_POST["accion"] == "AperturarCaja") {
        $respuesta = ControladorArqueo::ctrRegistrarArqueo();
        echo $respuesta;
    }
    else if($_POST["accion"] == "CerrarCaja") {
        $respuesta = ControladorArqueo::ctrRegistrarArqueo();
        echo $respuesta;
    }
}