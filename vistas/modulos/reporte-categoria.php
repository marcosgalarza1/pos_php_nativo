<div class="content-wrapper">

  <section class="content-header">
    <h1>Reportes de Producto según Categoria</h1>
    <ol class="breadcrumb">
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li class="active">Reporte según Categoria</li>
    </ol>
  </section>

  <section class="content">

    <div class="box">

  

      <div class="box-body">
       
        <div class="card card-secondary card-outline">
          <div class="card-body">
            <input type="hidden" id="id_usuario" name="id_usuario" value="<?php echo $_SESSION["id"]; ?>">
            <div class="row">
         

              <div class="col-12 col-sm-4">
                <div class="form-group">
                  <label><i class="text-danger">*</i>Categoria</label>
                  <select class="form-control" id="id_categoria" name="id_categoria" required>
                    <option value="0">Todas</option>
                    
                    <?php
                      $item = null;
                      $valor = null;
                      $categorias = ControladorCategorias::ctrMostrarCategorias($item, $valor);

                       foreach ($categorias as $key => $value) {
                         echo '<option value="'.$value["id"].'">'.$value["categoria"].'</option>';
                       }
                    ?>
                  </select>
                </div>
              </div>
            </div>

            <div class="text-right">
              <button type="button" class="btn btn-sm btn-warning" onclick="generateProductoCategoriaPDF()"> 
                <i class="fa fa-print"></i> Generate PDF
              </button>
            </div>

          </div><!--/body card-->
        </div><!--/CARD FIN-->

      </div>

    </div>

  </section>

</div>
<script>
// Variable global para mantener la referencia de la ventana emergente
var popupWindow = null;

function generateProductoCategoriaPDF() {
    // Capturar valores de los inputs
    const idCategoria = document.getElementById('id_categoria').value;
    const idUsuario = document.getElementById('id_usuario').value;



    // Tamaño de la ventana emergente
    const width = 800;
    const height = 600;

    // Configuración de la ventana emergente
    const left = (screen.width / 2) - (width / 2);
    const top = (screen.height / 2) - (height / 2);
    const windowFeatures = `menubar=no,toolbar=no,status=no,width=${width},height=${height},left=${left},top=${top}`;

    // Cierra la ventana emergente existente si está abierta
    if (popupWindow && !popupWindow.closed) {
        popupWindow.close();
    }

    // Abre la URL en una nueva ventana (popup)
    popupWindow = window.open(
        "extensiones/tcpdf/pdf/reporte-categoria.php?idCategoria=" + encodeURIComponent(idCategoria) +
        "&idUsuario=" + encodeURIComponent(idUsuario),
        "_blank",
        windowFeatures
    );
}
</script>
