<?php

if ($_SESSION["perfil"] == "Vendedor") {

  echo '<script>

    window.location = "inicio";

  </script>';

  return;
}

?>




<div class="content-wrapper text-uppercase ">

  <section class="content-header">


    <h1 style="font-family: Arial, sans-serif; font-weight: bold;">
      Productos Eliminados

    </h1>

    <ol class="breadcrumb">

      <li><a href="inicio"><i class="f-a fa-dashboard"></i> Inicio</a></li>

      <li class="active">Productos Eliminados</li>

    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
   

        <a class="btn btn-primary" href="productos">
          <i class="material-icons"></i>
          <span class="icon-name"> Volver </span>
        </a>

      </div>

      <div class="box-body">

        <table class="table table-bordered table-striped dt-responsive text-uppercase tablaProductosEliminados" width="100%">

          <thead>

            <tr>

              <th style="width:10px">#</th>
              <th style="width:10px">Imagen</th>
              <th>Código</th>
              <th>Descripcion</th>
              <th>Categoria</th>
              <th>Cantidad</th>
              <th>Precio</th>
              <th>Agregado</th>
              <th>Accion</th>

            </tr>

          </thead>



        </table>
        <input type="hidden" value="<?php echo $_SESSION['perfil']; ?>" id="perfilOculto">
      </div>

    </div>

  </section>

</div>


<?php

$eliminarProducto = new ControladorProductos();
$eliminarProducto->ctrEliminarProducto();

?>