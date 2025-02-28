<?php
/**
 * Componente de resumen de caja
 * Muestra los totales de ingresos, egresos y balance
 */
?>
 <h4 class="text-center"><strong>RESUMEN DEL DIA</strong></h4>
<table class=" dt-responsive "style="width: 100%;"border="1" >
    <thead>
        <tr class="row-dark">
            <th >INGRESOS</th>
            <th width="20%" id="total_ingresos" class="text-right">0.00</th>
        </tr>
    </thead>
    <tbody  >
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

        <!-- Egresos -->
        <tr class="row-dark">
            <td >EGRESOS</td>
            <td class="text-right" id="total_egresos">0.00</td>
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
        <tr class="row-dark">
            <td>RESULTADO NETO (ganancia o pérdida)</td>
            <td class="text-right" id="resultado_neto">0.00</td>
        </tr>
   
    </tbody>
    <tfoot>
    
      
    </tfoot>
</table>
<div>
    <br>
    <table  style=" float:right;" width="100%">
        <tr>
            <td style="text-align: right;" >TOTAL GANANCIA/(PERDIDA)</td>
            <td class="text-right" id="total_ganancia_perdida" style="padding-right: 6px; font-weight: bold; " width="20%">0.00</td>
        </tr>
        <tr>
            <td style="padding-left: 6px; text-align: right;">TOTAL EFECTIVO EN CAJA</td>
            <td class="text-right" id="efectivo_en_caja" 
                style="padding-right: 6px; font-weight: bold; border-bottom: 1px solid #333 !important;">0.00</td>
        </tr>
        <tr >
            <td style="text-align: right;">DIFERENCIA</td>
            <td style="text-align: right;" id="diferencia">0.00</td>
        </tr>
    </table>
</div>