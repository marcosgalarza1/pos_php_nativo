<?php
$item = null;
$valor = null;
$datos = ControladorReportes::ctrGananciasMesesAnios();


?>

<div class="content-wrapper">

    <section class="content-header">
        <h1>Reportes de Ganancias</h1>
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
                        <div class="row ">
                            <div class="col-12 col-sm-4 ">
                                <div class="mb-2">
                                    <label><i class="text-danger">*</i> Mes:</label>
                                    <select class="form-control" id="month" name="month" required>
                                        <option value="" disabled selected>Seleccionar mes</option>
                                        <?php foreach ($datos['meses'] as $mes) {
                                            switch ($mes['mes']) {
                                                case 1:
                                                    $mess = "Enero";
                                                    break;
                                                case 2:
                                                    $mess = "Febrero";
                                                    break;
                                                case 3:
                                                    $mess = "Marzo";
                                                    break;
                                                case 4:
                                                    $mess = "Abril";
                                                    break;
                                                case 5:
                                                    $mess = "Mayo";
                                                    break;
                                                case 6:
                                                    $mess = "Junio";
                                                    break;
                                                case 7:
                                                    $mess = "Julio";
                                                    break;
                                                case 8:
                                                    $mess = "Agosto";
                                                    break;
                                                case 9:
                                                    $mess = "Septiembre";
                                                    break;
                                                case 10:
                                                    $mess = "Octubre";
                                                    break;
                                                case 11:
                                                    $mess = "Noviembre";
                                                    break;
                                                case 12:
                                                    $mess = "Diciembre";
                                                    break;
                                            }
                                        ?>
                                            <option value="<?php echo $mes['mes']; ?>"><?php echo $mess; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-12 col-sm-4">
                                <div class="mb-2">
                                    <label><i class="text-danger">*</i> Año:</label>
                                    <select id="year" name="year" class="form-control" required>
                                        <option value="" disabled selected>Seleccionar año</option>
                                        <?php foreach ($datos['years'] as $year) { ?>
                                            <option value="<?php echo $year['years']; ?>"><?php echo $year['years']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-12 col-sm-4">
                                <div class="d-flex justify-content-center">
                                    <div>
                                        <label>&nbsp;</label><br>
                                        <button type="button" class="btn btn-success" onclick="GanaciasgeneratePDF()"><i class="fa fa-print"></i> Generate PDF</button>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div><!--/body card-->
                </div><!--/CARD FIN-->

            </div>

        </div>

        <div class="box">

            <div class="box-body">

                <div class="card card-secondary card-outline">
                    <div class="card-header">
                        <h3 class="card-title text-bold">GANANCIAS POR AÑO</h3>

                    </div><!--/.card-header-->
                    <div class="card-body">
                        <!-- alert -->

                        <div class="row ">
                            <div class="col-12 col-sm-4 ">
                                <div class="mb-2">
                                    <label><i class="text-danger">*</i>Año inicio:</label>
                                    <select class="form-control" id="startyear" name="startyear" required>
                                        <option value="" disabled selected>Seleccionar año inicio</option>
                                        <?php foreach ($datos['years'] as $year) { ?>
                                            <option value="<?php echo $year['years']; ?>"><?php echo $year['years']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-12 col-sm-4">
                                <div class="mb-2">
                                    <label><i class="text-danger">*</i>Año fin:</label>
                                    <select class="form-control" id="endyear" name="endyear" required>
                                        <option value="" disabled selected>Seleccionar año fin</option>
                                        <?php foreach ($datos['years'] as $year) { ?>
                                            <option value="<?php echo $year['years']; ?>"><?php echo $year['years']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-12 col-sm-4">
                                <div class="d-flex justify-content-center">
                                    <div>
                                        <label>&nbsp;</label><br>

                                        <button type="button" class="btn btn-success" onclick="GanaciasgeneratePDFYear()"><i class="fa fa-print"></i> Generate PDF</button>

                                    </div>
                                </div>
                            </div>
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

    function GanaciasgeneratePDF() {

        // Capturar valores de los inputs
        const mes = document.getElementById('month').value;
        const anio = document.getElementById('year').value;
        const idUsuario = document.getElementById('id_usuario').value;

        // Validar campos
        if (!mes) {
            swal({
                icon: 'warning',
                title: 'Advertencia',
                text: 'Por favor, seleccione una Mes.',
            });
            return;
        }
        if (!anio) {
            swal({
                icon: 'warning',
                title: 'Advertencia',
                text: 'Por favor, seleccione el Año.',
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
            "extensiones/tcpdf/pdf/pdf-ganancias.php?month=" + encodeURIComponent(mes) +
            "&year=" + encodeURIComponent(anio) +
            "&idUsuario=" + encodeURIComponent(idUsuario),
            "_blank",
            windowFeatures
        );
    }



    function GanaciasgeneratePDFYear() {

        // Capturar valores de los inputs
        const startyear = document.getElementById('startyear').value;
        const endyear = document.getElementById('endyear').value;
        const idUsuario = document.getElementById('id_usuario').value;

        // Validar campos
        if (!startyear) {
            swal({
                icon: 'warning',
                title: 'Advertencia',
                text: 'Por favor, seleccione el año de inicio.',
            });
            return;
        }
        if (!endyear) {
            swal({
                icon: 'warning',
                title: 'Advertencia',
                text: 'Por favor, seleccione el año de fin.',
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
            "extensiones/tcpdf/pdf/pdf-ganancias-year.php?yearini=" + encodeURIComponent(startyear) +
            "&yearfin=" + encodeURIComponent(endyear) +
            "&idUsuario=" + encodeURIComponent(idUsuario),
            "_blank",
            windowFeatures
        );
    }
</script>