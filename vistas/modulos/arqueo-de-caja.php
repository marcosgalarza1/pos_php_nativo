<style>
    .custom-radio-group {
        display: flex;
        gap: 20px; /* Espaciado entre opciones */
        align-items: center;
    }

    .custom-radio {
        display: inline-block;
        position: relative;
    }

    .custom-radio input[type="radio"] {
        display: none; /* Oculta el radio nativo */
    }

    .custom-radio label {
        padding-left: 30px;
        position: relative;
        cursor: pointer;
        font-size: 16px;
    }

    .custom-radio label:before {
        content: "";
        width: 20px;
        height: 20px;
        border: 2px solid #007bff;
        border-radius: 50%;
        position: absolute;
        left: 0;
        top: 2px;
        background-color: white;
    }
    .custom-radio label[for="radio_apertura"]:before {
        content: "";
        width: 20px;
        height: 20px;
        border: 2px solid #007bff;
        border-radius: 50%;
        position: absolute;
        left: 0;
        top: 2px;
        background-color: white;
    }
    .custom-radio label[for="radio_cierre"]:before {
        content: "";
        width: 20px;
        height: 20px;
        border: 2px solid red;
        border-radius: 50%;
        position: absolute;
        left: 0;
        top: 2px;
        background-color: white;
    }
    .custom-radio input[type="radio"]:checked + label:before {
        background-color: #007bff;
        box-shadow: inset 0 0 0 4px white;
    }
    .custom-radio input[id="radio_cierre"]:checked + label:before {
        background-color:red;
        box-shadow: inset 0 0 0 4px white;
    }
</style>
<div class="content-wrapper text-uppercase">
    <!-- Header -->
    <section class="content-header">
        <h1>APERTURA DE CAJA</h1>
        <ol class="breadcrumb">
            <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
            <li class="active">APERTURA DE CAJA</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="box">
            <div class="box-body">
                <form role="form" method="post" enctype="multipart/form-data">
                    <div class="row">
                        <!-- Entrada para seleccionar la categoría -->
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-6">
                                    <div style="float:left">
                                     
                                        <table class=" table-bordered table-striped dt-responsive  text-uppercase no-footer dtr-inline">
                                            <thead>
                                                <tr>
                                                    <th colspan="3" class="text-center"><h4><strong>EFECTIVO EN CAJA</strong></h4></th>
                                                </tr>
                                                <tr>
                                                    <th width="30%">Efectivo</th>
                                                    <th>Cantidad</th>
                                                    <th class="text-right">SubTotal</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>200 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_200" data-valor="200"></td>
                                                    <td class="text-right"><p id="Total_200bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>100 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_100" data-valor="100"></td>
                                                    <td class="text-right"><p id="Total_100bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>50 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_50" data-valor="50"></td>
                                                    <td class="text-right"><p id="Total_50bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>20 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_20" data-valor="20"></td>
                                                    <td class="text-right"><p id="Total_20bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>10 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_10" data-valor="10"></td>
                                                    <td class="text-right"><p id="Total_10bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>5 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_5" data-valor="5"></td>
                                                    <td class="text-right"><p id="Total_5bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>2 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_2" data-valor="2"></td>
                                                    <td class="text-right"><p id="Total_2bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>1 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_1" data-valor="1"></td>
                                                    <td class="text-right"><p id="Total_1bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>0.50 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_050" data-valor="0.50"></td>
                                                    <td class="text-right"><p id="Total_050bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>0.20 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_020" data-valor="0.20"></td>
                                                    <td class="text-right"><p id="Total_020bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3" style="height: 5px;"></td>
                                                </tr>
                                                <tfoot style="font-weight: bold; font-size: 16px;">
                                                    <tr style="border-top: 2px solid #333;">
                                                        <td colspan="2">Total Efectivo en Caja </td>
                                                        <td class="text-right"><p id="total_general">0.00</p></td>
                                                    </tr>
                                                </tfoot>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <h4><strong>FECHA Y HORA</strong></h4>
                                        <div class="input-group date">
                                            <input type="datetime-local" id="fecha_inicio" name="fecha_inicio" class="form-control" required readonly/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <h4><strong>Usuario</strong></h4>
                                        <input type="text" class="form-control text-uppercase " id="usuario" value="<?php echo $_SESSION["nombre"]; ?>" readonly>
                                        <input type="hidden" name="idVendedor" value="<?php echo $_SESSION["id"]; ?>">
                                    </div>
                                    <div class="form-group">
                                        <h4><strong>Seleccione la Caja</strong></h4>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-cogs"></i></span>
                                            <select class="form-control input-lg select2" id="nuevaCategoria" name="nuevaCategoria" required>
                                                <option value="">Seleccione la Caja</option>
                                                <?php
                                                $item = null;
                                                $valor = null;
                                                $cajas = ControladorCajas::ctrMostrarCajas($item, $valor);
                                                foreach ($cajas as $key => $value) {
                                                    echo '<option value="' . $value["id"] . '">' . $value["nombre"] . '</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <h4><strong>Tipo de Movimiento</strong></h4>
                                        <div class="custom-radio">
                                            <input type="radio" id="radio_apertura" name="opcion" value="op1" readonly>
                                            <label for="radio_apertura" > <span class="label label-primary">Apertura</span></label>
                                        </div>
                                        <div class="custom-radio">
                                            <input type="radio" id="radio_cierre" name="opcion" value="op2" readonly>
                                            <label for="radio_cierre"> <span class="label label-danger">Cierre</span> </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                         

           
                     
                        </div>

                        <div class="col-md-4">
                            <div class="text-rigth" style="float:right">
                                <table class="table-bordered table-striped dt-responsive  text-uppercase no-footer dtr-inline">
                                    <thead>
                                        <tr>
                                            <th width="30%">Efectivo</th>
                                            <th>Cantidad</th>
                                            <th class="text-right">SubTotal</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>200 Bs</td>
                                            <td><input type="text" class="form-control input-sm cantidad-input-2" id="cantidad_200_2" data-valor="200"></td>
                                            <td class="text-right"><p id="Total_200bs_2">0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td>100 Bs</td>
                                            <td><input type="text" class="form-control input-sm cantidad-input-2" id="cantidad_100_2" data-valor="100"></td>
                                            <td class="text-right"><p id="Total_100bs_2">0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td>50 Bs</td>
                                            <td><input type="text" class="form-control input-sm cantidad-input-2" id="cantidad_50_2" data-valor="50"></td>
                                            <td class="text-right"><p id="Total_50bs_2">0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td>20 Bs</td>
                                            <td><input type="text" class="form-control input-sm cantidad-input-2" id="cantidad_20_2" data-valor="20"></td>
                                            <td class="text-right"><p id="Total_20bs_2">0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td>10 Bs</td>
                                            <td><input type="text" class="form-control input-sm cantidad-input-2" id="cantidad_10_2" data-valor="10"></td>
                                            <td class="text-right"><p id="Total_10bs_2">0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td>5 Bs</td>
                                            <td><input type="text" class="form-control input-sm cantidad-input-2" id="cantidad_5_2" data-valor="5"></td>
                                            <td class="text-right"><p id="Total_5bs_2">0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td>2 Bs</td>
                                            <td><input type="text" class="form-control input-sm cantidad-input-2" id="cantidad_2_2" data-valor="2"></td>
                                            <td class="text-right"><p id="Total_2bs_2">0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td>1 Bs</td>
                                            <td><input type="text" class="form-control input-sm cantidad-input-2" id="cantidad_1_2" data-valor="1"></td>
                                            <td class="text-right"><p id="Total_1bs_2">0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td>0.50 Bs</td>
                                            <td><input type="text" class="form-control input-sm cantidad-input-2" id="cantidad_050_2" data-valor="0.50"></td>
                                            <td class="text-right"><p id="Total_050bs_2">0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td>0.20 Bs</td>
                                            <td><input type="text" class="form-control input-sm cantidad-input-2" id="cantidad_020_2" data-valor="0.20"></td>
                                            <td class="text-right"><p id="Total_020bs_2">0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" style="height: 5px;"></td>
                                        </tr>
                                        <tfoot style="font-weight: bold; font-size: 16px;">
                                            <tr style="border-top: 2px solid #333;">
                                                <td colspan="2">Total Efectivo en Caja </td>
                                                <td class="text-right"><p id="total_general_2">0.00</p></td>
                                            </tr>
                                        </tfoot>
                                    </tbody>
                                </table>
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

<script>
    function actualizarFechaHora() {
            const ahora = new Date();
            const año = ahora.getFullYear();
            const mes = String(ahora.getMonth() + 1).padStart(2, '0'); // Mes en formato 01-12
            const dia = String(ahora.getDate()).padStart(2, '0'); // Día en formato 01-31
            const horas = String(ahora.getHours()).padStart(2, '0'); // Horas en formato 00-23
            const minutos = String(ahora.getMinutes()).padStart(2, '0'); // Minutos en formato 00-59
            const segundos = String(ahora.getSeconds()).padStart(2, '0'); // Segundos en formato 00-59

            const fechaHoraActual = `${año}-${mes}-${dia}T${horas}:${minutos}:${segundos}`;
            document.getElementById("fecha_inicio").value = fechaHoraActual;
        }

        // Actualiza cada segundo
        setInterval(actualizarFechaHora, 1000);
        actualizarFechaHora(); // Ejecutar al cargar la página

    document.addEventListener('DOMContentLoaded', function() {
        const inputs = document.querySelectorAll('.cantidad-input');
        
        inputs.forEach(input => {
            input.addEventListener('input', function() {
                calcularSubtotal(this);
                calcularTotal();
            });
        });

        function calcularSubtotal(input) {
            const valor = parseFloat(input.dataset.valor);
            const cantidad = parseFloat(input.value) || 0;
            const subtotal = valor * cantidad;
            
            // Obtener el ID del elemento total correspondiente
            const idBase = input.id.replace('cantidad_', '');
            const totalElement = document.getElementById(`Total_${idBase}bs`);
            
            if (totalElement) {
                totalElement.textContent = subtotal.toFixed(2);
            }
        }

        function calcularTotal() {
            let total = 0;
            inputs.forEach(input => {
                const valor = parseFloat(input.dataset.valor);
                const cantidad = parseFloat(input.value) || 0;
                total += valor * cantidad;
            });
            
            document.getElementById('total_general').textContent = total.toFixed(2);
        }

        // Validar que solo se ingresen números
        inputs.forEach(input => {
            input.addEventListener('keypress', function(e) {
                if (!/[\d.]/.test(e.key)) {
                    e.preventDefault();
                }
            });
        });
    });
</script>