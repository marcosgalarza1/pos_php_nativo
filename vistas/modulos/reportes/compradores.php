<?php

$item = null;
$valor = null;

$ventas = ControladorVentas::ctrMostrarVentas($item, $valor);
$meseros = ControladorMeseros::ctrMostrarMeseros($item, $valor);

$arrayMeseros = array();
$arraylistaMeseros = array();

foreach ($ventas as $key => $valueVentas) {
  
  foreach ($meseros as $key => $valueMeseros) {
    
      if($valueMeseros["id"] == $valueVentas["id_mesero"]){

        #Capturamos los Meseros en un array
        array_push($arrayMeseros, $valueMeseros["nombre"]);

        #Capturamos las nombres y los valores netos en un mismo array
        $arraylistaMeseros = array($valueMeseros["nombre"] => $valueVentas["total"]);

        #Sumamos los netos de cada mesero
        foreach ($arraylistaMeseros as $key => $value) {
          
          $sumaTotalMeseros[$key] += $value;
        
        }

      }   
  }

}

#Evitamos repetir nombre
$noRepetirNombres = array_unique($arrayMeseros);

?>

<!--=====================================
VENDEDORES
======================================-->

<div class="box box-gray">
	
	<div class="box-header with-border">
    
    	<h3 class="box-title">Compradores</h3>
  
  	</div>

  	<div class="box-body">
  		
		<div class="chart-responsive">
			
			<div class="chart" id="bar-chart2" style="height: 300px;"></div>

		</div>

  	</div>

</div>

<script>
	
//BAR CHART
var bar = new Morris.Bar({
  element: 'bar-chart2',
  resize: true,
  data: [
     <?php
    
    foreach($noRepetirNombres as $value){

      echo "{y: '".$value."', a: '".$sumaTotalMeseros[$value]."'},";

    }

  ?>
  ],
  barColors: ['#808080'],
  xkey: 'y',
  ykeys: ['a'],
  labels: ['ventas'],
  preUnits: 'Bs',
  hideHover: 'auto'
});


</script>