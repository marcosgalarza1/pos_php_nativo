/*=============================================
EDITAR MESERO
=============================================*/
$(".tablasmesero").on("click", ".btnEditarMesero", function(){

	var idMesero = $(this).attr("idMesero");

	var datos = new FormData();
    datos.append("idMesero", idMesero);

    $.ajax({

      url:"ajax/meseros.ajax.php",
      method: "POST",
      data: datos,
      cache: false,
      contentType: false,
      processData: false,
      dataType:"json",
      success:function(respuesta){
      
      	   $("#idMesero").val(respuesta["id"]);
	       $("#editarMesero").val(respuesta["nombre"]);
	       $("#editarDocumentoId").val(respuesta["documento"]);
         $("#editarTelefono").val(respuesta["telefono"]);
	       $("#editarDireccion").val(respuesta["direccion"]);
         
	       
	  }

  	})

})

/*=============================================
ELIMINAR MESERO
=============================================*/
$(".tablasmesero").on("click", ".btnEliminarMesero", function(){

	var idMesero = $(this).attr("idMesero");
	
	swal({
        title: '¿Está seguro de borrar al Mesero?',
        text: "¡Si no lo está puede cancelar la acción!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Si, borrar al Mesero!'
      }).then(function(result){
        if (result.value) {
          
            window.location = "index.php?ruta=meseros&idMesero="+idMesero;
        }

  })

})

/*=============================================
REVISAR SI MESERO YA ESTÁ REGISTRADO
=============================================*/

$("#nuevoMesero").change(function () {

  $(".alert").remove();

  var mesero = $(this).val();

  var datos = new FormData();
  datos.append("validarMesero", mesero);

  $.ajax({
      url: "ajax/meseros.ajax.php",
      method: "POST",
      data: datos,
      cache: false,
      contentType: false,
      processData: false,
      dataType: "json",
      success: function (respuesta) {

          if (respuesta) {

              $("#nuevoMesero").parent().after('<div class="alert alert-danger">Este mesero ya existe en la base de datos</div>');

              $("#nuevoMesero").val("");

          }

      }

  })
})


//primer paso

/*=============================================
RESTAURAR MESERO
=============================================*/
$(".tablasmeseroEliminados").on("click", ".btnRestaurarMesero", function(){

	var idMesero = $(this).attr("idMesero");
	
	swal({
        title: '¿Está seguro de Restaurar al Mesero?',
        text: "¡Si no lo está puede cancelar la acción!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Si, Restaurar al Mesero!'
      }).then(function(result){
        if (result.value) {
          
            window.location = "index.php?ruta=meseros&idMeseroRestaurar="+idMesero;
        }

  })

})