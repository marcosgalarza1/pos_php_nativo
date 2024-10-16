
<?php

if($_SESSION["perfil"] == "Especial" || $_SESSION["perfil"] == "Vendedor"){

  echo '<script>

    window.location = "inicio";

  </script>';

  return;

}

?>


<div class="content-wrapper text-uppercase ">

  <section class="content-header">
    
  <h1 style="font-family: Arial, sans-serif; font-weight: bold;">
  Administrar usuarios

</h1>


    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Administrar usuarios</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
       <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarUsuario">
      
          Agregar Usuario
        </button> 

  
        <a class="btn btn-primary" target="_blank" href="reporte_usuario.php">
            <i class="material-icons"></i>
            <span class="icon-name"> Imprimir </span>
              </a>


      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablasusuarios text-uppercase" width="100%">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Nombre</th>
           <th>Usuario</th>
           <th>Foto</th>
           <th>Perfil</th>
           <th>Estado</th>
           <th>Último login</th>
           <th>Acciones</th>

         </tr> 

        </thead>

        
       </table>

      </div>

    </div>

  </section>

</div>

<!--==============================
=======
MODAL AGREGAR USUARIO
======================================-->

<div id="modalAgregarUsuario" class="modal fade" role="dialog">
  
  <div class="modal-dialog ">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header " style="background:#6c757d; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar usuario</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body  ">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon">
                  
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAACXBIWXMAAAsTAAALEwEAmpwYAAACeElEQVR4nO2XP2iUQRDFf7kUio0iJlY2VkLkLETFQivPQsT4BxS8FDYeJpcgEoNNCjEGVIRTPFAJWljE2NhqYxpri3idokRIQOFQmyBBURl5H34su3ubu0KEPFg45r2ZnW93dncOVvEfYDNQBA4CA0AFGAYuOWNY3IC0Rfm2hS6gCnwAfnU45oEhxUye/EkuwBegAcwC08B9oAZcc0ZN3LS0DflmcWZSk6jKoQn0A93tLqN8jyqWxRxMcZqX2CaPYQ2wGzgJnFcdlALaY4r5utXkvRJ+jXz5LuApsOTZ71cBn27FNE1PLIEdEtn++WDF9CNScD+BLQHfhjQ2RxAliV54uJ0tJs/Ge2Crx39WfGib/qCcq1gXD1dw9KY8/jPiThNBRaK7Hu6dlngPsFeBLqj4zgDb5Gf+bz3+98SdjSUwItEtD7eUUMWbgO/ANw93W7FtjiDGJLru4cz+iNZ4Ka2LG7JfjDmPS3QlkMDNhASmAglMyD6eksCEY98vu92SrZBt4752EhgLbEFmX5+QwIbAUidtwUigCA/LfjUhgUlpD7VThJXAMbRXrK5j2Bfx3y5N3fPyJR3DcuQiWgd8Ap4BBQ9vtufAR2nbuohKkavYcEr8HQ9XF2evI5Gr+EAnj5HhjTTWtGzUyBoY4+jkMerNdUGFQA/Q1ETLubt/WbamNC4Kue4o+hznG5Ij/MVaVe+CuEkV42WNvlz1L0hrPhn6xc2RgCGJPwPH1e0sOq/dqMdv1NEsyvdE7uvPpSTQlavY0LD9fKBGtKbf2R6HxuOVdsaDWrJO2/I5fXny5C569CejpHuiojfB/WNSFVeWtphScKvgX+M3kewO/phXknIAAAAASUVORK5CYII=">
              </span> 

                <input type="text" class="form-control input-lg" name="nuevoNombre" placeholder="Ingresar nombre completo" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL USUARIO -->

             <div class="form-group row">
                    <div class="col-xs-6">


                    
                    <div class="input-group">
                    
                      <span class="input-group-addon">
                      <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwYAAAA3UlEQVR4nO3UMUoDQRiG4cdCS2Mv22sfEU8QT6B3EBsFSaEEO7XxDPEWYoLmAPYhnYjWih5gZWHSLBrH/VOpH3zdzPsOM8PPX8kSdnGZuoPFecHXMUFZ6xhrUXgLj5/Ap33AckTQnQGf9igiuMkQXEcE9xmCak3jjDIEdxHBRYbgLCIo8D4D/oZVwWx/IangHXNKgfP0JqN0LeGT/44sYAMnuMJtah/HaKc1P84KTvGc8U2f0Et7srKP1wxwWesL9r6DHzYAl7UeRIdbGRl+WximAdakA2zmvsV/VPkAq9ecQUvuBNcAAAAASUVORK5CYII=">
                      </span> 

                      <input type="text" class="form-control input-lg" name="nuevoUsuario" placeholder="usuario" id="nuevoUsuario" required>

                    </div>

                    </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            
            <div class="col-xs-6">
                    <div class="input-group">
                    
                      <span class="input-group-addon">
                        
                      <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAYAAADE6YVjAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA00lEQVR4nO3QTUoDQRRF4S9/s8QViBOzCzUbscfBHYizDLMBcQeSuQnoVhR1YjYhQknLE4REbYsKRMiBonjdt9+hL1vECWZY4jXuej4usbyLKzxhjH304h7H88vIZVMLbtH/5v0AdyHKYoTHHwRfRc84ksEsKmnCGa5zJMvovgkHeMmRvKHTMNuJ/J9JG85/MLWBfBsVzgucCq11kip+udQ5XSeZFJZMdpL07+q6wR7mmXNqIpnHR4vMOW1NXWkn8UtdF4XrqvetMMRDIcE9Dj83vwMLoijMxhHvAAAAAABJRU5ErkJggg==">
                    
                    </span> 

                      <input type="password" class="form-control input-lg" name="nuevoPassword" placeholder="Password" required>

                    </div>
            </div>

       </div>

            <!-- ENTRADA PARA SELECCIONAR SU PERFIL -->

            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon">
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAYAAADE6YVjAAAACXBIWXMAAAsTAAALEwEAmpwYAAABhklEQVR4nO2Uuy8EURTGf6ugEAoKIV6d9ysKxYYKESoKopJo/QFK/gDlZiNWNFQamyyViELnFQoqGo+KRLWLgpGbfJNck9kZs9nOfsmXm3PynfPNvffcgRJK+DeYALaBI63jxWweA5KA48NEoU2rgBXgBGgBFvMYOOIC0Cr9KlAdZlAD3Kg4B1QAFyEmZ9K9K74FaoNMElbxnXK5EJOsdPdWzhxvXjxawhflnkNMnqR7tXKmJi9soWE7sB5ikgQ6Pbm3IJM9j3gDqNfXOj40O68DUp58Jsikx7pAw29gXlN2AHwpb9Z9oBmYk86t+QQGCMEQcGkVXeutoKnpt6Yn5tFeAXEiwBxToxWXAQ3AoFbX2KBJ+j+jA5i04hFgx2eUs/q9DFvaKaAtqLk5hmM1WNLL3QqZLEfc1J9iWfGh7vcXZq0LXwMq9ZKdCDxVXcra6YxrENdEuA+rHEhHNHDEtOofFH+4gzAG7IpmR70FGjhiHzBt9Rz1u5tubf28AJq6rihTVjT8AMPL1OtUn1GfAAAAAElFTkSuQmCC">
                
                </span> 

                <select class="form-control input-lg" name="nuevoPerfil" required>
                  
                  <option value="">Selecionar perfil</option>

                  <option value="Administrador">Administrador</option>

                  <option value="Especial">Especial</option>

                  <option value="Vendedor">Vendedor</option>

                </select>

              </div>

            </div>

            <!-- ENTRADA PARA SUBIR FOTO -->

             <div class="form-group">
              
              <div class="panel">SUBIR FOTO</div>

              <input type="file" class="nuevaFoto" name="nuevaFoto">

              <p class="help-block">Peso máximo de la foto 2MB</p>

              <img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail previsualizar" width="100px">

            </div>

          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-" style="background:#6c757d; color:white" >Guardar usuario</button>

        </div>

        <?php

          $crearUsuario = new ControladorUsuarios();
          $crearUsuario -> ctrCrearUsuario();

        ?>

      </form>

    </div>

  </div>

</div>

<!--=====================================
MODAL EDITAR USUARIO
======================================-->

<div id="modalEditarUsuario" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#6c757d; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar usuario</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon">
                 
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAACXBIWXMAAAsTAAALEwEAmpwYAAACeElEQVR4nO2XP2iUQRDFf7kUio0iJlY2VkLkLETFQivPQsT4BxS8FDYeJpcgEoNNCjEGVIRTPFAJWljE2NhqYxpri3idokRIQOFQmyBBURl5H34su3ubu0KEPFg45r2ZnW93dncOVvEfYDNQBA4CA0AFGAYuOWNY3IC0Rfm2hS6gCnwAfnU45oEhxUye/EkuwBegAcwC08B9oAZcc0ZN3LS0DflmcWZSk6jKoQn0A93tLqN8jyqWxRxMcZqX2CaPYQ2wGzgJnFcdlALaY4r5utXkvRJ+jXz5LuApsOTZ71cBn27FNE1PLIEdEtn++WDF9CNScD+BLQHfhjQ2RxAliV54uJ0tJs/Ge2Crx39WfGib/qCcq1gXD1dw9KY8/jPiThNBRaK7Hu6dlngPsFeBLqj4zgDb5Gf+bz3+98SdjSUwItEtD7eUUMWbgO/ANw93W7FtjiDGJLru4cz+iNZ4Ka2LG7JfjDmPS3QlkMDNhASmAglMyD6eksCEY98vu92SrZBt4752EhgLbEFmX5+QwIbAUidtwUigCA/LfjUhgUlpD7VThJXAMbRXrK5j2Bfx3y5N3fPyJR3DcuQiWgd8Ap4BBQ9vtufAR2nbuohKkavYcEr8HQ9XF2evI5Gr+EAnj5HhjTTWtGzUyBoY4+jkMerNdUGFQA/Q1ETLubt/WbamNC4Kue4o+hznG5Ij/MVaVe+CuEkV42WNvlz1L0hrPhn6xc2RgCGJPwPH1e0sOq/dqMdv1NEsyvdE7uvPpSTQlavY0LD9fKBGtKbf2R6HxuOVdsaDWrJO2/I5fXny5C569CejpHuiojfB/WNSFVeWtphScKvgX+M3kewO/phXknIAAAAASUVORK5CYII=">
                  
                </span> 

                <input type="text" class="form-control input-lg" id="editarNombre" name="editarNombre" value="" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL USUARIO -->

             <div class="form-group row">
              
              <div class="col-xs-6">

         
                      <div class="input-group">
                      
                        <span class="input-group-addon">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwYAAAA3UlEQVR4nO3UMUoDQRiG4cdCS2Mv22sfEU8QT6B3EBsFSaEEO7XxDPEWYoLmAPYhnYjWih5gZWHSLBrH/VOpH3zdzPsOM8PPX8kSdnGZuoPFecHXMUFZ6xhrUXgLj5/Ap33AckTQnQGf9igiuMkQXEcE9xmCak3jjDIEdxHBRYbgLCIo8D4D/oZVwWx/IangHXNKgfP0JqN0LeGT/44sYAMnuMJtah/HaKc1P84KTvGc8U2f0Et7srKP1wxwWesL9r6DHzYAl7UeRIdbGRl+WximAdakA2zmvsV/VPkAq9ecQUvuBNcAAAAASUVORK5CYII=">
                        
                        </span> 

                        <input type="text" class="form-control input-lg" id="editarUsuario" name="editarUsuario" value="" readonly>

                      </div>

              </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            
              <div class="col-xs-6">

              
              <div class="input-group">
              
                <span class="input-group-addon">
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAYAAADE6YVjAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA00lEQVR4nO3QTUoDQRRF4S9/s8QViBOzCzUbscfBHYizDLMBcQeSuQnoVhR1YjYhQknLE4REbYsKRMiBonjdt9+hL1vECWZY4jXuej4usbyLKzxhjH304h7H88vIZVMLbtH/5v0AdyHKYoTHHwRfRc84ksEsKmnCGa5zJMvovgkHeMmRvKHTMNuJ/J9JG85/MLWBfBsVzgucCq11kip+udQ5XSeZFJZMdpL07+q6wR7mmXNqIpnHR4vMOW1NXWkn8UtdF4XrqvetMMRDIcE9Dj83vwMLoijMxhHvAAAAAABJRU5ErkJggg==">
                </span> 

                <input type="password" class="form-control input-lg" name="editarPassword" placeholder=" nuevo password">

                <input type="hidden" id="passwordActual" name="passwordActual">

              </div>
              </div>
            </div>

            <!-- ENTRADA PARA SELECCIONAR SU PERFIL -->

            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon">
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAYAAADE6YVjAAAACXBIWXMAAAsTAAALEwEAmpwYAAABhklEQVR4nO2Uuy8EURTGf6ugEAoKIV6d9ysKxYYKESoKopJo/QFK/gDlZiNWNFQamyyViELnFQoqGo+KRLWLgpGbfJNck9kZs9nOfsmXm3PynfPNvffcgRJK+DeYALaBI63jxWweA5KA48NEoU2rgBXgBGgBFvMYOOIC0Cr9KlAdZlAD3Kg4B1QAFyEmZ9K9K74FaoNMElbxnXK5EJOsdPdWzhxvXjxawhflnkNMnqR7tXKmJi9soWE7sB5ikgQ6Pbm3IJM9j3gDqNfXOj40O68DUp58Jsikx7pAw29gXlN2AHwpb9Z9oBmYk86t+QQGCMEQcGkVXeutoKnpt6Yn5tFeAXEiwBxToxWXAQ3AoFbX2KBJ+j+jA5i04hFgx2eUs/q9DFvaKaAtqLk5hmM1WNLL3QqZLEfc1J9iWfGh7vcXZq0LXwMq9ZKdCDxVXcra6YxrENdEuA+rHEhHNHDEtOofFH+4gzAG7IpmR70FGjhiHzBt9Rz1u5tubf28AJq6rihTVjT8AMPL1OtUn1GfAAAAAElFTkSuQmCC">
                
                </span> 

                <select class="form-control input-lg" name="editarPerfil">
                  
                  <option value="" id="editarPerfil"></option>

                  <option value="Administrador">Administrador</option>

                  <option value="Especial">Especial</option>

                  <option value="Vendedor">Vendedor</option>

                </select>

              </div>

            </div>

            <!-- ENTRADA PARA SUBIR FOTO -->

             <div class="form-group">
              
              <div class="panel">SUBIR FOTO</div>

              <input type="file" class="nuevaFoto" name="editarFoto">

              <p class="help-block">Peso máximo de la foto 2MB</p>

              <img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail previsualizar" width="100px">

              <input type="hidden" name="fotoActual" id="fotoActual">

            </div>

          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-" style="background:#6c757d; color:white">Modificar usuario</button>

        </div>

     <?php

          $editarUsuario = new ControladorUsuarios();
          $editarUsuario -> ctrEditarUsuario();

        ?> 

      </form>

    </div>

  </div>

</div>

<?php

  $borrarUsuario = new ControladorUsuarios();
  $borrarUsuario -> ctrBorrarUsuario();

?> 


