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

        //TRAEMOS LA INFORMACIÓN DE LA VENTA

        $itemVenta = "codigo";
        $valorVenta = $this->codigo;

        $respuestaVenta = ControladorVentas::ctrMostrarVentas($itemVenta, $valorVenta);

        $fecha = substr($respuestaVenta["fecha"],0,-8);
        $productos = json_decode($respuestaVenta["productos"], true);
        $neto = number_format($respuestaVenta["neto"],2);
        $impuesto = number_format($respuestaVenta["impuesto"],2);
        $total = number_format($respuestaVenta["total"],2);

        //TRAEMOS LA INFORMACIÓN DEL CLIENTE

        $itemCliente = "id";
        $valorCliente = $respuestaVenta["id_cliente"];

        $respuestaCliente = ControladorClientes::ctrMostrarClientes($itemCliente, $valorCliente);

        //TRAEMOS LA INFORMACIÓN DEL VENDEDOR

        $itemVendedor = "id";
        $valorVendedor = $respuestaVenta["id_vendedor"];

        $respuestaVendedor = ControladorUsuarios::ctrMostrarUsuarios($itemVendedor, $valorVendedor);

        //REQUERIMOS LA CLASE TCPDF

        require_once('tcpdf_include.php');

        $pdf = new TCPDF('P', 'mm', array(80, 200), true, 'UTF-8', false);

        $pdf->startPageGroup();
        $pdf->AddPage();
        $pdf->SetFont('helvetica', '', 10);

        // Imagen del restaurante centrada
        $pdf->Image('images/logo-negro-bloque.jpg', 25, 15, 30, '', 'jpg', '', 'T', false, 300, '', false, false, 0, false, false, false);

        $pdf->Ln(20); // Espacio después de la imagen

        // Información de la tienda
        $html = '
        <table>
            <tr>
                <td style="text-align:center;">
                    <strong style="font-size: 14px;">Cabañas "El Gallito"</strong><br>
                    <span style="font-size: 12px;">N°. '.$valorVenta.'</span><br>
                    <span style="font-size: 10px;">Fecha: '.$fecha.'</span>
                </td>
            </tr>
        </table>
        ';
        $pdf->writeHTML($html, false, false, false, false, '');

        // Espacio
        $pdf->Ln(2);

        // Información del cliente y vendedor
        $html = '
        <table>
            <tr>
                <td>
                    <strong>Mesero/a:</strong> '.$respuestaCliente["nombre"].'<br>
                    <strong>Cajero/a:</strong> '.$respuestaVendedor["nombre"].'
                </td>
            </tr>
        </table>
        ';
        $pdf->writeHTML($html, false, false, false, false, '');

        // Espacio
        $pdf->Ln(2);

        // Productos
        $html = '
        <table border="0" cellpadding="4">
            <tr style="background-color:#f2f2f2;">
                <th style="width:40%; text-align:left;">Producto</th>
                <th style="width:20%; text-align:center;">Cant.</th>
                <th style="width:25%; text-align:right;">Precio</th>
                <th style="width:25%; text-align:right;">Total</th>
            </tr>
        ';

        
        foreach ($productos as $item) {
            $valorUnitario = number_format($item["precio"], 2);
            
            $precioTotal = number_format($item["total"], 2);
            $html .= '
            
            <tr style="height: 15px;"> <!-- Ajustar la altura mínima de la fila según sea necesario -->
                <td style="padding: 5px;">'.$item["descripcion"].'</td>
                <td style="text-align:center; padding: 5px;">'.$item["cantidad"].'</td>
                <td style="text-align:right; padding: 5px;">'.$valorUnitario.'</td>
                <td style="text-align:right; padding: 5px;">'.$precioTotal.'</td>
            </tr>
            ';
        }
        $html .= '</table>';
        $pdf->writeHTML($html, false, false, false, false, '');

        // Espacio
        $pdf->Ln(2);

        // Totales
        $html = '
        <table>
            <tr>
                <td style="text-align:right;">
                    <strong style="font-size: 13px;">Total: Bs '.$total.'</strong>
                </td>
            </tr>
        </table>
        ';
        $pdf->writeHTML($html, false, false, false, false, '');

        // Mensaje de agradecimiento
        $html = '
        <table>
            <tr>
                <td style="text-align:center;">
                    <br><br>
                    <strong>¡Gracias por su compra!</strong><br>
                </td>
            </tr>
        </table>
        ';
        $pdf->writeHTML($html, false, false, false, false, '');

        //SALIDA DEL ARCHIVO
        $pdf->Output('factura.pdf', 'I');

    }

}

$factura = new imprimirFactura();
$factura -> codigo = $_GET["codigo"];
$factura -> traerImpresionFactura();

?>
