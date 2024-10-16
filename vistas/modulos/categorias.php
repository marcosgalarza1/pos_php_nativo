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
    Administrar categorías

     </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Administrar categorías</li>
    
    </ol>

  </section>

  <section class="content">

  <div class="box">



  <div class="box-header with-border">


<!--       <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarCategoria">
       
          
       Agregar categoría
       
      </button> -->

      <a href="agregar-categoria" class="btn btn-primary">
      Agregar categoría
      </a>
      &nbsp;
      <a class="btn btn-primary" target="_blank" href="reporte_categoria.php">
            <i class="material-icons"></i>
            <span class="icon-name"> Imprimir </span>
              </a>

      </div>

      <div class="box-body">

        <table class="table table-bordered table-striped dt-responsive tablascategoria" width="100%">

          <thead>

            <tr>

              <th style="width:10px">#</th>
              <th>Categoria</th>
              <th>Fecha</th>
              <th>Acciones</th>

            </tr>

          </thead>

          <input type="hidden" value="<?php echo $_SESSION['perfil']; ?>" id="perfilOculto">
        </table>

      </div>

    </div>

  </section>

</div>



<!--=====================================
MODAL EDITAR CATEGORÍA
======================================-->

<div id="modalEditarCategoria" class="modal fade" role="dialog">

  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#6c757d; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar categoría</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE -->

            <div class="form-group">

              <div class="input-group">

              <span class="input-group-addon">
              <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAABWUlEQVR4nO2WvUoDQRSFv0a00AdIIwZBTGHjWkiasDGghU3QMliIoL02Yqu9lnkCfQXxBQL6EIo/hdiaJf4wMnIXhiWT2b9kRXLgsDtn594ze1guC2Nkx5pw5GgLY2MJ8Bycd9RfAI/Cc9EGYhboAcrBJ0v9CfDVZ7/Wjl3me0DH8mwC6ALLljrXgXcHGTeBT6DeJ+IDIAAWIjVTwFsM41dgMs+oGzFqQtbziLosCaiEDIC5LFF70shLSCXX1FGHTZJCRY019mNEvZKncVkWLUfUH8CqsTdt1C3xTPWRZGUQvn4RZGys/n3U3QJM37XxTQHG19p4EXgwxGfgSE4VarfAGfBtaJfAlbHWz06Bu8ibHQIvhnYvnr+YATaBLbnXKMmUWZeRqVEBdoCqMQarolWM8bohtSWj/7Z4TEfnqA/UGB5q4pH97zAh2rb+hRn7tihygj/k/n8cP6FvizvqF810AAAAAElFTkSuQmCC">
                </span>

                <input type="text" class="form-control input-lg" name="editarCategoria" id="editarCategoria" required>

                <input type="hidden" name="idCategoria" id="idCategoria" required>

              </div>

            </div>

          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-"style="background:#6c757d; color:white" >Guardar cambios</button>

      </div>

        <?php

        $editarCategoria = new ControladorCategorias();
        $editarCategoria->ctrEditarCategoria();

        ?>

      </form>

    </div>

  </div>

</div>

<?php

$borrarCategoria = new ControladorCategorias();
$borrarCategoria->ctrBorrarCategoria();

?>