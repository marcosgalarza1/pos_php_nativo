<?php

class ControladorArqueo {

    static public function ctrRegistrarArqueo() {
        if(isset($_POST["total_efectivo_en_caja"])) {
            
            // Validaciones
            if(empty($_POST["idVendedor"])) {
                echo "<script>
                    toastr.error('El usuario es obligatorio', 'Error');
                </script>";
                return;
            }

            if(empty($_POST["idCaja"])) {
                echo "<script>
                    toastr.error('Debe seleccionar una caja', 'Error');
                </script>";
                return;
            }

            if(empty($_POST["nro_ticket"]) || $_POST["nro_ticket"] == "0") {
                echo "<script>
                    toastr.error('El número de ticket es obligatorio', 'Error');
                </script>";
                return;
            }

            if(empty($_POST["total_efectivo_en_caja"]) || $_POST["total_efectivo_en_caja"] == "0.00") {
                echo "<script>
                    toastr.error('Debe ingresar el efectivo en caja', 'Error');
                </script>";
                return;
            }
            $estado = ($_POST["opcion"] == "abierta") ? "abierta" : "cerrada";
            if($estado == "cerrada"){
                $datos = array(
                    "fecha_apertura" => $_POST["fecha_apertura_cierre"],
                    "Bs200" => $_POST["cantidad_200"],
                    "Bs100" => $_POST["cantidad_100"],
                    "Bs50" => $_POST["cantidad_50"],
                    "Bs20" => $_POST["cantidad_20"],
                    "Bs10" => $_POST["cantidad_10"],
                    "Bs5" => $_POST["cantidad_5"],
                    "Bs2" => $_POST["cantidad_2"],
                    "Bs1" => $_POST["cantidad_1"],
                    "Bs050" => $_POST["cantidad_050"],
                    "Bs020" => $_POST["cantidad_020"],
                    "monto_apertura" => $_POST["total_efectivo_en_caja"],
                    "estado" => $estado,
                    "id_usuario" => $_POST["idVendedor"],
                    "idCaja" => $_POST["idCaja"],
                    "nro_ticket" =>  $_POST["nro_ticket"]
                );
            }else{
              
            }
         

            $respuesta = ModeloArqueo::mdlRegistrarArqueo($datos);

            if($respuesta == "ok"){
                echo '<script> swal({
						  type: "success",
						  title: "¡El arqueo ha sido guardado correctamente!",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
								if (result.value) {
								window.location = "arqueo-de-caja";
								}
							})
					</script>';
            }
        }
    }

    static public function ctrVerificarCajaAbierta($id_usuario) {
        return ModeloArqueo::mdlVerificarCajaAbierta($id_usuario);
    }
} 