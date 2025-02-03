<?php

require_once "conexion.php";

class ModeloCajas{

   /*=============================================
	MOSTRAR CAJAS
	=============================================*/

	static public function mdlMostrarCajas($tabla, $item, $valor,$estado){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item AND estado=:estado ORDER BY id DESC ");

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> bindParam(":estado",$estado, PDO::PARAM_STR);
			$stmt -> execute();

			return $stmt -> fetch();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla  WHERE estado=:estado  ORDER BY id DESC ");
			$stmt -> bindParam(":estado",$estado, PDO::PARAM_STR);
			$stmt -> execute();

			return $stmt -> fetchAll();

		}

		$stmt -> close();
		$stmt = null;

	}

	static public function mdlMostrarCajasActivasInactivas($tabla, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item  ORDER BY id DESC ");
			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetch();

		}else{
			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id DESC ");
			$stmt -> execute();
			return $stmt -> fetchAll();

		}

		$stmt -> close();
		$stmt = null;
	}

}