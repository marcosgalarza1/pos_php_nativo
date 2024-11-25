<?php

require_once "../../controladores/compras.controlador.php";
require_once "../../modelos/compras.modelo.php";

class TablaProductosVentasEliminadas{

 	/*=============================================
 	 MOSTRAR LA TABLA DE PRODUCTOS
  	=============================================*/ 

	public function mostrarTablaProductosEliminadas(){

  		$compras = ControladorCompras::ctrComprasRealizadas(estado:0);	
		
  		if(count($compras) == 0){
  			// En caso de que no haya compras, retornamos un JSON vacío
  			echo json_encode(["data" => []]);
		  	return;
  		}
		
  		// Creamos un array para almacenar los datos
  		$datos = [];

  		for($i = 0; $i < count($compras); $i++){

	
			  $botones ="<div class='btn-group'>";
			  /*=============================================
			  TRAEMOS LAS ACCIONES
			  =============================================*/
			  $botones.= "<button class='btn btn-info btnImprimirCompra' codigoCompra='".$compras[$i]["codigo"]."'><i class='fa fa-print'></i></button>"; 

			 $botones.="</div>";

		  	// Formateamos cada registro de compra como un array
		  	$datos[] = [
			      ($i+1),
			      $compras[$i]["codigo"],
				  $compras[$i]["proveedor"],
				  $compras[$i]["usuario"],
			      number_format($compras[$i]["total"], 2),
				  $compras[$i]["fecha_alta"],
			      $botones
		  	];
  		}

  		// Convertimos los datos a JSON y los enviamos como respuesta
  		echo json_encode(["data" => $datos]);
	}
}

/*=============================================
ACTIVAR TABLA DE PRODUCTOS
=============================================*/ 
$activarProductosVentas = new TablaProductosVentasEliminadas();
$activarProductosVentas->mostrarTablaProductosEliminadas();

?>
