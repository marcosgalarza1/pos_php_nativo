<?php

require_once "../controladores/compras.controlador.php";
require_once "../modelos/compras.modelo.php";

class TablaProductosVentas{

 	/*=============================================
 	 MOSTRAR LA TABLA DE PRODUCTOS
  	=============================================*/ 

	public function mostrarTablaProductosVentas(){

		$item = null;
    	$valor = null;
		$orden = "id";

  		$compras = ControladorCompras::ctrMostrarCompras($item, $valor, $orden);	
		
  		if(count($compras) == 0){
  			// En caso de que no haya compras, retornamos un JSON vacío
  			echo json_encode(["data" => []]);
		  	return;
  		}
		
  		// Creamos un array para almacenar los datos
  		$datos = [];

  		for($i = 0; $i < count($compras); $i++){

		  	// Traemos las acciones (botones)
		  	$botones =  "<div class='btn-group'><button class='btn btn-primary agregarProducto recuperarBoton' idProducto='".$compras[$i]["id"]."'>Agregar</button></div>"; 

		  	// Formateamos cada registro de compra como un array
		  	$datos[] = [
			      ($i+1),
			      $compras[$i]["codigo"],
			      $compras[$i]["fecha_alta"],
			      number_format($compras[$i]["total"], 2),
			      $compras[$i]["id_usuario"],
			      $compras[$i]["id_proveedor"],
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
$activarProductosVentas = new TablaProductosVentas();
$activarProductosVentas->mostrarTablaProductosVentas();

?>
