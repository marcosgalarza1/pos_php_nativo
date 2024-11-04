<?php

class ControladorVentas{

	/*=============================================
	MOSTRAR VENTAS
	=============================================*/

	static public function ctrMostrarVentas($item, $valor){

		$tabla = "ventas";

		$respuesta = ModeloVentas::mdlMostrarVentas($tabla, $item, $valor);

		return $respuesta;

	}
	
	static public function ctrMostrarDetalleVentas($idVenta){

		$respuesta = ModeloVentas::mdlMostrarDetalleVentas($idVenta);
		return $respuesta;

	}

	/*=============================================
	CREAR VENTA
	=============================================*/

	static public function ctrCrearVenta(){

		if(isset($_POST["nuevaVenta"])){

			/*=============================================
			ACTUALIZAR LAS COMPRAS DEL MESERO Y REDUCIR EL STOCK Y AUMENTAR LAS VENTAS DE LOS PRODUCTOS
			=============================================*/

			if($_POST["listaProductos"] == ""){


					echo'<script>

				swal({ bv 
					  type: "error",
					  title: "La venta no se ha ejecuta si no hay productos",
					  showConfirmButton: true,
					  confirmButtonText: "Cerrar"
					  }).then(function(result){
								if (result.value) {

								window.location = "crear-venta";

								}
							})

				</script>'; 

				return;
			}


			$listaProductos = json_decode($_POST["listaProductos"], true);

			$totalProductosComprados = array();

			foreach ($listaProductos as $key => $value) {

			   array_push($totalProductosComprados, $value["cantidad"]);
				
			   $tablaProductos = "productos";

			    $item = "id";
			    $valor = $value["id"];
			    $orden = "id";

			    $traerProducto = ModeloProductos::mdlMostrarProductos($tablaProductos, $item, $valor, $orden);

				$item1a = "ventas";
				$valor1a = $value["cantidad"] + $traerProducto["ventas"];

			    $nuevasVentas = ModeloProductos::mdlActualizarProducto($tablaProductos, $item1a, $valor1a, $valor);

				$item1b = "stock";
				$valor1b = $value["stock"];

				$nuevoStock = ModeloProductos::mdlActualizarProducto($tablaProductos, $item1b, $valor1b, $valor);

			}

			$tablaMeseros = "meseros";

			$item = "id";
			$valor = $_POST["seleccionarMesero"];

			$traerMesero = ModeloMeseros::mdlMostrarMeseros($tablaMeseros, $item, $valor);

			$item1a = "compras";
			$valor1a = array_sum($totalProductosComprados) + $traerMesero["compras"];

			$comprasMesero = ModeloMeseros::mdlActualizarMesero($tablaMeseros, $item1a, $valor1a, $valor);

			$item1b = "ultima_compra";

			date_default_timezone_set('America/La_Paz');

			$fecha = date('Y-m-d');
			$hora = date('H:i:s');
			$valor1b = $fecha.' '.$hora;

			$fechaMesero = ModeloMeseros::mdlActualizarMesero($tablaMeseros, $item1b, $valor1b, $valor);
			$tipoPago = "";

			switch ($_POST["tipoPago"]) {
				case 1:
					$tipoPago = "EFECTIVO";
					break;
				case 2:
					$tipoPago = "QR";
					break;
				case 3:
					$tipoPago = "TRANSFERENCIA";
					break;
				default:
					$tipoPago = "NO ESPECIFICADO";
					break;
			}
			$formaAtencion = "";

			switch ($_POST["formaAtencion"]) {
				case 1:
					$formaAtencion = "PARA LLEVAR";
					break;
				case 2:
					$formaAtencion = "EN MESA";
					break;
				default:
					$formaAtencion = "NO ESPECIFICADO";
					break;
			}
			/*=============================================
			GUARDAR LA VENTA
			=============================================*/	

			$tabla = "ventas";

			$datos = array("id_vendedor"=>$_POST["idVendedor"],
						   "id_mesero"=>$_POST["seleccionarMesero"],
						   "id_cliente"=>$_POST["id_cliente"],
						   "codigo"=>$_POST["nuevaVenta"],
						   "productos"=>$_POST["listaProductos"],
						   "total"=>$_POST["totalVenta"],
						   "nota"=>strtoupper($_POST["nota"]),
						   "tipo_pago"=>$tipoPago,
						   "cambio"=>$_POST["nuevoCambioEfectivo"],
						   "forma_atencion"=>$formaAtencion,
							"total_pagado"=>$_POST["nuevoValorEfectivo"]);
						
			// $respuesta = ModeloVentas::mdlIngresarVenta($tabla, $datos);
			$respuesta = ModeloVentas::mdlRegistrarVenta($tabla, $datos);
			
			if($respuesta == "ok" && $_POST["sinImprimir"] == false){
				
				
				$codigoVenta = $_POST["nuevaVenta"];
				echo "<script type='text/javascript'>
				     	window.open('extensiones/tcpdf/pdf/factura.php?codigo={$codigoVenta}', '_blank');
				  		window.location = 'crear-venta';
					</script>"; 

				/* echo'<script>

				localStorage.removeItem("rango");

				swal({
					  type: "success",
					  title: "La venta ha sido guardada correctamente",
					  showConfirmButton: true,
					  confirmButtonText: "Cerrar"
					  }).then(function(result){
								if (result.value) {

								window.location = "ventas";

								}
							})
				
				</script>';
 */
                 
			}

		}

	}

	/*=============================================
	EDITAR VENTA
	=============================================*/

	static public function ctrEditarVenta(){

		if(isset($_POST["editarVenta"])){

			/*=============================================
			FORMATEAR TABLA DE PRODUCTOS Y LA DE MESEROS
			=============================================*/
			$tabla = "ventas";

			$item = "codigo";
			$valor = $_POST["editarVenta"];

			$traerVenta = ModeloVentas::mdlMostrarVentas($tabla, $item, $valor);

			/*=============================================
			REVISAR SI VIENE PRODUCTOS EDITADOS
			=============================================*/

			if($_POST["listaProductos"] == ""){

				$listaProductos = $traerVenta["productos"];
				$cambioProducto = false;


			}else{

				$listaProductos = $_POST["listaProductos"];
				$cambioProducto = true;
			}

			if($cambioProducto){

				$productos =  json_decode($traerVenta["productos"], true);
				// $productos = ModeloVentas::mdlMostrarDetalleVentas($traerVenta["id"]);

				$totalProductosComprados = array();

				foreach ($productos as $key => $value) {

					array_push($totalProductosComprados, $value["cantidad"]);
					
					$tablaProductos = "productos";

					$item = "id";
					$valor = $value["id"];
					$orden = "id";

					$traerProducto = ModeloProductos::mdlMostrarProductos($tablaProductos, $item, $valor, $orden);

					$item1a = "ventas";
					$valor1a = $traerProducto["ventas"] - $value["cantidad"];

					$nuevasVentas = ModeloProductos::mdlActualizarProducto($tablaProductos, $item1a, $valor1a, $valor);

					$item1b = "stock";
					$valor1b = $value["cantidad"] + $traerProducto["stock"];

					$nuevoStock = ModeloProductos::mdlActualizarProducto($tablaProductos, $item1b, $valor1b, $valor);

				}

				$tablaMeseros = "meseros";

				$itemMesero = "id";
				$valorMesero = $_POST["seleccionarMesero"];

				$traerMesero = ModeloMeseros::mdlMostrarMeseros($tablaMeseros, $itemMesero, $valorMesero);

				$item1a = "compras";
				$valor1a = $traerMesero["compras"] - array_sum($totalProductosComprados);

				$comprasMesero = ModeloMeseros::mdlActualizarMesero($tablaMeseros, $item1a, $valor1a, $valorMesero);

				/*=============================================
				ACTUALIZAR LAS COMPRAS DEL MESERO Y REDUCIR EL STOCK Y AUMENTAR LAS VENTAS DE LOS PRODUCTOS
				=============================================*/

				$listaProductos_2 = json_decode($listaProductos, true);

				$totalProductosComprados_2 = array();

				foreach ($listaProductos_2 as $key => $value) {

					array_push($totalProductosComprados_2, $value["cantidad"]);
					
					$tablaProductos_2 = "productos";

					$item_2 = "id";
					$valor_2 = $value["id"];
					$orden = "id";

					$traerProducto_2 = ModeloProductos::mdlMostrarProductos($tablaProductos_2, $item_2, $valor_2, $orden);

					$item1a_2 = "ventas";
					$valor1a_2 = $value["cantidad"] + $traerProducto_2["ventas"];

					$nuevasVentas_2 = ModeloProductos::mdlActualizarProducto($tablaProductos_2, $item1a_2, $valor1a_2, $valor_2);

					$item1b_2 = "stock";
					$valor1b_2 = $traerProducto_2["stock"] - $value["cantidad"];

					$nuevoStock_2 = ModeloProductos::mdlActualizarProducto($tablaProductos_2, $item1b_2, $valor1b_2, $valor_2);

				}

				$tablaMeseros_2 = "meseros";

				$item_2 = "id";
				$valor_2 = $_POST["seleccionarMesero"];

				$traerMesero_2 = ModeloMeseros::mdlMostrarMeseros($tablaMeseros_2, $item_2, $valor_2);

				$item1a_2 = "compras";
				$valor1a_2 = array_sum($totalProductosComprados_2) + $traerMesero_2["compras"];

				$comprasMesero_2 = ModeloMeseros::mdlActualizarMesero($tablaMeseros_2, $item1a_2, $valor1a_2, $valor_2);

				$item1b_2 = "ultima_compra";

				date_default_timezone_set('America/Bogota');

				$fecha = date('Y-m-d');
				$hora = date('H:i:s');
				$valor1b_2 = $fecha.' '.$hora;

				$fechaMesero_2 = ModeloMeseros::mdlActualizarMesero($tablaMeseros_2, $item1b_2, $valor1b_2, $valor_2);

			}

			/*=============================================
			GUARDAR CAMBIOS DE LA COMPRA
			=============================================*/	

			$datos = array("id_vendedor"=>$_POST["idVendedor"],
						   "id_mesero"=>$_POST["seleccionarMesero"],
						   "codigo"=>$_POST["editarVenta"],
						   "productos"=>$listaProductos,
						   "total"=>$_POST["totalVenta"]);

			$respuesta = ModeloVentas::mdlEditarVenta($tabla, $datos);

			if($respuesta == "ok"){

				
				echo'<script>

				localStorage.removeItem("rango");

				swal({
					  type: "success",
					  title: "La venta ha sido editada correctamente",
					  showConfirmButton: true,
					  confirmButtonText: "Cerrar"
			 		  }).then((result) => {
								if (result.value) {

								window.location = "ventas";

								}
							})

				</script>'; 

			}

		}

	}


	/*=============================================
	ELIMINAR VENTA
	=============================================*/

	static public function ctrEliminarVenta(){

		if(isset($_GET["idVenta"]) ){
		
			$tabla = "ventas";

			$item = "id";
			$valor = $_GET["idVenta"];

			$traerVenta = ModeloVentas::mdlMostrarVentas($tabla, $item, $valor);
			
			/*=============================================
			ACTUALIZAR FECHA ÚLTIMA COMPRA
			=============================================*/

			$tablaMeseros = "meseros";

			$itemVentas = null;
			$valorVentas = null;

			$traerVentas = ModeloVentas::mdlMostrarVentas($tabla, $itemVentas, $valorVentas);

			$guardarFechas = array();


			// Verificar que $traerVenta y $traerVenta["id_mesero"] existen
			if (isset($traerVenta["id_mesero"]) && is_array($traerVentas)) {
				foreach ($traerVentas as $value) {
					if (isset($value["id_mesero"]) && $value["id_mesero"] == $traerVenta["id_mesero"]) {
						array_push($guardarFechas, $value["fecha"]);
					}
				}
			} 

			
			if(count($guardarFechas) > 1){

				if($traerVenta["fecha"] > $guardarFechas[count($guardarFechas)-2]){

					$item = "ultima_compra";
					$valor = $guardarFechas[count($guardarFechas)-2];
					$valorIdMesero = $traerVenta["id_mesero"];

					$comprasMesero = ModeloMeseros::mdlActualizarMesero($tablaMeseros, $item, $valor, $valorIdMesero);

				}else{

					$item = "ultima_compra";
					$valor = $guardarFechas[count($guardarFechas)-1];
					$valorIdMesero = $traerVenta["id_mesero"];

					$comprasMesero = ModeloMeseros::mdlActualizarMesero($tablaMeseros, $item, $valor, $valorIdMesero);

				}


			}else{

				$item = "ultima_compra";
				$valor = "0000-00-00 00:00:00";
				$valorIdMesero = $traerVenta["id_mesero"];

				$comprasMesero = ModeloMeseros::mdlActualizarMesero($tablaMeseros, $item, $valor, $valorIdMesero);

			}
		
			/*=============================================
			FORMATEAR TABLA DE PRODUCTOS Y LA DE MESEROS
			=============================================*/

			// $productos =  json_decode($traerVenta["productos"], true);
			$productos = ModeloVentas::mdlMostrarDetalleVentas($traerVenta["id"]);
	
			$totalProductosComprados = array();

			foreach ($productos as $value) {

				array_push($totalProductosComprados, $value["cantidad"]);
				
				$tablaProductos = "productos";

				$item = "id";
				$valor = $value["id_producto"];
				$orden = "id";

				$traerProducto = ModeloProductos::mdlMostrarProductos($tablaProductos, $item, $valor, $orden);


				$item1a = "ventas";
				$valor1a = $traerProducto["ventas"] - $value["cantidad"];

				$nuevasVentas = ModeloProductos::mdlActualizarProducto($tablaProductos, $item1a, $valor1a, $valor);

				$item1b = "stock";
				$valor1b = $value["cantidad"] + $traerProducto["stock"];

				$nuevoStock = ModeloProductos::mdlActualizarProducto($tablaProductos, $item1b, $valor1b, $valor);

			}

			$tablaMeseros = "meseros";

			$itemMesero = "id";
			$valorMesero = $traerVenta["id_mesero"];

			$traerMesero = ModeloMeseros::mdlMostrarMeseros($tablaMeseros, $itemMesero, $valorMesero);

			$item1a = "compras";
			$valor1a = $traerMesero["compras"] - array_sum($totalProductosComprados);

			$comprasMesero = ModeloMeseros::mdlActualizarMesero($tablaMeseros, $item1a, $valor1a, $valorMesero);

			/*=============================================
			ELIMINAR VENTA
			=============================================*/

			$respuesta = ModeloVentas::mdlEliminarVenta($tabla, $_GET["idVenta"]);
			
			if($respuesta == "ok"){
			
				echo'<script>

				swal({
					  type: "success",
					  title: "La venta ha sido borrada correctamente",
					  showConfirmButton: true,
					  confirmButtonText: "Cerrar"
					  }).then(function(result){
								if (result.value) {

								window.location = "ventas";

								}
							})

				</script>'; 
			}
		}

	}

	/*=============================================
	RANGO FECHAS
	=============================================*/	

	static public function ctrRangoFechasVentas($fechaInicial, $fechaFinal){

		$tabla = "ventas";

		$respuesta = ModeloVentas::mdlRangoFechasVentas($tabla, $fechaInicial, $fechaFinal);

		return $respuesta;
		
	}

	static public function ctrRangoFechasVentasRealizadas($fechaInicial, $fechaFinal){

		$tabla = "ventas";

		$respuesta = ModeloVentas::mdlRangoFechaVentasRealizadas($tabla, $fechaInicial, $fechaFinal);

		return $respuesta;
		
	}

	/*=============================================
	DESCARGAR EXCEL
	=============================================*/

	public function ctrDescargarReporte(){

		if(isset($_GET["reporte"])){

			$tabla = "ventas";

			if(isset($_GET["fechaInicial"]) && isset($_GET["fechaFinal"])){

				$ventas = ModeloVentas::mdlRangoFechasVentas($tabla, $_GET["fechaInicial"], $_GET["fechaFinal"]);

			}else{

				$item = null;
				$valor = null;

				$ventas = ModeloVentas::mdlMostrarVentas($tabla, $item, $valor);

			}


			/*=============================================
			CREAMOS EL ARCHIVO DE EXCEL
			=============================================*/

			$Name = $_GET["reporte"].'.xls';

			header('Expires: 0');
			header('Cache-control: private');
			header("Content-type: application/vnd.ms-excel"); // Archivo de Excel
			header("Cache-Control: cache, must-revalidate"); 
			header('Content-Description: File Transfer');
			header('Last-Modified: '.date('D, d M Y H:i:s'));
			header("Pragma: public"); 
			header('Content-Disposition:; filename="'.$Name.'"');
			header("Content-Transfer-Encoding: binary");

			echo utf8_decode("<table border='0'> 

				<tr> 
					<td style='font-weight:bold; border:1px solid #eee;'>CÓDIGO</td> 
					<td style='font-weight:bold; border:1px solid #eee;'>MESERO</td>
					<td style='font-weight:bold; border:1px solid #eee;'>VENDEDOR</td>
					<td style='font-weight:bold; border:1px solid #eee;'>CANTIDAD</td>
					<td style='font-weight:bold; border:1px solid #eee;'>PRODUCTOS</td>
					<td style='font-weight:bold; border:1px solid #eee;'>TOTAL</td>		
					<td style='font-weight:bold; border:1px solid #eee;'>FECHA</td>		
					</tr>");

			foreach ($ventas as $row => $item){

				$mesero = ControladorMeseros::ctrMostrarMeseros("id", $item["id_mesero"]);
				$vendedor = ControladorUsuarios::ctrMostrarUsuarios("id", $item["id_vendedor"]);

			 echo utf8_decode("<tr>
			 			<td style='border:1px solid #eee;'>".$item["codigo"]."</td> 
			 			<td style='border:1px solid #eee;'>".$mesero["nombre"]."</td>
			 			<td style='border:1px solid #eee;'>".$vendedor["nombre"]."</td>
			 			<td style='border:1px solid #eee;'>");

			
				$productos = ModeloVentas::mdlMostrarDetalleVentas($item["id"]);

			 	foreach ($productos as $valueProductos) {
			 			
			 			echo utf8_decode($valueProductos["cantidad"]."<br>");
			 		}

			 	echo utf8_decode("</td><td style='border:1px solid #eee;'>");	

		 		foreach ($productos as $valueProductos) {
			 			
		 			echo utf8_decode($valueProductos["producto"]."<br>");
		 		
		 		}

		 		echo utf8_decode("</td>
				
					
					<td style='border:1px solid #eee;'>$ ".number_format($item["total"],2)."</td>
				
					<td style='border:1px solid #eee;'>".substr($item["fecha"],0,10)."</td>		
		 			</tr>");


			}


			echo "</table>";

		}

	}


	/*=============================================
	SUMA TOTAL VENTAS
	=============================================*/

	static public function ctrSumaTotalVentas(){

		$tabla = "ventas";

		$respuesta = ModeloVentas::mdlSumaTotalVentas($tabla);

		return $respuesta;

	}
		/*=============================================
	SUMA TOTAL VENTAS DEL MES
	=============================================*/

	static public function ctrVentasTotalMes(){

		$tabla = "ventas";

		$respuesta = ModeloVentas::mdlVentasTotalMes($tabla);

		return $respuesta;

	}
	/*=============================================
	SUMA TOTAL DEL DIA
	=============================================*/

	static public function ctrVentasTotalDia(){

		$tabla = "ventas";

		$respuesta = ModeloVentas::mdlVentasTotalDia($tabla);

		return $respuesta;

	}
	/*=============================================
	rango de ventas:
	=============================================*/
	static public function ctrRangoFechasVentasPdf($fechaInicial, $fechaFinal,$id_proveedor){

		$tabla = "ventas";
	
		$respuesta = ModeloVentas::mdlRangoFechasVentasPdf($tabla, $fechaInicial, $fechaFinal,$id_proveedor);
	
		return $respuesta;
	}
	/*=============================================
	rango de ventas top meseros:
	=============================================*/
	static public function ctrRangoFechasVentasTopMeserosPdf($fechaInicial, $fechaFinal){

		$tabla = "ventas";
	
		$respuesta = ModeloVentas::mdlRangoFechasVentasTopMeseroPdf($tabla, $fechaInicial,$fechaFinal);
	
		return $respuesta;
	}
	/*=============================================
	rango fechas para obtener top productos mas vendidos:
	=============================================*/
	static public function ctrRangoFechasTopProductoMasVendidosPdf($fechaInicial, $fechaFinal){

		$tabla = "ventas";
	
		$respuesta = ModeloVentas::mdlRangoFechasTopProductoVendidos($tabla, $fechaInicial,$fechaFinal);
	
		return $respuesta;
	}
}