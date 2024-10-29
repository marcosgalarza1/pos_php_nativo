<?php

require_once "../../../controladores/ventas.controlador.php";
require_once "../../../modelos/ventas.modelo.php";

require_once "../../../controladores/clientes.controlador.php";
require_once "../../../modelos/clientes.modelo.php";

require_once "../../../controladores/usuarios.controlador.php";
require_once "../../../modelos/usuarios.modelo.php";

require_once "../../../controladores/productos.controlador.php";
require_once "../../../modelos/productos.modelo.php";

class imprimirFactura {

    public $codigo;

    public function traerImpresionFactura() {

        // Obtener información de la venta
        $itemVenta = "codigo";
        $valorVenta = $this->codigo;

        $respuestaVenta = ControladorVentas::ctrMostrarVentas($itemVenta, $valorVenta);
        $fecha = date('d/m/Y H:i', strtotime($respuestaVenta["fecha"]));
        $productos = ControladorVentas::ctrMostrarDetalleVentas($respuestaVenta['id']);

        $total = number_format($respuestaVenta["total"], 2);

        // Obtener información del cliente
        $itemCliente = "id";
        $valorCliente = $respuestaVenta["id_cliente"];
        $respuestaCliente = ControladorClientes::ctrMostrarClientes($itemCliente, $valorCliente);

        // Obtener información del vendedor
        $itemVendedor = "id";
        $valorVendedor = $respuestaVenta["id_vendedor"];
        $respuestaVendedor = ControladorUsuarios::ctrMostrarUsuarios($itemVendedor, $valorVendedor);

        // Configuración del PDF para impresora térmica
        require_once('tcpdf_include.php');
        $pdf = new TCPDF('P', 'mm', array(80, 80), true, 'UTF-8', false);
        $pdf->SetMargins(2, 2, 2); // Márgenes mínimos
        $pdf->AddPage();
        $pdf->SetFont('helvetica', '', 8);

        // Encabezado
        $html = '
        <table style="text-align:center; font-size: 9px;">
            <tr>
                <td><strong>COMANDA</strong><br>'.$valorVenta.'<br>Fecha: '.$fecha.'</td>
            </tr>
            <tr>
                <td>=======================================</td>
            </tr>
        </table>';
        $pdf->writeHTML($html, false, false, false, false, '');

        // Datos de mesero/a y cliente
        $html = '
        <table style="font-size: 8px;">
            <tr>
                <td><strong>Mesero/a:</strong> '.$respuestaCliente["nombre"].'<br><strong>Cajero/a:</strong> '. $respuestaVendedor["nombre"].'</td>
            </tr>
            <tr>
                <td>============================================</td>
            </tr>
        </table>';
        $pdf->writeHTML($html, false, false, false, false, '');

        // Productos
        $html = '
        <table border="0" cellpadding="1" style="width:100%; font-size: 7px;">
            <tr>
                <th style="width:40%; text-align:left;">Producto</th>
                <th style="width:15%; text-align:center;">Cant.</th>
                <th style="width:20%; text-align:right;">Precio</th>
                <th style="width:20%; text-align:right;">Total</th>
            </tr>';

        foreach ($productos as $item) {
            $valorUnitario = number_format($item["precio_venta"], 2);
            $precioTotal = number_format($item["subtotal"], 2);
            $html .= '
            <tr>
                <td>'.$item["producto"].'</td>
                <td style="text-align:center;">'.$item["cantidad"].'</td>
                <td style="text-align:right;">'.$valorUnitario.'</td>
                <td style="text-align:right;">'.$precioTotal.'</td>
            </tr>';
        }

        $html .= '
        <tr>
            <td colspan="4" style="text-align:center;">=================================================</td>
        </tr>
        </table>';
        $pdf->writeHTML($html, false, false, false, false, '');

        // Total
        $html = '
        <table>
            <tr>
                <td style=" font-size: 9px;">
                    <strong>Total: Bs '.$total.'</strong>
                </td>
            </tr>
            <tr>
                <td style="text-align:center;">=============================================</td>
            </tr>
        </table>';
        $pdf->writeHTML($html, false, false, false, false, '');

        // Generar el PDF
        $pdf->Output('factura.pdf', 'I');
    }
}

$factura = new imprimirFactura();
$factura->codigo = $_GET["codigo"];
$factura->traerImpresionFactura();

?>
