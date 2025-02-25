<?php

class ControladorArqueo {

    static public function ctrRegistrarArqueo() {
        if(isset($_POST["total_efectivo_en_caja"])) {
            $estado = ($_POST["opcion"] == "abierta") ? "abierta" : "cerrada";
            
            if($estado == "abierta") {
                $datos = array(
                    "fecha_apertura" => $_POST["fecha_apertura_cierre"],
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
                    "monto_apertura" => $_POST["total_efectivo_en_caja"],
                    "estado" => $estado,
                    "id_usuario" => $_POST["idVendedor"],
                    "idCaja" => $_POST["idCaja"],
                    "nro_ticket" =>  $_POST["nro_ticket"]
                );
                $respuesta = ModeloArqueo::mdlRegistraAperturaCaja($datos);
            } else {
                $datos = array(
                    "id_arqueo" => $_POST["idArqueo"],
                    "fecha_cierre" => $_POST["fecha_apertura_cierre"],
                    "monto_ventas" => $_POST["monto_ventas"],
                    "total_ingresos" => $_POST["total_ingresos"],
                    "gastos_operativos" => $_POST["gastos_operativos"],
                    "monto_compras" => $_POST["monto_compras"],
                    "total_egresos" => $_POST["total_egresos"],
                    "resultado_neto" => $_POST["resultado_neto"],
                    "idCaja" => $_POST["idCaja"],
                    "efectivo_en_caja" => $_POST["total_efectivo_en_caja"],
                    "diferencia" => $_POST["diferencia"]
                );
                $respuesta = ModeloArqueo::mdlRegistrarCierreCaja($datos);
            }

            echo json_encode(["status" => $respuesta]);
            return;
        }
    }

    static public function ctrVerificarCajaAbierta($id_usuario) {
        return ModeloArqueo::mdlVerificarCajaAbierta($id_usuario);
    }
} 