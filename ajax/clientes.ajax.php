<?php

require_once "../controladores/clientes.controlador.php";
require_once "../modelos/clientes.modelo.php";

class AjaxClientes
{

	/*=============================================
	EDITAR CLIENTE
	=============================================*/

	public $idCliente;

	public function ajaxEditarCliente()
	{

		$item = "id";
		$valor = $this->idCliente;

		$respuesta = ControladorClientes::ctrMostrarClientes($item, $valor);

		echo json_encode($respuesta);
	}

	/*=============================================
VALIDAR NO REPETIR CLIENTE
=============================================*/

	public $validarCliente;

	public function ajaxValidarCliente()
	{
		$item = "cliente";
		$valor = $this->validarCliente;

		$respuesta = ControladorClientes::ctrMostrarClientes($item, $valor);

		echo json_encode($respuesta);
	}
}
/*=============================================
EDITAR CLIENTE
=============================================*/

if (isset($_POST["idCliente"])) {

	$cliente = new AjaxClientes();
	$cliente->idCliente = $_POST["idCliente"];
	$cliente->ajaxEditarCliente();
}



/*=============================================
VALIDAR NO REPETIR CLIENTE
=============================================*/

if (isset($_POST["validarCliente"])) {

	$valCliente = new AjaxClientes();
	$valCliente->validarCliente = $_POST["validarCliente"];
	$valCliente->ajaxValidarCliente();
}


if (isset($_GET["term"])) {

	$tabla = "clientes";
	$valor = $_GET["term"];  // Asegúrate de obtener el término de búsqueda correctamente

	// Asumiendo que estás utilizando un modelo para acceder a los datos
	$clientes = ModeloClientes::mdlBuscarClientes($tabla, $valor); // Cambia esto según tu modelo

	$returnData = array();

	if (!empty($clientes)) {
		foreach ($clientes as $row) {
			$data['id'] = $row['id'];
			$data['value'] = $row['nombre'];
			array_push($returnData, $data);
		}
	}
	echo json_encode($returnData);
}
