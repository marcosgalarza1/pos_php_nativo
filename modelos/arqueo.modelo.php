<?php

require_once "conexion.php";

/**
 * Modelo para gestionar las operaciones de arqueo de caja en la base de datos
 */
class ModeloArqueo {

    /**
     * Registra la apertura de una caja
     * @param array $datos Datos de la apertura
     * @return string Resultado de la operación ('ok' o 'error')
     */
    static public function mdlRegistraAperturaCaja($datos) {
        try {
            $stmt = Conexion::conectar()->prepare("INSERT INTO arqueo_caja (
                fecha_apertura,
                monto_apertura,
                total_ingresos,
                resultado_neto, 
                estado,
                id_caja,
                id_usuario,
                nroTicket
            ) VALUES (
                :fecha_apertura,
                :monto_apertura,
                :total_ingresos,
                :resultado_neto,
                :estado,
                :id_caja,
                :id_usuario,
                :nro_ticket
            )");

            $stmt->bindParam(":fecha_apertura", $datos["fecha_apertura"], PDO::PARAM_STR);
            $stmt->bindParam(":monto_apertura", $datos["monto_apertura"], PDO::PARAM_STR);
            $stmt->bindParam(":total_ingresos", $datos["total_ingresos"], PDO::PARAM_STR);
            $stmt->bindParam(":resultado_neto", $datos["resultado_neto"], PDO::PARAM_STR);
            $stmt->bindParam(":estado", $datos["estado"], PDO::PARAM_STR);
            $stmt->bindParam(":id_caja", $datos["id_caja"], PDO::PARAM_INT);
            $stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);
            $stmt->bindParam(":nro_ticket", $datos["nro_ticket"], PDO::PARAM_INT);

            if($stmt->execute()){
                self::mdlActualizarNroCaja($datos["id_caja"], $datos["nro_ticket"]);
                return "ok";
            }
            
            return "error";
        } catch (PDOException $e) {
            error_log("Error en mdlRegistraAperturaCaja: " . $e->getMessage());
            return "error";
        } finally {
            if(isset($stmt)) {
                $stmt->closeCursor();
                $stmt = null;
            }
        }
    }

    /**
     * Verifica si existe una caja abierta para un usuario
     * @param int $id_usuario ID del usuario
     * @return array|false Datos de la caja o false si no existe
     */
    static public function mdlVerificarCajaAbierta($id_usuario) {
        try {
            $stmt = Conexion::conectar()->prepare("SELECT * 
                FROM arqueo_caja 
                WHERE id_usuario = :id_usuario 
                AND estado = 'abierta' 
                AND DATE(fecha_apertura) = DATE(NOW())
                ORDER BY id DESC 
                LIMIT 1");
            
            $stmt->bindParam(":id_usuario", $id_usuario, PDO::PARAM_INT);
            $stmt->execute();
            
            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            error_log("Error en mdlVerificarCajaAbierta: " . $e->getMessage());
            return false;
        } finally {
            if(isset($stmt)) {
                $stmt->closeCursor();
                $stmt = null;
            }
        }
    }

    /**
     * Obtiene el último número de ticket registrado
     * @return int|false Último número de ticket o false en caso de error
     */
    static public function mdlObtenerUltimoNroTicket() {
        try {
            $stmt = Conexion::conectar()->prepare("SELECT MAX(nroTicket) as ultimo FROM arqueo_caja");
            $stmt->execute();
            return $stmt->fetch(PDO::FETCH_ASSOC)["ultimo"] ?? 0;
        } catch (PDOException $e) {
            error_log("Error en mdlObtenerUltimoNroTicket: " . $e->getMessage());
            return false;
        } finally {
            if(isset($stmt)) {
                $stmt->closeCursor();
                $stmt = null;
            }
        }
    }

    /**
     * Actualiza el número de ticket de una caja
     * @param int $id_caja ID de la caja
     * @param int $nro_ticket Nuevo número de ticket
     * @return string Resultado de la operación ('ok' o 'error')
     */
    private static function mdlActualizarNroCaja($id_caja, $nro_ticket) {
        try {
            $stmt = Conexion::conectar()->prepare(
                "UPDATE cajas SET nro_ticket = :nro_ticket WHERE id = :id_caja"
            );
            
            $stmt->bindParam(":nro_ticket", $nro_ticket, PDO::PARAM_INT);
            $stmt->bindParam(":id_caja", $id_caja, PDO::PARAM_INT);
            
            return $stmt->execute() ? "ok" : "error";
        } catch (PDOException $e) {
            error_log("Error en mdlActualizarNroCaja: " . $e->getMessage());
            return "error";
        } finally {
            if(isset($stmt)) {
                $stmt->closeCursor();
                $stmt = null;
            }
        }
    }

    /**
     * Registra el cierre de una caja
     * @param array $datos Datos del cierre
     * @return string Resultado de la operación ('ok' o 'error')
     */
    static public function mdlRegistrarCierreCaja($datos) {
        try {
            $stmt = Conexion::conectar()->prepare("UPDATE arqueo_caja SET 
                fecha_cierre = :fecha_cierre,
                Bs200 = :Bs200,
                Bs100 = :Bs100,
                Bs50 = :Bs50,
                Bs20 = :Bs20,
                Bs10 = :Bs10,
                Bs5 = :Bs5,
                Bs2 = :Bs2,
                Bs1 = :Bs1,
                Bs050 = :Bs050,
                Bs020 = :Bs020,
                total_ingresos = :total_ingresos,
                monto_ventas = :monto_ventas,
                total_egresos = :total_egresos,
                gastos_operativos = :gastos_operativos,
                monto_compras = :monto_compras,
                resultado_neto = :resultado_neto,
                efectivo_en_caja = :efectivo_en_caja,
                diferencia = :diferencia,
                estado = :estado
                WHERE id = :id_arqueo");
             
        

            $stmt->bindParam(":fecha_cierre", $datos["fecha_cierre"], PDO::PARAM_STR);
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
            $stmt->bindParam(":total_ingresos", $datos["total_ingresos"], PDO::PARAM_STR);
            $stmt->bindParam(":monto_ventas", $datos["monto_ventas"], PDO::PARAM_STR);
            $stmt->bindParam(":total_egresos", $datos["total_egresos"], PDO::PARAM_STR);
            $stmt->bindParam(":gastos_operativos", $datos["gastos_operativos"], PDO::PARAM_STR);
            $stmt->bindParam(":monto_compras", $datos["monto_compras"], PDO::PARAM_STR);
            $stmt->bindParam(":resultado_neto", $datos["resultado_neto"], PDO::PARAM_STR);
            $stmt->bindParam(":efectivo_en_caja", $datos["efectivo_en_caja"], PDO::PARAM_STR);
            $stmt->bindParam(":diferencia", $datos["diferencia"], PDO::PARAM_STR);
            $stmt->bindParam(":estado", $datos["estado"], PDO::PARAM_STR);
            $stmt->bindParam(":id_arqueo", $datos["id_arqueo"], PDO::PARAM_INT);

            if($stmt->execute()) {
                // Reiniciar el número de ticket al cerrar la caja
                self::mdlActualizarNroCaja($datos["id_caja"], 0);
                return "ok";
            }
            
            return "error";
        } catch (PDOException $e) {
            error_log("Error en mdlRegistrarCierreCaja: " . $e->getMessage());
            return "error";
        } finally {
            if(isset($stmt)) {
                $stmt->closeCursor();
                $stmt = null;
            }
        }
    }

    static public function mdlObtenerArqueoPendiente($id_usuario) {
        $stmt = Conexion::conectar()->prepare("SELECT id, monto_apertura 
            FROM arqueo_caja 
            WHERE id_usuario = :id_usuario 
            AND estado = 'abierta' 
            AND date(fecha_apertura) = date(now())
            LIMIT 1");
        
        $stmt->bindParam(":id_usuario", $id_usuario, PDO::PARAM_INT);
        $stmt->execute();
        
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
} 