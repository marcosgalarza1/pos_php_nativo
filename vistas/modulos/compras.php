
<?php

if($_SESSION["perfil"] == "Especial"){

  echo '<script>

    window.location = "inicio";

  </script>';

  return;

}

?>


<div class="content-wrapper  text-uppercase ">

  <section class="content-header">
  <h1 style="font-family: Arial, sans-serif; font-weight: bold;">
      
      Administrar compras
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio </a></li>
      
      <li class="active">Administrar compras</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
        <a href="crear-compra">

          <button class="btn btn-primary">
            Agregar compra
          </button>
          </a>
           
          <button type="button" class="btn btn-default pull-right" id="daterange-btn-compras">
           
           <span>
             <i class="fa fa-calendar"></i> Rango de fecha
           </span>

           <i class="fa fa-caret-down"></i>

        </button>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas text-uppercase " width="100%">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>total</th>
           <th>id_usuario</th>
           <th>estado</th>
      
           <th>fecha</th> 
           <!-- <th>Fecha</th>
           <th>Acciones</th> -->

         </tr> 

        </thead>

        <tbody>

        <?php

              if(isset($_GET["fechaInicial"])){

                $fechaInicial = $_GET["fechaInicial"];
                $fechaFinal = $_GET["fechaFinal"];

              }else{

                $fechaInicial = null;
                $fechaFinal = null;

              }

          $respuesta = ControladorCompras::ctrRangoFechasCompras($fechaInicial, $fechaFinal);


          foreach ($respuesta as $key => $value) {
           
           echo '<tr>

                  <td>'.($key+1).'</td>

                  <td>'.$value["fecha_alta"].'</td>';

                  // $itemCliente = "id";
                  // $valorCliente = $value["id_cliente"];

                  // $respuestaCliente = ControladorClientes::ctrMostrarClientes($itemCliente, $valorCliente);

                  // echo '<td>'.$respuestaCliente["nombre"].'</td>';

                  $itemUsuario = "id";
                  $valorUsuario = $value["id_usuario"];

                  $respuestaUsuario = ControladorUsuarios::ctrMostrarUsuarios($itemUsuario, $valorUsuario);

                  echo '<td>'.$respuestaUsuario["nombre"].'</td>

                

                 

                  <td>Bs '.number_format($value["total"],2).'</td>

          

                  <td>

                    <div class="btn-group">';
                      
                      echo '<button class="btn btn-info btnImprimirCompra" codigoCompra="'.$value["codigo"].'">
                        <i class="fa fa-print"></i>
                      </button>';
                      
                      // Comprobar el rol del usuario
                      if ($_SESSION["perfil"] == "Administrador") {
                        
                        echo '<button class="btn btn-danger btnEliminarVenta" idVenta="'.$value["id"].'"><i class="fa fa-times"></i></button>';
                      }

                    echo '</div>  

                  </td>

                </tr>';
            }

        ?>
               
        </tbody>

       </table>

       <?php

      $eliminarVenta = new ControladorCompras();
      $eliminarVenta -> ctrEliminarVenta();

      ?>
      
      </div>

    </div>

  </section>

</div>
