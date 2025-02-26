<?php
/**
 * Componente de resumen de caja
 * Muestra los totales de ingresos, egresos y balance
 */
?>

<table class="table-bordered table-striped dt-responsive text-uppercase no-footer dtr-inline" 
        style="width: 100%;">
    <thead>
        <tr>
            <th colspan="2" class="text-center" style="border-bottom: 1px solid #333;">
                <h4><strong>RESUMEN DEL DIA</strong></h4>
            </th>
        </tr>
        <tr>
            <th class="cell-left">INGRESOS</th>
            <th width="20%" id="total_ingresos" class="text-right cell-right">0.00</th>
        </tr>
    </thead>
    <tbody>
        <!-- Ingresos -->
        <tr>
            <td style="padding-left: 6px;">Apertura de Caja</td>
            <td width="20%" class="text-right" id="monto_apertura" 
                style="padding-right: 6px;">0.00</td>
        </tr>
        <tr>
            <td style="padding-left: 6px;">Ventas</td>
            <td class="text-right" id="monto_ventas" 
                style="padding-right: 6px;">0.00</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 5px; border-bottom: 1px solid #333;"></td>
        </tr>

        <!-- Egresos -->
        <tr>
            <td class="cell-left">EGRESOS</td>
            <td class="text-right cell-right" id="total_egresos">0.00</td>
        </tr>
        <tr>
            <td style="padding-left: 6px;">Gastos Operativos</td>
            <td class="text-right" id="gastos_operativos" 
                style="padding-right: 6px;">0.00</td>
        </tr>
        <tr>
            <td style="padding-left: 6px;">Compras</td>
            <td class="text-right" id="monto_compras" 
                style="padding-right: 6px;">0.00</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 5px; border-bottom: 1px solid #333;"></td>
        </tr>

        <!-- Balance -->
        <tr>
            <td class="cell-left">RESULTADO NETO (ganancia o pérdida)</td>
            <td class="text-right cell-right" id="resultado_neto">0.00</td>
        </tr>
        <tr>
            <td style="padding-left: 6px;">EFECTIVO EN CAJA</td>
            <td class="text-right" id="efectivo_en_caja" 
                style="padding-right: 6px; font-weight: bold;">0.00</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 5px; border-bottom: 1px solid #333;"></td>
        </tr>
    </tbody>
    <tfoot>
        <tr>
            <td class="cell-left">DIFERENCIA ENTRE NETO Y EFECTIVO</td>
            <td class="text-right cell-right" id="diferencia">0.00</td>
        </tr>
    </tfoot>
</table>