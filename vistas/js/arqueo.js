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
    VARIABLES GLOBALES
    ====================================================*/
    let idArqueo = document.getElementById('idArqueo').value;
    var fechaAperturaCierre;
    var idCaja;
    var nroTicket;
    var totalIngresos;
    var montoApertura;
    var montoVentas;
    var totalEgresos;
    var gastosOperativos;
    var montoCompras;
    var resultadoNeto;
    var efectivoEnCaja;
    var diferencia;
    var estado = document.getElementById('estado_caja').value;
    var totalEfectivoEnCaja = 0;

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
            totalEfectivoEnCaja = 0;
            inputs.forEach(input => {
                const valor = parseFloat(input.dataset.valor);
                const cantidad = parseFloat(input.value) || 0;
                totalEfectivoEnCaja += valor * cantidad;
            });
       
            document.getElementById('total_efectivo_en_caja_tabla').textContent = totalEfectivoEnCaja.toFixed(2);
            document.getElementById('total_efectivo_en_caja').value = totalEfectivoEnCaja.toFixed(2);
     
            if(document.getElementById('estado_caja').value == 'cerrada') { 
                document.getElementById('monto_apertura').textContent = totalEfectivoEnCaja.toFixed(2);
            }

            //calcular el total de ingresos
            montoApertura = parseFloat(document.getElementById('monto_apertura').textContent);
            montoVentas = parseFloat(document.getElementById('monto_ventas').textContent);
            totalIngresos = montoApertura + montoVentas;
            gastosOperativos = parseFloat(document.getElementById('gastos_operativos').textContent);
            montoCompras = parseFloat(document.getElementById('monto_compras').textContent);
            totalEgresos = gastosOperativos + montoCompras;

            resultadoNeto = totalIngresos - totalEgresos;
            diferencia = resultadoNeto - totalEfectivoEnCaja;
           
            document.getElementById('total_ingresos').innerHTML = totalIngresos.toFixed(2);
            document.getElementById('total_egresos').textContent = totalEgresos.toFixed(2);
            document.getElementById('resultado_neto').innerHTML = resultadoNeto.toFixed(2); 
            document.getElementById('efectivo_en_caja').innerHTML = totalEfectivoEnCaja.toFixed(2);
            document.getElementById('diferencia').innerHTML = diferencia.toFixed(2);

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
        fetch(`ajax/arqueo.ajax.php?accion=verificarCaja&idUsuario=${idUsuario}`)
            .then(response => response.json())
            .then(data => {
                if(data) { // La caja está abierta
                    // Mostrar datos de la monto_apertura btn-success
                    mostrarDatosApertura(data);
                   
                   // document.querySelector('.tabla-efectivo').style.display = 'none';
                    idArqueo = data.id;
                    document.getElementById('idArqueo').value = data.id;
                    document.getElementById('radio_apertura').checked = true;
                    document.getElementById('radio_cierre').checked = false;
                    document.getElementById('estado_caja').value = 'abierta';
                    estado = 'abierta';
                    document.getElementById('aperturar_cierre_caja').textContent = 'Cerrar Caja';
                    document.getElementById('aperturar_cierre_caja').classList.replace('btn-primary', 'btn-danger');
                    document.getElementById('idCaja').disabled = true;
                    document.getElementById('nro_ticket').disabled = true;
                } else {
                    // La caja está cerrada
                    //document.querySelector('.tabla-efectivo').style.display = 'block';
                    document.getElementById('idCaja').disabled = false;
                    document.getElementById('nro_ticket').disabled = false;
                    document.getElementById('idArqueo').value = '0';
                    document.getElementById('radio_apertura').checked = false;
                    document.getElementById('radio_cierre').checked = true;
                    document.getElementById('estado_caja').value = 'cerrada';
                    estado = 'cerrada';
                    document.getElementById('nro_ticket').value = '0';
                    document.getElementById('aperturar_cierre_caja').textContent = 'Aperturar Caja';
                    document.getElementById('aperturar_cierre_caja').classList.replace('btn-danger', 'btn-primary');
                }
            })
            .catch(error => {
                swal({
                    type: 'error',
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
        document.getElementById('idCaja').value = datos.id_caja;
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

   /*====================================================
    GUARDAR APERTURA Y CIERRE DE CAJA
    ====================================================*/
    function validarAperturaCierreCaja() {
        // Validaciones
        if(!document.getElementById('idVendedor').value) {
            toastr.error('El usuario es obligatorio', 'Error');
            return false;
        }

        if(!document.getElementById('idCaja').value) {
            toastr.error('Debe seleccionar una caja', 'Error');
            return false;
        }

        if(!document.getElementById('nro_ticket').value || document.getElementById('nro_ticket').value === "0") {
            toastr.error('El número de ticket es obligatorio', 'Error');
            return false;
        }

        const totalEfectivo = document.getElementById('total_efectivo_en_caja').value;
        if(!totalEfectivo || totalEfectivo === "0.00") {
            toastr.error('Debe ingresar el efectivo en caja', 'Error');
            return false;
        }
        return true;
    }

       function guardarAperturaCierreCaja() {
        fechaAperturaCierre = document.getElementById('fecha_apertura_cierre').value;
        idCaja = document.getElementById('idCaja').value;
        nroTicket = document.getElementById('nro_ticket').value;
        var data;
        var title
        
        if(validarAperturaCierreCaja()) {
            let data, title, text;
            
            if(estado == 'cerrada') {
                title = '¿Aperturar Caja?';
                text = '¿Está seguro de aperturar la caja?';
                data = {
                    accion: 'AperturarCaja',
                    fechaApertura: fechaAperturaCierre,
                    montoApertura: montoApertura,
                    nroTicket: nroTicket,
                    totalIngresos: totalIngresos,
                    resultadoNeto: resultadoNeto,
                    estado: 'abierta',
                    idCaja: idCaja,
                    idUsuario: idUsuario
                };
            } else {
                title = '¿Cerrar Caja?';
                text = '¿Está seguro de cerrar la caja?';
                data = {
                    accion: 'CerrarCaja',
                    idArqueo: idArqueo,
                    idUsuario: idUsuario,
                    idCaja: idCaja,
                    fechaCierre: fechaAperturaCierre,
                    nroTicket: nroTicket,
                    estado: 'cerrada',
                    cantidad_200: document.getElementById('cantidad_200').value || "0",
                    cantidad_100: document.getElementById('cantidad_100').value || "0",
                    cantidad_50: document.getElementById('cantidad_50').value || "0",
                    cantidad_20: document.getElementById('cantidad_20').value || "0",
                    cantidad_10: document.getElementById('cantidad_10').value || "0",
                    cantidad_5: document.getElementById('cantidad_5').value || "0",
                    cantidad_2: document.getElementById('cantidad_2').value || "0",
                    cantidad_1: document.getElementById('cantidad_1').value || "0",
                    cantidad_050: document.getElementById('cantidad_05').value || "0",
                    cantidad_020: document.getElementById('cantidad_02').value || "0",
                    totalIngresos: totalIngresos,
                    montoVentas: montoVentas,
                    totalEgresos: totalEgresos,
                    gastosOperativos: gastosOperativos,
                    montoCompras: montoCompras,
                    resultadoNeto: resultadoNeto,
                    totalEfectivoEnCaja: totalEfectivoEnCaja,
                    diferencia: diferencia
                }
            }
            swal({
                title: title,
                text: text,
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Sí, confirmar',
                //cancelButtonText: 'Cancelar'
            }).then((result ) => {
               
                if (result.value) {
                    $.ajax({
                        url: 'ajax/arqueo.ajax.php',
                        type: 'POST',
                        data: data ,
                        success: function(response) {
                            try {
                                const respuesta = JSON.parse(response);
                                if(respuesta.status === "ok") {
                                    swal({
                                        type: 'success',
                                        title: 'Operación exitosa',
                                        text: estado == 'cerrada' ? 'Caja aperturada correctamente' : 'Caja cerrada correctamente',
                                        showConfirmButton: false,
                                        timer: 1500
                                    }).then(function(result){
                                        window.location.reload();
                                    });
                                } else {
                                    swall('Error', 'Ocurrió un error en la operación', 'error');
                                }
                            } catch(e) {
                                console.error('Error parsing response:', response);
                                swal('Error', 'Error al procesar la respuesta del servidor', 'error');
                            }
                        },
                        error: function(xhr, status, error) {
                            swal({
                                title: 'Error',
                                text: 'Ocurrió un error al completar el pedido',
                                type: 'error'
                            });
                        }
                    });
                }
            });
        }
    }