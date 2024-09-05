
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
           
          <!-- <button type="button" class="btn btn-default pull-right" id="daterange-btn-compras">
           
           <span>
             <i class="fa fa-calendar"></i> Rango de fecha
           </span>

           <i class="fa fa-caret-down"></i>

        </button> -->

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas text-uppercase tablaComprasRealizadas" width="100%">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Codigo</th>
           <th>total</th>
           <th>fecha</th> 
           <th>id_usuario</th>
           <th>id_proveedor</th>
           <th>acciones</th>
      
           <!-- <th>Fecha</th>
           <th>Acciones</th> -->

         </tr> 

        </thead>

 

       </table>

       <?php

      $eliminarVenta = new ControladorCompras();
      $eliminarVenta -> ctrEliminarVenta();

      ?>
      
      </div>

    </div>

  </section>

</div>
<script>
  $('.tablaComprasRealizadas').DataTable( {
    "ajax": "ajax/datatable-compras-realizadas.ajax.php",
    "deferRender": true,
	"retrieve": true,
	"processing": true,
	 "language": {

			"sProcessing":     "Procesando...",
			"sLengthMenu":     "Mostrar _MENU_ registros",
			"sZeroRecords":    "No se encontraron resultados",
			"sEmptyTable":     "Ningún dato disponible en esta tabla",
			"sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
			"sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0",
			"sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
			"sInfoPostFix":    "",
			"sSearch":         "Buscar:",
			"sUrl":            "",
			"sInfoThousands":  ",",
			"sLoadingRecords": "Cargando...",
			"oPaginate": {
			"sFirst":    "Primero",
			"sLast":     "Último",
			"sNext":     "Siguiente",
			"sPrevious": "Anterior"
			},
			"oAria": {
				"sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
				"sSortDescending": ": Activar para ordenar la columna de manera descendente"
			}

	}

} );
</script>