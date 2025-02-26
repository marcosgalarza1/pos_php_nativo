<?php

class ControladorArqueo {

    static public function ctrRegistrarArqueo() {
        if(isset($_POST["accion"])) {
            if($_POST["accion"] == "AperturarCaja") {
                $datos = array(
                    "fecha_apertura" => $_POST["fechaApertura"],
                    "monto_apertura" => $_POST["montoApertura"],
                    "nro_ticket" =>  $_POST["nroTicket"],
                    "total_ingresos" => $_POST["totalIngresos"],
                    "resultado_neto" => $_POST["resultadoNeto"],
                    "estado" => $_POST["estado"],
                    "id_caja" => $_POST["idCaja"],
                    "id_usuario" => $_POST["idUsuario"],
                );
                $respuesta = ModeloArqueo::mdlRegistraAperturaCaja($datos);
                echo json_encode(["status" => $respuesta]);
            } else {
                $datos = array(
                    "id_arqueo" => $_POST["idArqueo"],
                    "fecha_cierre" => $_POST["fechaCierre"],
                    "Bs200" => $_POST["cantidad_200"],
                    "Bs100" => $_POST["cantidad_100"],
                    "Bs50" => $_POST["cantidad_50"],
                    "Bs20" => $_POST["cantidad_20"],
                    "Bs10" => $_POST["cantidad_10"],
                    "Bs5" => $_POST["cantidad_5"],
                    "Bs2" => $_POST["cantidad_2"],
                    "Bs1" => $_POST["cantidad_1"],
                    "Bs050" => $_POST["cantidad_050"],
                    "Bs020" => $_POST["cantidad_020"],
                    "total_ingresos" => $_POST["totalIngresos"],
                    "monto_ventas" => $_POST["montoVentas"],
                    "total_egresos" => $_POST["totalEgresos"],
                    "gastos_operativos" => $_POST["gastosOperativos"],
                    "monto_compras" => $_POST["montoCompras"],
                    "resultado_neto" => $_POST["resultadoNeto"],
                    "estado" => $_POST["estado"],
                    "efectivo_en_caja" => $_POST["totalEfectivoEnCaja"],
                    "diferencia" => $_POST["diferencia"],
                    "id_caja" => $_POST["idCaja"]
                );
                $respuesta = ModeloArqueo::mdlRegistrarCierreCaja($datos);
                echo json_encode(["status" => $respuesta]);
            }
            return;
        }
    }

    static public function ctrVerificarCajaAbierta($id_usuario) {
        return ModeloArqueo::mdlVerificarCajaAbierta($id_usuario);
    }
} 