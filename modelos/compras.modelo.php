<?php

require_once "conexion.php";

class ModeloCompras{

	/*=============================================
	MOSTRAR COMPRAS
	=============================================*/

	static public function mdlMostrarCompras($tabla, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item ORDER BY id  ASC ");

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetch();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id ASC ");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}
		
		$stmt -> close();

		$stmt = null;

	}

	/*=============================================
	REGISTRO DE COMPRAS
	=============================================*/

	static public function mdlIngresarCompra($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(codigo,total, productos, id_usuario, id_proveedor) VALUES (:codigo,:total,:productos, :id_usuario, :id_proveedor  )");

		$stmt->bindParam(":codigo", $datos["codigo"], PDO::PARAM_STR);
		$stmt->bindParam(":total", $datos["total"], PDO::PARAM_STR);
		$stmt->bindParam(":productos", $datos["productos"], PDO::PARAM_STR);
		$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);
		$stmt->bindParam(":id_proveedor", $datos["id_proveedor"], PDO::PARAM_INT);
		// $stmt->bindParam(":estado", 1, PDO::PARAM_INT);
		// $stmt->bindParam(":fecha_alta", $datos["fecha_alta"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	EDITAR COMPRA
	=============================================*/

	// static public function mdlEditarCompra($tabla, $datos){

	// 	$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET  id_cliente = :id_cliente, id_vendedor = :id_vendedor, productos = :productos, impuesto = :impuesto, neto = :neto, total= :total, metodo_pago = :metodo_pago WHERE codigo = :codigo");

	// 	$stmt->bindParam(":codigo", $datos["codigo"], PDO::PARAM_INT);
	// 	$stmt->bindParam(":id_cliente", $datos["id_cliente"], PDO::PARAM_INT);
	// 	$stmt->bindParam(":id_vendedor", $datos["id_vendedor"], PDO::PARAM_INT);
	// 	$stmt->bindParam(":productos", $datos["productos"], PDO::PARAM_STR);
	// 	$stmt->bindParam(":impuesto", $datos["impuesto"], PDO::PARAM_STR);
	// 	$stmt->bindParam(":neto", $datos["neto"], PDO::PARAM_STR);
	// 	$stmt->bindParam(":total", $datos["total"], PDO::PARAM_STR);
	// 	$stmt->bindParam(":metodo_pago", $datos["metodo_pago"], PDO::PARAM_STR);

	// 	if($stmt->execute()){

	// 		return "ok";

	// 	}else{

	// 		return "error";
		
	// 	}

	// 	$stmt->close();
	// 	$stmt = null;

	// }

	/*=============================================
	ELIMINAR VENTA
	=============================================*/

	static public function mdlEliminarCompra($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt -> bindParam(":id", $datos, PDO::PARAM_INT);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	}



/*=============================================
	RANGO FECHAS
	=============================================*/	

	static public function mdlRangoFechasCompras($tabla, $fechaInicial, $fechaFinal){

		if($fechaInicial == null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id ASC");

			$stmt -> execute();

			return $stmt -> fetchAll();	


		}else if($fechaInicial == $fechaFinal){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha_alta like '%$fechaFinal%'");

			/* $stmt -> bindParam(":fecha", $fechaFinal, PDO::PARAM_STR); */

			$stmt -> execute();

			return $stmt -> fetchAll();

		}else{

			$fechaActual = new DateTime();
			$fechaActual ->add(new DateInterval("P1D"));
			$fechaActualMasUno = $fechaActual->format("Y-m-d");

			$fechaFinal2 = new DateTime($fechaFinal);
			$fechaFinal2 ->add(new DateInterval("P1D"));
			$fechaFinalMasUno = $fechaFinal2->format("Y-m-d");

			if($fechaFinalMasUno == $fechaActualMasUno){

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha_alta BETWEEN '$fechaInicial' AND '$fechaFinalMasUno'");

			}else{

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha_alta BETWEEN '$fechaInicial' AND '$fechaFinal'");

			}
		
			$stmt -> execute();

			return $stmt -> fetchAll();

		}

	}


/*=============================================
	SUMAR EL TOTAL DE COMPRAS
	=============================================*/

	static public function mdlSumaTotalCompras($tabla){	

		$stmt = Conexion::conectar()->prepare("SELECT SUM(total) as total FROM $tabla");

		$stmt -> execute();

		return $stmt -> fetch();

		$stmt -> close();

		$stmt = null;

	}



/*=============================================
	RANGO FECHAS
	=============================================*/	

	static public function mdlRangoFechasComprasPdf($tabla, $fechaInicial, $fechaFinal, $idProveedor){

			if($fechaInicial <= $fechaFinal){

				$query = "SELECT compras.codigo, compras.fecha_alta, usuarios.nombre as usuario, proveedor.nombre as proveedor, compras.total
				FROM $tabla 
				JOIN proveedor ON compras.id_proveedor = proveedor.id
				JOIN usuarios ON compras.id_usuario = usuarios.id
				WHERE DATE(fecha_alta) BETWEEN DATE('$fechaInicial') AND DATE('$fechaFinal') ";

				// Añadir la condición del proveedor si $idProveedor no es 0
				$query .= ($idProveedor == 0) ? "" : " AND compras.id_proveedor = $idProveedor";

				$stmt = Conexion::conectar()->prepare($query);
		
				$stmt -> execute();

			return $stmt -> fetchAll();

		}

	}

	static public function mdlComprasRealizadas($tabla){

		$query = "SELECT compras.id ,compras.codigo, compras.fecha_alta, usuarios.nombre as usuario, proveedor.nombre as proveedor, compras.total
		FROM $tabla 
		JOIN proveedor ON compras.id_proveedor = proveedor.id
		JOIN usuarios ON compras.id_usuario = usuarios.id
		ORDER BY fecha_alta  DESC 
		";

		$stmt = Conexion::conectar()->prepare($query);

		$stmt -> execute();

		return $stmt -> fetchAll();

	}


}