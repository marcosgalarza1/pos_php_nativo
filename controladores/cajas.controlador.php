<?php

class ControladorCajas{

	/*=============================================
	MOSTRAR CAJAS
	=============================================*/

	static public function ctrMostrarCajas($item, $valor,$estado=1){

		$tabla = "cajas";
	

		$respuesta = ModeloCajas::mdlMostrarCajas($tabla, $item, $valor,$estado);

		return $respuesta;
	
	}

	static public function ctrMostrarCajasActivasInactivas($item, $valor){

		$tabla = "caja";

		$respuesta = ModeloCajas::mdlMostrarCajasActivasInactivas($tabla, $item, $valor);

		return $respuesta;
	
	}
}





