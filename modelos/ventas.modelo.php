<?php

require_once "conexion.php";

class ModeloVentas
{

	/*=============================================
	MOSTRAR VENTAS
	=============================================*/

	static public function mdlMostrarVentas($tabla, $item, $valor)
	{

		if ($item != null) {

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item ORDER BY id  ASC ");

			$stmt->bindParam(":" . $item, $valor, PDO::PARAM_STR);

			$stmt->execute();

			return $stmt->fetch();
		} else {

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id ASC ");

			$stmt->execute();

			return $stmt->fetchAll();
		}

		$stmt->close();

		$stmt = null;
	}

	/*=============================================
	REGISTRO DE VENTA
	=============================================*/

	static public function mdlIngresarVenta($tabla, $datos)
	{

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(codigo, id_cliente, id_vendedor, productos, total) VALUES (:codigo, :id_cliente, :id_vendedor, :productos,  :total)");

		$stmt->bindParam(":codigo", $datos["codigo"], PDO::PARAM_INT);
		$stmt->bindParam(":id_cliente", $datos["id_cliente"], PDO::PARAM_INT);
		$stmt->bindParam(":id_vendedor", $datos["id_vendedor"], PDO::PARAM_INT);
		$stmt->bindParam(":productos", $datos["productos"], PDO::PARAM_STR);
	
		
		$stmt->bindParam(":total", $datos["total"], PDO::PARAM_STR);
		

		if ($stmt->execute()) {

			return "ok";
		} else {

			return "error";
		}

		$stmt->close();
		$stmt = null;
	}

	/*=============================================
	EDITAR VENTA
	=============================================*/

	static public function mdlEditarVenta($tabla, $datos)
	{

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET  id_cliente = :id_cliente, id_vendedor = :id_vendedor, productos = :productos = : =  total= :total  WHERE codigo = :codigo");

		$stmt->bindParam(":codigo", $datos["codigo"], PDO::PARAM_INT);
		$stmt->bindParam(":id_cliente", $datos["id_cliente"], PDO::PARAM_INT);
		$stmt->bindParam(":id_vendedor", $datos["id_vendedor"], PDO::PARAM_INT);
		$stmt->bindParam(":productos", $datos["productos"], PDO::PARAM_STR);
		
		
		$stmt->bindParam(":total", $datos["total"], PDO::PARAM_STR);
	

		if ($stmt->execute()) {

			return "ok";
		} else {

			return "error";
		}

		$stmt->close();
		$stmt = null;
	}

	/*=============================================
	ELIMINAR VENTA
	=============================================*/

	static public function mdlEliminarVenta($tabla, $datos)
	{

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt->bindParam(":id", $datos, PDO::PARAM_INT);

		if ($stmt->execute()) {

			return "ok";
		} else {

			return "error";
		}

		$stmt->close();

		$stmt = null;
	}



	/*=============================================
	RANGO FECHAS
	=============================================*/

	static public function mdlRangoFechasVentas($tabla, $fechaInicial, $fechaFinal)
	{

		if ($fechaInicial == null) {

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id DESC");

			$stmt->execute();

			return $stmt->fetchAll();
		} else if ($fechaInicial == $fechaFinal) {

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha like '%$fechaFinal%'");

			/* $stmt -> bindParam(":fecha", $fechaFinal, PDO::PARAM_STR); */

			$stmt->execute();

			return $stmt->fetchAll();
		} else {

			$fechaActual = new DateTime();
			$fechaActual->add(new DateInterval("P1D"));
			$fechaActualMasUno = $fechaActual->format("Y-m-d");

			$fechaFinal2 = new DateTime($fechaFinal);
			$fechaFinal2->add(new DateInterval("P1D"));
			$fechaFinalMasUno = $fechaFinal2->format("Y-m-d");

			if ($fechaFinalMasUno == $fechaActualMasUno) {

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha BETWEEN '$fechaInicial' AND '$fechaFinalMasUno'");
			} else {


				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha BETWEEN '$fechaInicial' AND '$fechaFinal' ORDER BY id DESC");
			}

			$stmt->execute();

			return $stmt->fetchAll();
		}
	}


	/*=============================================
	SUMAR EL TOTAL DE VENTAS
	=============================================*/

	static public function mdlSumaTotalVentas($tabla)
	{

	$anio = date('Y'); // Obtener el año actual

    $stmt = Conexion::conectar()->prepare("SELECT SUM(total) as total FROM $tabla WHERE YEAR(fecha) = :anio");

    $stmt->bindParam(":anio", $anio, PDO::PARAM_INT);
    $stmt->execute();

    return $stmt->fetch();

    $stmt->close();
    $stmt = null;
	
	}
	/*=============================================
	SUMAR EL TOTAL DE VENTAS - MES
	=============================================*/

	static public function mdlVentasTotalMes($tabla)
	{
		$yearactual = date('Y');
		$mesActual = date('m');
		$stmt = Conexion::conectar()->prepare("SELECT SUM(total) as total FROM $tabla WHERE MONTH(fecha)='$mesActual' AND YEAR(fecha) = '$yearactual'");

		$stmt->execute();

		return $stmt->fetch();

		$stmt->close();

		$stmt = null;
	}

	/*=============================================
	SUMAR EL TOTAL DE VENTAS - DIA
	=============================================*/

	static public function mdlVentasTotalDia($tabla)
	{
		date_default_timezone_set('America/La_Paz');
		$hoy = date('Y-m-d');
		$stmt = Conexion::conectar()->prepare("SELECT SUM(total) as total FROM $tabla WHERE DATE(fecha)='$hoy'");

		$stmt->execute();

		return $stmt->fetch();

		$stmt->close();

		$stmt = null;
	}

	/*=============================================
	RANGO DE VENTAS - POR MESERO
	=============================================*/

	public static function mdlRangoFechasVentasPdf($tabla, $fechaInicial, $fechaFinal, $idMesero)
{
    $query = "SELECT ventas.codigo, ventas.fecha, usuarios.nombre as usuario, clientes.nombre as mesero, ventas.total
              FROM $tabla 
              JOIN clientes ON ventas.id_cliente = clientes.id
              JOIN usuarios ON ventas.id_vendedor = usuarios.id
              WHERE DATE(ventas.fecha) BETWEEN DATE(:fechaInicial) AND DATE(:fechaFinal)";

    // Añadir la condición del cliente solo si $idMesero no es 0
    if ($idMesero != 0) {
        $query .= " AND ventas.id_cliente = :idMesero";
    }

    $query .= " ORDER BY ventas.codigo, ventas.fecha DESC";

    // Preparar la consulta
    $stmt = Conexion::conectar()->prepare($query);

    // Enlazar parámetros
    $stmt->bindParam(":fechaInicial", $fechaInicial, PDO::PARAM_STR);
    $stmt->bindParam(":fechaFinal", $fechaFinal, PDO::PARAM_STR);

    // Si $idMesero no es 0, enlazar también el parámetro del cliente
    if ($idMesero != 0) {
        $stmt->bindParam(":idMesero", $idMesero, PDO::PARAM_INT);
    }

    // Ejecutar la consulta
    $stmt->execute();

    // Retornar los resultados
    return $stmt->fetchAll();
}

	/*=============================================
	RANGO DE VENTAS - TOP POR MESERO
	=============================================*/
	static public function mdlRangoFechasVentasTopMeseroPdf($tabla, $fechaInicial, $fechaFinal)
	{

		if ($fechaInicial <= $fechaFinal) {

			$query = "SELECT clientes.nombre as mesero, COUNT(ventas.id) as cantidad, SUM(ventas.total) as total
					FROM $tabla 
					JOIN clientes ON ventas.id_cliente = clientes.id
					WHERE DATE(ventas.fecha) BETWEEN DATE('$fechaInicial') AND DATE('$fechaFinal') 
					GROUP BY clientes.nombre ORDER BY SUM(ventas.total) DESC;";

			$stmt = Conexion::conectar()->prepare($query);

			$stmt->execute();

			return $stmt->fetchAll();
		}
	}

	/*=============================================
	TOP PRODUCTO MAS VENDIDOS SEGUNN RANGO FECHAS
	=============================================*/
	static public function mdlRangoFechasTopProductoVendidos($tabla, $fechaInicial, $fechaFinal)
	{

		if ($fechaInicial <= $fechaFinal) {

			// Consulta SQL para obtener las ventas en el rango de fechas
			$query = "SELECT productos FROM $tabla WHERE DATE(fecha) BETWEEN :fechaInicio AND :fechaFin ORDER BY ventas.fecha ASC";


			$stmt = Conexion::conectar()->prepare($query);
			// Vincular los parámetros de las fechas
			$stmt->bindParam(':fechaInicio', $fechaInicial);
			$stmt->bindParam(':fechaFin', $fechaFinal);

			$stmt->execute();
			// Obtener los resultados
			$ventas = $stmt->fetchAll(PDO::FETCH_ASSOC);

			// Crear un array para contar las cantidades por producto
			$productosVendidos = [];

			// Iterar sobre cada venta
			foreach ($ventas as $venta) {
				// Decodificar el JSON de productos
				$productos = json_decode($venta['productos'], true);

				// Iterar sobre cada producto en la venta
				foreach ($productos as $producto) {
					$nombreProducto = $producto['descripcion'];
					$cantidad = intval($producto['cantidad']);

					// Si el producto ya existe en el array, sumamos la cantidad
					if (isset($productosVendidos[$nombreProducto])) {
						$productosVendidos[$nombreProducto] += $cantidad;
					} else {
						// Si no, lo añadimos al array
						$productosVendidos[$nombreProducto] = $cantidad;
					}
				}
			}

			// Ordenar los productos por cantidad en orden descendente
			arsort($productosVendidos);

			// Devolver los productos más vendidos
			return $productosVendidos;
			// return $stmt->fetchAll();
		}
	}

	static public function mdlRangoFechaVentasRealizadas($tabla, $fechaInicial, $fechaFinal) {
		date_default_timezone_set('America/La_Paz');
	
		$query = "SELECT ventas.id, ventas.codigo, ventas.fecha, usuarios.nombre as usuario, clientes.nombre as cliente, ventas.total
				  FROM $tabla 
				  JOIN usuarios ON ventas.id_vendedor = usuarios.id
				  JOIN clientes ON ventas.id_cliente = clientes.id";
	


		if ($fechaInicial == null && $fechaFinal == null) {
			$stmt = Conexion::conectar()->prepare($query . " ORDER BY ventas.fecha DESC");
			$stmt->execute();
			return $stmt->fetchAll();
		}

		if ($fechaInicial == null) {
			$stmt = Conexion::conectar()->prepare($query . " ORDER BY ventas.fecha DESC");
		} else if ($fechaInicial == $fechaFinal) {
			$stmt = Conexion::conectar()->prepare($query . " WHERE DATE(ventas.fecha) = :fecha ORDER BY ventas.fecha DESC");
			$stmt->bindParam(":fecha", $fechaFinal, PDO::PARAM_STR);
		} else {
			$stmt = Conexion::conectar()->prepare($query . " WHERE DATE(ventas.fecha) BETWEEN DATE(:fechaInicial) AND DATE(:fechaFinal) ORDER BY ventas.fecha DESC");
			$stmt->bindParam(":fechaInicial", $fechaInicial, PDO::PARAM_STR);
			$stmt->bindParam(":fechaFinal", $fechaFinal, PDO::PARAM_STR);
		}
	
		$stmt->execute();
		return $stmt->fetchAll();
	}
	

}
