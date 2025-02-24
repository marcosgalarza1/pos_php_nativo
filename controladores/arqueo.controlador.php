<?php

class ControladorArqueo {

    static public function ctrRegistrarArqueo() {
        if(isset($_POST["total_general"])) {
            
            $datos = array(
                "fecha_apertura" => $_POST["fecha_inicio"],
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
                "total" => $_POST["total_general"],
                "estado" => ($_POST["opcion"] == "op1") ? "abierta" : "cerrada",
                "id_usuario" => $_POST["idVendedor"],
                "nroTicket" => ModeloArqueo::mdlObtenerUltimoNroTicket() + 1
            );

            $respuesta = ModeloArqueo::mdlRegistrarArqueo($datos);

            if($respuesta == "ok"){
                echo '<script>
                    Swal.fire({
                        icon: "success",
                        title: "¡El arqueo ha sido guardado correctamente!",
                        showConfirmButton: true,
                        confirmButtonText: "Cerrar"
                    }).then((result)=>{
                        if(result.value){
                            window.location = "arqueo-de-caja";
                        }
                    });
                </script>';
            }
        }
    }
} 