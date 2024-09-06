<div class="content-wrapper">

  <section class="content-header">
    <h1>Reportes Compras</h1>
    <ol class="breadcrumb">
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li class="active">Administrar categorías</li>
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
                  <label><i class="text-danger">*</i> Fecha de inicio:</label>
                  <div class="input-group date">
                    <input type="date" id="fecha_inicio" name="fecha_inicio" value="<?php echo date('Y-m-01'); ?>"  class="form-control" required/>
                  </div>
                </div>
              </div>

              <div class="col-12 col-sm-4">
                <div class="form-group">
                  <label><i class="text-danger">*</i> Fecha de fin:</label>
                  <div class="input-group date">
                    <input type="date" id="fecha_fin" name="fecha_fin"  value="<?php echo date('Y-m-t'); ?>" class="form-control" required/>
                  </div>
                </div>
              </div>

              <div class="col-12 col-sm-4">
                <div class="form-group">
                  <label><i class="text-danger">*</i>Proveedor</label>
                  <select class="form-control" id="id_proveedor" name="id_proveedor" required>
                    <option value="0">Todas</option>
                    
                    <?php
                      $item = null;
                      $valor = null;
                      $proveedores = ControladorProveedors::ctrMostrarProveedors($item, $valor);

                       foreach ($proveedores as $key => $value) {
                         echo '<option value="'.$value["id"].'">'.$value["nombre"].'</option>';
                       }
                    ?>
                  </select>
                </div>
              </div>
            </div>

            <div class="text-right">
              <button type="button" class="btn btn-sm btn-warning" onclick="generatePDF()"> 
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

function generatePDF() {
    // Capturar valores de los inputs
    const fechaInicio = document.getElementById('fecha_inicio').value;
    const fechaFin = document.getElementById('fecha_fin').value;
    const idProveedor = document.getElementById('id_proveedor').value;
    const idUsuario = document.getElementById('id_usuario').value;


    // Validar campos
    const fechaInicioObj = new Date(fechaInicio);
    const fechaFinObj = new Date(fechaFin);

    if (fechaInicioObj > fechaFinObj) {
      swal({
            icon: 'warning',
            title: 'Advertencia',
            text: 'Por favor, seleccione una fecha de inicio menor a la fecha fin.',
        });

        return;
    }
    // Validar campos
    if (!fechaInicio) {
      swal({
            icon: 'warning',
            title: 'Advertencia',
            text: 'Por favor, seleccione una fecha de inicio.',
        });
        return;
    }
    if (!fechaFin) {
        swal({
            icon: 'warning',
            title: 'Advertencia',
            text: 'Por favor, seleccione una fecha de fin.',
        });
        return;
    }


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
        "extensiones/tcpdf/pdf/reporte-compras.php?fechaInicio=" + encodeURIComponent(fechaInicio) +
        "&fechaFin=" + encodeURIComponent(fechaFin) +
        "&idProveedor=" + encodeURIComponent(idProveedor) +
        "&idUsuario=" + encodeURIComponent(idUsuario),
        "_blank",
        windowFeatures
    );
}
</script>
