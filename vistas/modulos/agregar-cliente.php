<div class="content-wrapper text-uppercase">
    <!-- Header -->
    <section class="content-header">
        <h1>AGREGAR MESEROS</h1>
        <ol class="breadcrumb">
            <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>

            <li class="active">AGREGAR MESEROS</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="box">
            <div class="box-body">
                <form role="form" method="post">
                    <div class="row">
                        <!-- ENTRADA PARA EL NOMBRE -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>NOMBRE</strong></h4>
                                <input type="text" class="form-control input-lg" name="nuevoCliente" id="nuevoCliente" placeholder="Ingresar Nombre" required>
                            </div>
                        </div>
                        <!-- ENTRADA PARA LA DIRECCIÓN -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>DIRECCIÓN</strong></h4>
                                <input type="text" class="form-control input-lg" name="nuevaDireccion" placeholder="Ingresar dirección" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- ENTRADA PARA EL TELÉFONO -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>TELÉFONO</strong></h4>
                                <input type="text" class="form-control input-lg" name="nuevoTelefono" placeholder="Ingresar teléfono" data-inputmask="'mask':'999-99-999'" data-mask required>
                            </div>
                        </div>
                        <!-- ENTRADA PARA EL CARNET -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>CARNET</strong></h4>
                                <input type="text" class="form-control input-lg" name="nuevoDocumentoId" placeholder="Ingresar N° De Carnet" required>
                            </div>
                        </div>
                    </div>
                    <!-- Botones -->
                    <div class="text-right">
                        <button type="submit" class="btn btn-success btn-sm">GUARDAR</button>&nbsp;
                        <a href="clientes"  class="btn btn- btn-sm" style="background:#6c757d; color:white">REGRESAR</a>
                    </div>

                    <!-- Controlador para crear el cliente -->
                    <?php
                        $crearCliente = new ControladorClientes();
                        $crearCliente->ctrCrearCliente();
                    ?>
                </form>
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </section>
</div>
