<div class="content-wrapper text-uppercase">
    <!-- Header -->
    <section class="content-header">
        <h1>AGREGAR PRODUCTOS</h1>
        <ol class="breadcrumb">
            <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
            <li class="active">AGREGAR PRODUCTOS</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="box">
            <div class="box-body">
                <form role="form" method="post" enctype="multipart/form-data">
                    <div class="row">
                        <!-- Entrada para seleccionar la categoría -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>SELECCIONA LA CATEGORIA</strong></h4>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-th"></i></span>
                                    <select class="form-control input-lg select2" id="nuevaCategoria" name="nuevaCategoria" required>
                                        <option value="">Categoria</option>
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

                        <!-- Entrada para el código -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>CODIGO</strong></h4>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-barcode"></i></span>
                                    <input type="text" class="form-control input-lg" id="nuevoCodigo" name="nuevoCodigo" placeholder="código" readonly required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <!-- Entrada para la descripción -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>DESCRIPCIÓN</strong></h4>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-code"></i></span> 
                                    <input type="text" class="form-control input-lg" name="nuevaDescripcion" placeholder="descripción" required>
                                </div>
                            </div>
                        </div>

                        <!-- Entrada para el stock -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>STOCK</strong></h4>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-cogs"></i></span>
                                    <input value="0" readonly type="number" class="form-control input-lg" name="nuevoStock" min="0" placeholder="cantidad" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <!-- Entrada para precio de compra -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>PRECIO COMPRA</strong></h4>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-money"></i></span> <!-- Ícono de dinero -->
                                    <input type="number" class="form-control input-lg" id="nuevoPrecioCompra" name="nuevoPrecioCompra" min="0" step="any" placeholder="Precio Compra" required>
                                </div>
                            </div>
                        </div>

                        <!-- Entrada para precio de venta -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>PRECIO VENTA</strong></h4>
                                <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-arrow-down"></i></span>
                                    <input type="number" class="form-control input-lg" id="nuevoPrecioVenta" name="nuevoPrecioVenta" min="0" step="any" placeholder="Precio Venta" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <!-- Entrada para porcentaje -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>UTILIZAR PORCENTAJE</strong></h4>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-percent"></i></span>
                                    <input type="number" class="form-control input-lg nuevoPorcentaje" min="0" value="40" required>
                                </div>
                            </div>

                            <label style="display: flex; align-items: center; justify-content: flex-end; padding-right: 10px;">
                                <input type="checkbox" class="minimal porcentaje" style="margin-right: 5px;">
                                Utilizar porcentaje
                            </label>
                        </div>

                        <!-- Entrada para subir imagen -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="panel">SUBIR FOTO</div>
                                <input type="file" class="nuevaImagen" name="nuevaImagen">
                                <p class="help-block">Peso máximo de la imagen 2MB</p>
                                <img src="vistas/img/productos/default/anonymous.png" class="img-thumbnail previsualizar" width="100px">
                            </div>
                        </div>
                    </div>


                    

                    <!-- Botones -->
                    <div class="row" style="text-align: right; padding-right: 20px;">
                        <button type="submit" class="btn btn-success btn-sm" style="margin-right: 3px;">GUARDAR</button>
                        <a href="productos" class="btn btn-sm" style="background:#6c757d; color:white;">REGRESAR</a>
                    </div>

                    <!-- Controlador para crear el producto -->
                    <?php
                        $crearProducto = new ControladorProductos();
                        $crearProducto->ctrCrearProducto();
                    ?>
                </form>
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </section>
</div>

<!-- Estilos adicionales para mejorar la apariencia del checkbox -->
<style>
    .minimal {
        width: 20px;
        height: 20px;
    }

    label {
        display: flex;
        align-items: center;
        justify-content: flex-end;
        padding-right: 10px;
    }

    .minimal {
        margin-right: 5px;
    }
</style>
