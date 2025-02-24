<?php

require_once "conexion.php";

class ModeloArqueo {

    static public function mdlRegistrarArqueo($datos) {
        $stmt = Conexion::conectar()->prepare("INSERT INTO arqueo_caja (
            fecha_apertura, 
            Bs200, Bs100, Bs50, Bs20, Bs10, Bs5, Bs2, Bs1, Bs050, Bs020,
            apertura,
            total,
            estado,
            id_usuario,
            nroTicket
        ) VALUES (
            :fecha_apertura,
            :Bs200, :Bs100, :Bs50, :Bs20, :Bs10, :Bs5, :Bs2, :Bs1, :Bs050, :Bs020,
            :apertura,
            :total,
            :estado,
            :id_usuario,
            :nroTicket
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
        $stmt->bindParam(":apertura", $datos["total"], PDO::PARAM_STR);
        $stmt->bindParam(":total", $datos["total"], PDO::PARAM_STR);
        $stmt->bindParam(":estado", $datos["estado"], PDO::PARAM_STR);
        $stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);
        $stmt->bindParam(":nroTicket", $datos["nroTicket"], PDO::PARAM_INT);

        if($stmt->execute()){
            return "ok";
        } else {
            return "error";
        }

        $stmt->close();
        $stmt = null;
    }

    static public function mdlObtenerUltimoNroTicket() {
        $stmt = Conexion::conectar()->prepare("SELECT MAX(nroTicket) as ultimo FROM arqueo_caja");
        $stmt->execute();
        return $stmt->fetch()["ultimo"];
    }
} 