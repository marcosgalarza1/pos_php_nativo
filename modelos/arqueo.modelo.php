<?php

require_once "conexion.php";

class ModeloArqueo {

    static public function mdlRegistrarArqueo($datos) {
        $stmt = Conexion::conectar()->prepare("INSERT INTO arqueo_caja (
            fecha_apertura, 
            Bs200, Bs100, Bs50, Bs20, Bs10, Bs5, Bs2, Bs1, Bs050, Bs020,
            monto_apertura,
            total_ingresos,
            estado,
            id_usuario,
            nroTicket
        ) VALUES (
            :fecha_apertura,
            :Bs200, :Bs100, :Bs50, :Bs20, :Bs10, :Bs5, :Bs2, :Bs1, :Bs050, :Bs020,
            :monto_apertura,
            :total_ingresos,
            :estado,
            :id_usuario,
            :nro_ticket
        )");

        $stmt->bindParam(":fecha_apertura", $datos["fecha_apertura"], PDO::PARAM_STR);
        $stmt->bindParam(":Bs200", $datos["Bs200"], PDO::PARAM_STR);
        $stmt->bindParam(":Bs100", $datos["Bs100"], PDO::PARAM_STR);
        $stmt->bindParam(":Bs50", $datos["Bs50"], PDO::PARAM_STR);
        $stmt->bindParam(":Bs20", $datos["Bs20"], PDO::PARAM_STR);
        $stmt->bindParam(":Bs10", $datos["Bs10"], PDO::PARAM_STR);
        $stmt->bindParam(":Bs5", $datos["Bs5"], PDO::PARAM_STR);
        $stmt->bindParam(":Bs2", $datos["Bs2"], PDO::PARAM_STR);
        $stmt->bindParam(":Bs1", $datos["Bs1"], PDO::PARAM_STR);
        $stmt->bindParam(":Bs050", $datos["Bs050"], PDO::PARAM_STR);
        $stmt->bindParam(":Bs020", $datos["Bs020"], PDO::PARAM_STR);
        $stmt->bindParam(":monto_apertura", $datos["monto_apertura"], PDO::PARAM_STR);
        $stmt->bindParam(":total_ingresos", $datos["monto_apertura"], PDO::PARAM_STR);
        $stmt->bindParam(":estado", $datos["estado"], PDO::PARAM_STR);
        $stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);
        $stmt->bindParam(":nro_ticket", $datos["nro_ticket"], PDO::PARAM_INT);
       

        if($stmt->execute()){
            self::mdlActualizarNroCaja($datos["idCaja"], $datos["nro_ticket"]);
            return "ok";
        } else {
            return "error";
        }
        $stmt->close();
        $stmt = null;
    }

    static public function mdlVerificarCajaAbierta($id_usuario) {
        $stmt = Conexion::conectar()->prepare("SELECT 
            id,
            fecha_apertura,
            monto_apertura,
            monto_ventas,
            total_ingresos,
            gastos_operativos,
            monto_compras,
            total_egresos,
            resultado_neto,
            efectivo_en_caja,
            diferencia,
            estado,
            nroTicket
        FROM arqueo_caja 
        WHERE id_usuario = :id_usuario 
        AND estado = 'abierta' AND date(fecha_apertura) = date(now())
        ORDER BY id DESC 
        LIMIT 1");
        
        $stmt->bindParam(":id_usuario", $id_usuario, PDO::PARAM_INT);
        $stmt->execute();
        
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    static public function mdlObtenerUltimoNroTicket() {
        $stmt = Conexion::conectar()->prepare("SELECT MAX(nroTicket) as ultimo FROM arqueo_caja");
        $stmt->execute();
        return $stmt->fetch()["ultimo"];
    }

    private static function mdlActualizarNroCaja($id_caja, $nro_ticket) {
        $stmt = Conexion::conectar()->prepare("UPDATE cajas SET nro_ticket = :nro_ticket WHERE id = :id_caja");
        $stmt->bindParam(":nro_ticket", $nro_ticket, PDO::PARAM_INT);
        $stmt->bindParam(":id_caja", $id_caja, PDO::PARAM_INT);
        $stmt->execute();

        if($stmt->execute()){
            return "ok";
        } else {
            return "error";
        }
    }
} 