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
    .cell-right{
        border: 1px solid #333 !important;
        border-left: none !important;
        font-weight: bold;
        padding-right: 6px;
    }
    .cell-left{
        border: 1px solid #333 !important;
        border-right: none !important;
        font-weight: bold;
        padding-left: 5px;
    }

    /* Agregar estos estilos para los inputs en la tabla */
    .tabla-efectivo input.form-control.input-sm {
        height: auto;
        padding: 2px 5px;
        line-height: 20px;
        border-radius: 2px;
        font-size: 15px;
    }

    .tabla-efectivo td {
        padding: 0px !important;
        vertical-align: middle !important;
    }

    .tabla-efectivo p {
        margin: 0;
        padding: 0;
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
                                    <div class="form-group">
                                        <h4><strong>FECHA Y HORA</strong></h4>
                                        <div class="input-group date">
                                            <input type="datetime-local" id="fecha_apertura_cierre" name="fecha_apertura_cierre" class="form-control" required readonly/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <h4><strong>Usuario</strong></h4>
                                        <input type="text" class="form-control text-uppercase " id="usuario" value="<?php echo $_SESSION["nombre"]; ?>" readonly>
                                        <input type="hidden" name="idVendedor" value="<?php echo $_SESSION["id"]; ?>">
                                    </div>
                           
                                    <div class="form-group">
                                        <h4><strong>Estado</strong></h4>
                                        <div class="custom-radio">
                                            <input type="radio" id="radio_apertura" checked name="opcion" value="abierta" disabled readonly>
                                            <label for="radio_apertura" > <span class="label label-primary">Abierto</span></label>
                                        </div>
                                        <div class="custom-radio">
                                            <input type="radio" id="radio_cierre"  name="opcion" value="cerrada"disabled readonly>
                                            <label for="radio_cierre"> <span class="label label-danger">Cerrado</span> </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <h4><strong>Seleccione la Caja</strong></h4>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-cogs"></i></span>
                                            <select class="form-control" id="idCaja" name="idCaja" required>
                                                <option value="">Seleccione la Caja</option>
                                                <?php
                                                $item = null;
                                                $valor = null;
                                                $cajas = ControladorCajas::ctrMostrarCajas($item, $valor);
                                                foreach ($cajas as $key => $value) {
                                                    echo '<option value="' . $value["id"] . '">' . $value["nombre"]. '</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <h4><strong>Nro de Ticket Inicial</strong></h4>
                                        <input type="text" class="form-control text-uppercase " id="nro_ticket" name="nro_ticket" value="<?php echo $_SESSION["nombre"]; ?>" >
                                    </div>

                                </div>
                                <div class="tabla-efectivo col-md-6 " >
                                    <div style="float:left;">
                                        <table class=" table-bordered table-striped dt-responsive  text-uppercase no-footer dtr-inline ">
                                            <thead>
                                                <tr>
                                                    <th colspan="3" class="text-center"><h4><strong>EFECTIVO EN CAJA</strong></h4></th>
                                                </tr>
                                                <tr>
                                                    <th width="30%">Efectivo</th>
                                                    <th>Cantidad</th>
                                                    <th width="20%" class="text-right">SubTotal</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>200 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_200" name="cantidad_200" data-valor="200"></td>
                                                    <td class="text-right"><span id="Total_200bs">0.00</span></td>
                                                </tr>
                                                <tr>
                                                    <td>100 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_100" name="cantidad_100" data-valor="100"></td>
                                                    <td class="text-right"><p id="Total_100bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>50 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_50" name="cantidad_50" data-valor="50"></td>
                                                    <td class="text-right"><p id="Total_50bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>20 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_20" name="cantidad_20" data-valor="20"></td>
                                                    <td class="text-right"><p id="Total_20bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>10 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_10" name="cantidad_10" data-valor="10"></td>
                                                    <td class="text-right"><p id="Total_10bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>5 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_5" name="cantidad_5" data-valor="5"></td>
                                                    <td class="text-right"><p id="Total_5bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>2 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_2" name="cantidad_2" data-valor="2"></td>
                                                    <td class="text-right"><p id="Total_2bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>1 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_1" name="cantidad_1" data-valor="1"></td>
                                                    <td class="text-right"><p id="Total_1bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>0.50 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_050" name="cantidad_050" data-valor="0.50"></td>
                                                    <td class="text-right"><p id="Total_050bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td>0.20 Bs</td>
                                                    <td><input type="text" class="form-control input-sm cantidad-input" id="cantidad_020" name="cantidad_020" data-valor="0.20"></td>
                                                    <td class="text-right"><p id="Total_020bs">0.00</p></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3" style="height: 5px;"></td>
                                                </tr>
                                                <tfoot style="font-weight: bold; font-size: 16px;">
                                                    <tr style="border-top: 2px solid #333;">
                                                        <td colspan="2">Total Efectivo en Caja </td>
                                                        <td class="text-right"><p id="total_efectivo_en_caja_tabla">0.00</p></td>
                                                    </tr>
                                                </tfoot>
                                            </tbody>
                                        </table>
                                        <input type="hidden" id="total_efectivo_en_caja" name="total_efectivo_en_caja">    
                                    </div>
                                </div>
                            </div>
                     
                        </div>

                        <div class="col-md-4">
                            <div class="text-rigth" >
                                <table class="table-bordered table-striped dt-responsive text-uppercase no-footer dtr-inline" style="width: 100%;">
                                    <thead>
                                        <tr>
                                            <th colspan="2" class="text-center"style="border-bottom: 1px solid #333;">
                                                <h4><strong>RESUMEN DEL DIA</strong></h4>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th class="cell-left">INGRESOS</th>
                                            <th width="20%" id="total_ingresos" class="text-right cell-right">0.00</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="padding-left: 6px;">Apertura de Caja</td>
                                            <td width="20%" class="text-right" id="monto_apertura" style="padding-right: 6px;">0.00</td>
                                        </tr>
                                        <tr>
                                            <td style="padding-left: 6px;">Ventas</td>
                                            <td class="text-right" id="monto_ventas" style="padding-right: 6px;"><p>0.00</p></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px; border-bottom: 1px solid #333;"></td>
                                        </tr>
                                        <tr>
                                            <td class="cell-left">EGRESOS</td>
                                            <td class="text-right cell-right" id="total_egresos">0.00</td>
                                        </tr>
                                    
                                        <tr>
                                            <td style="padding-left: 6px;">Gastos Operativos</td>
                                            <td class="text-right" id="gastos_operativos" style="padding-right: 6px;">0.00</td>
                                        </tr>
                                        <tr>
                                            <td style="padding-left: 6px;">Compras</td>
                                            <td class="text-right" id="monto_compras" style="padding-right: 6px;">0.00</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px; border-bottom: 1px solid #333;"> </td>
                                        </tr>
                                        <tr>
                                            <td class="cell-left">RESULTADO NETO (ganancia o pérdida)</td>
                                            <td class="text-right cell-right" id="resultado_neto">0.00</td>
                                        </tr>
                                        <tr>
                                            <td style="padding-left: 6px;">EFECTIVO EN CAJA</td>
                                            <td class="text-right"style="padding-right: 6px; font-weight: bold;" id="efectivo_en_caja">0.00</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 5px; border-bottom: 1px solid #333;"> </td>
                                        </tr>
                                        <tfoot >
                                            <tr>
                                                <td class="cell-left">DIFERENCIA ENTRE NETO Y EFECTIVO</td>
                                                <td class="text-right cell-right" id="diferencia">0.00</td>
                                            </tr>
                                        </tfoot>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                    </div>


                    <!-- Botones -->
                    <div class="row" style="text-align: right; padding-right: 20px;">
                        <button type="submit" id="aperturar_cierre_caja" class="btn btn-primary btn-sm" style="margin-right: 3px;">Aperturar Caja</button>
                    </div>

                    <!-- Controlador para crear el arqueo de caja-->
                    <?php
                    $registrarArqueo = new ControladorArqueo();
                    $registrarArqueo->ctrRegistrarArqueo();
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
        padding-right: 6px;
    }

    .minimal {
        margin-right: 5px;
    }

</style>

<script>
      
   /*====================================================
    ACTUALIZAR FECHA Y HORA
    ====================================================*/
    function actualizarFechaHora() {
        const ahora = new Date();
        const año = ahora.getFullYear();
        const mes = String(ahora.getMonth() + 1).padStart(2, '0'); // Mes en formato 01-12
        const dia = String(ahora.getDate()).padStart(2, '0'); // Día en formato 01-31
        const horas = String(ahora.getHours()).padStart(2, '0'); // Horas en formato 00-23
        const minutos = String(ahora.getMinutes()).padStart(2, '0'); // Minutos en formato 00-59
        const segundos = String(ahora.getSeconds()).padStart(2, '0'); // Segundos en formato 00-59

        const fechaHoraActual = `${año}-${mes}-${dia}T${horas}:${minutos}:${segundos}`;
        document.getElementById("fecha_apertura_cierre").value = fechaHoraActual;
    }

    // Actualiza cada segundo
    setInterval(actualizarFechaHora, 1000);
    actualizarFechaHora(); // Ejecutar al cargar la página

    /*====================================================
    CALCULAR SUBTOTAL Y TOTAL
    ====================================================*/
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
        
            document.getElementById('total_efectivo_en_caja_tabla').textContent = total.toFixed(2);
            document.getElementById('total_efectivo_en_caja').value = total.toFixed(2);
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

    /*====================================================
    VERIFICAR ESTADO DE LA CAJA ABIERTA O CERRADA
    ====================================================*/

    document.addEventListener('DOMContentLoaded', function() {
        verificarEstadoCaja();
    });

    function verificarEstadoCaja() {
        const idUsuario = <?php echo $_SESSION["id"]; ?>;
        fetch(`ajax/arqueo.ajax.php?accion=verificarCaja&idUsuario=${idUsuario}`)
            .then(response => response.json())
            .then(data => {
                if(data) {
                    // La caja está abierta
                   // document.querySelector('.tabla-efectivo').style.display = 'none';
                    document.getElementById('radio_apertura').checked = true;
                    document.getElementById('radio_cierre').checked = false;
                    document.getElementById('aperturar_cierre_caja').textContent = 'Cerrar Caja';
                    document.getElementById('aperturar_cierre_caja').classList.replace('btn-primary', 'btn-danger');
                    // Mostrar datos de la monto_apertura btn-success
                    mostrarDatosApertura(data);
                } else {
                    // La caja está cerrada
                    //document.querySelector('.tabla-efectivo').style.display = 'block';
                    document.getElementById('radio_apertura').checked = false;
                    document.getElementById('radio_cierre').checked = true;
                    document.getElementById('nro_ticket').value = '0';
                    document.getElementById('aperturar_cierre_caja').textContent = 'Aperturar Caja';
                    document.getElementById('aperturar_cierre_caja').classList.replace('btn-danger', 'btn-primary');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                Swal.fire({
                    icon: 'error',
                    title: 'Error al verificar el estado de la caja',
                    text: 'Por favor, intente nuevamente'
                });
            });
    }

   /*====================================================
    MOSTRAR DATOS DE APERTURA DE CAJA
    ====================================================*/
    function mostrarDatosApertura(datos) {
        // Mostrar los datos de la monto_apertura en los campos correspondientes
        document.getElementById('nro_ticket').value = datos.nroTicket;
        document.getElementById('monto_apertura').textContent = datos.monto_apertura || '0.00';
     
        // Actualizar los campos de la tabla de la derecha
        document.getElementById('monto_ventas').textContent = datos.monto_ventas || '0.00';
        document.getElementById('total_ingresos').textContent = datos.total_ingresos || '0.00';
        document.getElementById('gastos_operativos').textContent = datos.gastos_operativos || '0.00';
        document.getElementById('monto_compras').textContent = datos.monto_compras || '0.00';
        document.getElementById('total_egresos').textContent = datos.total_egresos || '0.00';
        document.getElementById('resultado_neto').textContent = datos.resultado_neto || '0.00';
        document.getElementById('efectivo_en_caja').textContent = datos.efectivo_en_caja || '0.00';
        document.getElementById('diferencia').textContent = datos.diferencia || '0.00';
    }

   /*====================================================
    OBTENER NRO DE TICKET
    ====================================================*/
    document.addEventListener('DOMContentLoaded', function() {
        // Agregar el evento para el select de caja
        const selectCaja = document.getElementById('idCaja');
        if(selectCaja) {
            selectCaja.addEventListener('change', function() {
                console.log(this.value);
                const idCaja = this.value;
                console.log(idCaja);
                if(idCaja) {
                    obtenerNroTicket(idCaja);
                } else {
                    document.getElementById('nro_ticket').value = '0';
                }
            });
        }
    });

    function obtenerNroTicket(idCaja) {
        fetch(`ajax/arqueo.ajax.php?accion=obtenerNroTicket&idCaja=${idCaja}`)
            .then(response => response.json())
            .then(data => {
                console.log(data);
                if(data && data.nroTicket) {
                    document.getElementById('nro_ticket').value = parseInt(data.nroTicket);
                } else {
                    document.getElementById('nro_ticket').value = '0';
                    console.error('No se pudo obtener el número de ticket');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                document.getElementById('nro_ticket').value = '0';
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'No se pudo obtener el número de ticket'
                });
            });
    }

</script>