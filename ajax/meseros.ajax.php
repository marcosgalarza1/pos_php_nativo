<?php

require_once "../controladores/meseros.controlador.php";
require_once "../modelos/meseros.modelo.php";

class AjaxMeseros{

	/*=============================================
	EDITAR MESERO
	=============================================*/	

	public $idMesero;

	public function ajaxEditarMesero(){

		$item = "id";
		$valor = $this->idMesero;

		$respuesta = ControladorMeseros::ctrMostrarMeseros($item, $valor);

		echo json_encode($respuesta);


	}

/*=============================================
VALIDAR NO REPETIR MESERO
=============================================*/

public $validarMesero;

public function ajaxValidarMesero()
{
    $item = "mesero";
    $valor = $this->validarMesero;

    $respuesta = ControladorMeseros::ctrMostrarMeseros($item, $valor);

    echo json_encode($respuesta);
}
}
/*=============================================
EDITAR MESERO
=============================================*/	

if(isset($_POST["idMesero"])){

	$mesero = new AjaxMeseros();
	$mesero -> idMesero = $_POST["idMesero"];
	$mesero -> ajaxEditarMesero();

}



/*=============================================
VALIDAR NO REPETIR MESERO
=============================================*/

if (isset($_POST["validarMesero"])) {

    $valMesero = new AjaxMeseros();
    $valMesero->validarMesero = $_POST["validarMesero"];
    $valMesero->ajaxValidarMesero();

}


