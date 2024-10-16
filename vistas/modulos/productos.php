<?php

if($_SESSION["perfil"] == "Vendedor"){

  echo '<script>

    window.location = "inicio";

  </script>';

  return;

}

?>




<div class="content-wrapper text-uppercase ">

  <section class="content-header">
    
    
    <h1 style="font-family: Arial, sans-serif; font-weight: bold;">
    Administrar productos

      </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="f-a fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Administrar productos</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
      <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarProducto">
    

          Agregar producto

        </button>
        <a class="btn btn-primary" target="_blank" href="reporte_producto.php">
            <i class="material-icons"></i>
            <span class="icon-name"> Imprimir </span>
              </a>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablaProductos text-uppercase " width="100%">
         
        <thead>
         
          <tr>
           
           <th style="width:10px">#</th>
           <th style="width:10px">Imagen</th>
           <th>Código</th>
           <th>Descripcion</th>
           <th>Categoria</th>
           <th>Cantidad</th>
           <th>Precio</th>
           <th>Agregado</th>
           <th>Acciones</th>
           
         </tr> 

        </thead>



       </table>
       <input type="hidden" value="<?php echo $_SESSION['perfil']; ?>" id="perfilOculto">
      </div>

    </div>

  </section>

</div>

<!--=====================================
MODAL AGREGAR PRODUCTO
======================================-->

<div id="modalAgregarProducto" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#6c757d; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar producto</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">


            <!-- ENTRADA PARA EL CÓDIGO    DE PRODUCTOOOOOOO -->
            
            <div class="form-group row">
              <div class="col-xs-12 col-sm-6">

              
                    <div class="input-group">
                    
                      <span class="input-group-addon">
                        
                      <img src="data:image/png;base64,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">
                    
                    </span> 

                      <input type="text" class="form-control input-lg" id="nuevoCodigo" name="nuevoCodigo" 
                      placeholder="código" readonly required>

                    </div>

             </div>

            <!-- ENTRADA PARA SELECCIONAR LA CATEGORIA -->

    
            <div class="col-xs-12 col-sm-6">
                  <div class="input-group">
                  
                    <span class="input-group-addon">
                      
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAYAAACOEfKtAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEQ0lEQVR4nO2by04UQRSGf2BMNA6u1KBAjEqAN9A4LNyrJMLGyxMM4IKAa30FN4rGhbrhomhiFPfiJD4Bgi+g7rwQk3Ec21RyOjmpdE8109Vd1fT5kkrmUl1d8/c5dU5dBhAEQRAEQRAEQSgqwwDmALwD8AnALhX1egPALIAh1530kUEADwG0AASG0gawBuCU6077wiSAnyROE8AKgGsAxgAcpqJeX6fvmlRXXXPFYj8CyyUXbpFFBWRVpxNccwbAC2aNyuVLKeAkCfAXwHwX1y/QtW1Llmjrh+ci4CBz2/kO9RoANg0iqjZ+ADhRJgEfM7flqLGuyt4r8d6z9/1Uh7NObakgVAoBh8n1mtqYNw7gHwWKONbIZbmIZ6mtFlm2zR+ue4DpfVw7VpmjG+hCVVkEjkNF4mWKzLqwqs2ZFP2K+uG6B5jex7VjlQ26gRLDFjepzTdlcOHPdIMRi22OUZvbZRAwjL4qICSNtjp6/X6WXGc5Bpr6EddO5gJuRowlnYiKzlkIaOqXkzFwh24warHNcWpzqwwuLEEkJbMd0phVADcM0XZFS7Z5GlMvQx44RElvkxYGeCRtGxLpVarD3X8kw0TayzxQ8YhuolZVOKNakqw/4WrE2PmS2lpCOgozBipOsmi80KGeKQouUhvfAQyUSUDQElS4nLXQxfWLbDnrkoX+FE7AcF7cphuu08KAiRHmtm0KSqVcUA25TOt5AQWDNYrE4zTmVem1isDPAfxhbmvD8govoOIogHsJN5VatPaXdgF1XzJIudxbmlX8orJFKy31lKmKIAiCIAiCIAhC8eilUhh6qPiAEu4plcKIOA1gynUnSLAnbEFDHS+pwHMqdNJAbYMe8MDyAra4ERTBEmfYE0+z22bL8tRh94sALrDtCG8tsQrgCxPwG4AjHogX4r2Id6lzDSoBfebKbSci6kz46s7H2dOtAThHBy93c1qF7mR5Ol5a4gPqkNo4Cgk3kdR3Li0v6iSCV5Y4RnseLe0YL/9cbTC5ctu4fWpvRHxFnbif0DJduK237lxjTz/qlMEAe8qqrku3jfvcqSU2IqKt3kkenXscu61X7nyVbvjV8D+RKtUJLEzxkojXLbmKWKEpW9IZR53qbqeY4nXrtnE4dec6E6SSgeBR9AF41kHAtGe2cxMwziUbhpOgUzEub1PEkEMAju2x7dysjwcF7PEkqI0pXhIR1TGT3xEixrl5buKlTUtqhrTHloi3AbwGcNAXtw1ZYucCu8XWFM9GIl3TEmn1YHKfsjX2eCre5hSvL0Fa49xtTZaz2cWpeJtTPJOIzt1WcZ6Wp9KOXVHLXzaS4b24c65uG/KBbngng2j+0eIUzySiE/Gm2RI9/7OhzS0AW7t4nUR0Il6FjuoGGZcdi7t4USI6EY9P2fIodYv91gOLFwunRaM3YmM9N8vbbyIui3glOlwkCIIgCIKAbPkP8J2W5oeC6KwAAAAASUVORK5CYII=">
                  
                  </span> 

                    <select class="form-control input-lg select2"  id="nuevaCategoria" name="nuevaCategoria" required>
                      
                      <option value="">Categoria</option>

                      <?php

                        $item = null;
                        $valor = null;

                        $categorias = ControladorCategorias::ctrMostrarCategorias($item, $valor);

                        foreach ($categorias as $key => $value) {
                          
                          echo '<option value="'.$value["id"].'">'.$value["categoria"].'</option>';
                        }

                        ?>
                                          
                    </select>

                      </div>
                </div>
            </div>

            <!-- ENTRADA PARA LA DESCRIPCIÓN -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon">
                  
               <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAB3ElEQVR4nN3Wz4vNURjH8Zf8KklkpmQxTRhWEiVZWCiy8A+oyY8Fs7DEwmIY2fuxJguimYX8aESUJFx1mxKWklCUjWKKhRk69YxO3+697uV+vwufOt17n+95zvs53/M8z7n8hzqIvVVD12IKn6sGX8VPjGS2jegtE7oO03iHBWHbhB94VCb4Wux2V/yei+dhGy4Luj52W8OssB0N6BPMLgt8M5IqnWdSPybxFQNlQTfEbi9ktrux293dgqzGfXzDS2zDOL5gWcwZDOhop4v34TweYAx3sBMr8QYXsQXHI4AEOYkTeBg1/BaLO4EuCacbOIyzUZMzgPeFRBkPezrfZziC6xHgonahcyLqemTmQJYYqSMtxfyCz3IsxPb4FL5PI8h9f4ImwCt8zGpuTyRHbwTVSsU5fdGvv2NNK8d7uNQEMBpJ1ErN5ryIY5tXfLAZQ3GGp+J7O+M1DrUxbzjWPhes36pHclQx6jl4okLwRA6uVQiu5eCxCsFXcvBIheBjOXhFNPiyodNYVSyp2xWAbzUq/v64N8uCTsabbajBaPTdhk5lf4WaaqjL8LTWfm1qKz50AfoJO9qFzqgHZ+Jm6RSYfE7HFfrX6onXnwr/cbS8RiM9u4wD/wosVb8Ancx7ixvWc94AAAAASUVORK5CYII=">
              
              </span> 

                <input type="text" class="form-control input-lg" name="nuevaDescripcion" placeholder="descripción" required>

              </div>

            </div>

             

             <!-- ENTRADA PARA La STOCK -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon">
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAB2klEQVR4nO3WS6hNcRTH8Y9H4URcj4wMkAyUDGSgkLqpO3AnMiATiWJwSynFSAyU3JHCwMSAokSKYiAjGUjJozzHJI/IFXH0r3XqtDv75Wyi7q9W+6y91////e+113/9D+P6D7Qv7K/rfVhjWoxW5t58bMZhnMEFfMMYtmNhv9A5eIc3uIybeIl2if3ELazpB74RL3pM/hH3cAlXY1H38SUTlzIy+3fhp2KSR1iFeT1iZoVNxTBud8Hf4iiGsAWbqkBn4lOkOKVwSY3iGo4sZLP1LBZYqJEIHsR3HK8BTpqA1fFZ2lGIrTJoGvQET8O/EcXWqrmdpkdNfMVzTCwDD8Yqj4S/M/wdNcF7YtyBuA7lASfF5J0CSend1TXwYfgzKoIfROam4EPsglydKNmr1yu+8bqIPxT+WfwoajKtWFkv6F3MLQFPxgAuxpi14W/ryuJA3vdOKd+Ka3gcTWJ3zlbIgqfhVUnW7lQptDL1SvV6fM6BvsayfqF54KSVmS6WmtCVgkbUGLijVBPLo63+2+dxkZZGS90fZ/FY/B6JZ39EKwoKpx3PUkzj2hBvV2QppjEtwumwk3HOduxgF3RvtNVkC5oAH6vw1ydro02Az0UHq2PnmwCPSxP6BYJmxG07r6OGAAAAAElFTkSuQmCC">
              </span> 

                <input value="0" readonly type="number" class="form-control input-lg" name="nuevoStock" min="0" placeholder="cantidad" required>

              </div>

            </div>


                <!-- ENTRADA PARA  VENTA -->

                <div class="form-group">
                
                  <div class="input-group">
                  
                    <span class="input-group-addon">
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAACO0lEQVR4nMWWO2gVQRSGv2seBjUoaiEoIhqbKKKCVQRFCxG0EAsJqCmSKpWiaGUCphFUMIgQEKzSJY3aWKmFKBIEg6IWIRhQUEJ8EOIjuTFy4F84LLvXnd174w9TzJnZ882ZOXtmoDpaxX/QSmAKuA/sWUxwL7Dg2hPgYK2hK4DJGNgv4ChQqgX4oiDvge/ADaADeOMWMAIcA5ZUC7oM+AyUga3O3iDIceCFW8Br4CRQVxR8Vg4HnW0T8AV46o7Cb//bopE3AR+BeaDV2XcBfzQWne0zBz5FQXXL0VDC2HZgnevv1dwxoL4ItEHJZJHtzjD/nsCdFFSXHN1VfzMwDEwAo8AVYL3GdmqBE0BjEag5Ghc4qlKjCf/wA40Nqd+dB2arvwC8SnBsUfQA7cCAks3GDynp5pVoTSHApcBt58y3NjfvgIqGnf054Lnsg5p7JjTSgZRS+NDN6dQZmv0ysBw4ooJSVoGxQpNZbc5hvFmEqAyWnb3ffX9HNiupmVUPvEyBRhVpP/DT2X8DWzS2UX27KptDwOdToFHS7AC+xuzXE47oUgh0AzCdArWtvwV8itmtNq923/8CvoW+SoYrRJvWLJMj9cvWFwI9nAM6p7J5E5gBZrVja7NCG1XEF3K0+H9+NSTaEvAoEDilRPzgbD9iN1MmtWqrsoL73G6dBt7F/uUgXcsItcxeE/u2Ti+OXGpWUa8Ete3cRw3UXgE6kvHyz6VSQqI9Bk5U44XIP7RND3K7h1tqDVtU/QUVFQvpsArJlQAAAABJRU5ErkJggg==">
                    
                    </span> 

                    <input type="number" class="form-control input-lg" id="nuevoPrecioVenta" name="nuevoPrecioVenta" min="0" step="any" placeholder="Precio Venta" required>

                  </div>
                  </div>
                 
           <!-- ENTRADA PARA PRECIO COMPRA -->
            <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAACO0lEQVR4nMWWO2gVQRSGv2seBjUoaiEoIhqbKKKCVQRFCxG0EAsJqCmSKpWiaGUCphFUMIgQEKzSJY3aWKmFKBIEg6IWIRhQUEJ8EOIjuTFy4F84LLvXnd174w9TzJnZ882ZOXtmoDpaxX/QSmAKuA/sWUxwL7Dg2hPgYK2hK4DJGNgv4ChQqgX4oiDvge/ADaADeOMWMAIcA5ZUC7oM+AyUga3O3iDIceCFW8Br4CRQVxR8Vg4HnW0T8AV46o7Cb//bopE3AR+BeaDV2XcBfzQWne0zBz5FQXXL0VDC2HZgnevv1dwxoL4ItEHJZJHtzjD/nsCdFFSXHN1VfzMwDEwAo8AVYL3GdmqBE0BjEag5Ghc4qlKjCf/wA40Nqd+dB2arvwC8SnBsUfQA7cCAks3GDynp5pVoTSHApcBt58y3NjfvgIqGnf054Lnsg5p7JjTSgZRS+NDN6dQZmv0ysBw4ooJSVoGxQpNZbc5hvFmEqAyWnb3ffX9HNiupmVUPvEyBRhVpP/DT2X8DWzS2UX27KptDwOdToFHS7AC+xuzXE47oUgh0AzCdArWtvwV8itmtNq923/8CvoW+SoYrRJvWLJMj9cvWFwI9nAM6p7J5E5gBZrVja7NCG1XEF3K0+H9+NSTaEvAoEDilRPzgbD9iN1MmtWqrsoL73G6dBt7F/uUgXcsItcxeE/u2Ti+OXGpWUa8Ete3cRw3UXgE6kvHyz6VSQqI9Bk5U44XIP7RND3K7h1tqDVtU/QUVFQvpsArJlQAAAABJRU5ErkJggg==">
                  </span>
                  <input type="number" class="form-control input-lg" id="nuevoPrecioCompra" name="nuevoPrecioCompra" min="0" step="any" placeholder="Precio Compra" required>
                </div>
            </div>
           



            <!-- ENTRADA PARA SUBIR FOTO -->

             <div class="form-group">
              
              <div class="panel">SUBIR IMAGEN</div>

              <input type="file" class="nuevaImagen" name="nuevaImagen">

              <p class="help-block">Peso máximo de la imagen 2MB</p>

              <img src="vistas/img/productos/default/anonymous.jpg" class="img-thumbnail previsualizar" width="100px">

            </div>

          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn"style="background:#6c757d; color:white">Guardar producto</button>

        </div>

      </form>

        <?php

          $crearProducto = new ControladorProductos();
          $crearProducto -> ctrCrearProducto(); 

        ?>  

    </div>

  </div>

</div>

<!--=====================================
MODAL EDITAR
======================================-->

<div id="modalEditarProducto" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#6c757d; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar producto</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">


            <!-- ENTRADA PARA EL CÓDIGO    -->
            
            <div class="form-group row">
              <div class="col-xs-12 col-sm-6">

              
                    <div class="input-group">
                    
                      <span class="input-group-addon">
                        
                      <img src="data:image/png;base64,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">
                    
                    </span> 

                    <input type="text" class="form-control input-lg" id="editarCodigo" name="editarCodigo" placeholder="Ingresar código" readonly required>

                    </div>

             </div>
        
            <!-- ENTRADA PARA SELECCIONAR LA CATEGORIA -->

    
                 <div class="col-xs-12 col-sm-6">
                  <div class="input-group">
                  
                    <span class="input-group-addon">
                      
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAYAAACOEfKtAAAACXBIWXMAAAsTAAALEwEAmpwYAAAEQ0lEQVR4nO2by04UQRSGf2BMNA6u1KBAjEqAN9A4LNyrJMLGyxMM4IKAa30FN4rGhbrhomhiFPfiJD4Bgi+g7rwQk3Ec21RyOjmpdE8109Vd1fT5kkrmUl1d8/c5dU5dBhAEQRAEQRAEQSgqwwDmALwD8AnALhX1egPALIAh1530kUEADwG0AASG0gawBuCU6077wiSAnyROE8AKgGsAxgAcpqJeX6fvmlRXXXPFYj8CyyUXbpFFBWRVpxNccwbAC2aNyuVLKeAkCfAXwHwX1y/QtW1Llmjrh+ci4CBz2/kO9RoANg0iqjZ+ADhRJgEfM7flqLGuyt4r8d6z9/1Uh7NObakgVAoBh8n1mtqYNw7gHwWKONbIZbmIZ6mtFlm2zR+ue4DpfVw7VpmjG+hCVVkEjkNF4mWKzLqwqs2ZFP2K+uG6B5jex7VjlQ26gRLDFjepzTdlcOHPdIMRi22OUZvbZRAwjL4qICSNtjp6/X6WXGc5Bpr6EddO5gJuRowlnYiKzlkIaOqXkzFwh24warHNcWpzqwwuLEEkJbMd0phVADcM0XZFS7Z5GlMvQx44RElvkxYGeCRtGxLpVarD3X8kw0TayzxQ8YhuolZVOKNakqw/4WrE2PmS2lpCOgozBipOsmi80KGeKQouUhvfAQyUSUDQElS4nLXQxfWLbDnrkoX+FE7AcF7cphuu08KAiRHmtm0KSqVcUA25TOt5AQWDNYrE4zTmVem1isDPAfxhbmvD8govoOIogHsJN5VatPaXdgF1XzJIudxbmlX8orJFKy31lKmKIAiCIAiCIAhC8eilUhh6qPiAEu4plcKIOA1gynUnSLAnbEFDHS+pwHMqdNJAbYMe8MDyAra4ERTBEmfYE0+z22bL8tRh94sALrDtCG8tsQrgCxPwG4AjHogX4r2Id6lzDSoBfebKbSci6kz46s7H2dOtAThHBy93c1qF7mR5Ol5a4gPqkNo4Cgk3kdR3Li0v6iSCV5Y4RnseLe0YL/9cbTC5ctu4fWpvRHxFnbif0DJduK237lxjTz/qlMEAe8qqrku3jfvcqSU2IqKt3kkenXscu61X7nyVbvjV8D+RKtUJLEzxkojXLbmKWKEpW9IZR53qbqeY4nXrtnE4dec6E6SSgeBR9AF41kHAtGe2cxMwziUbhpOgUzEub1PEkEMAju2x7dysjwcF7PEkqI0pXhIR1TGT3xEixrl5buKlTUtqhrTHloi3AbwGcNAXtw1ZYucCu8XWFM9GIl3TEmn1YHKfsjX2eCre5hSvL0Fa49xtTZaz2cWpeJtTPJOIzt1WcZ6Wp9KOXVHLXzaS4b24c65uG/KBbngng2j+0eIUzySiE/Gm2RI9/7OhzS0AW7t4nUR0Il6FjuoGGZcdi7t4USI6EY9P2fIodYv91gOLFwunRaM3YmM9N8vbbyIui3glOlwkCIIgCIKAbPkP8J2W5oeC6KwAAAAASUVORK5CYII=">
                  
                  </span> 

                    <select class="form-control input-lg"  name="editarCategoria" readonly required>
                      
                    <option id="editarCategoria"></option>

                     
                                          
                    </select>
                </div>
            </div>
        </div>

            <!-- ENTRADA PARA LA DESCRIPCIÓN -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon">
                  
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAB3ElEQVR4nN3Wz4vNURjH8Zf8KklkpmQxTRhWEiVZWCiy8A+oyY8Fs7DEwmIY2fuxJguimYX8aESUJFx1mxKWklCUjWKKhRk69YxO3+697uV+vwufOt17n+95zvs53/M8z7n8hzqIvVVD12IKn6sGX8VPjGS2jegtE7oO03iHBWHbhB94VCb4Wux2V/yei+dhGy4Luj52W8OssB0N6BPMLgt8M5IqnWdSPybxFQNlQTfEbi9ktrux293dgqzGfXzDS2zDOL5gWcwZDOhop4v34TweYAx3sBMr8QYXsQXHI4AEOYkTeBg1/BaLO4EuCacbOIyzUZMzgPeFRBkPezrfZziC6xHgonahcyLqemTmQJYYqSMtxfyCz3IsxPb4FL5PI8h9f4ImwCt8zGpuTyRHbwTVSsU5fdGvv2NNK8d7uNQEMBpJ1ErN5ryIY5tXfLAZQ3GGp+J7O+M1DrUxbzjWPhes36pHclQx6jl4okLwRA6uVQiu5eCxCsFXcvBIheBjOXhFNPiyodNYVSyp2xWAbzUq/v64N8uCTsabbajBaPTdhk5lf4WaaqjL8LTWfm1qKz50AfoJO9qFzqgHZ+Jm6RSYfE7HFfrX6onXnwr/cbS8RiM9u4wD/wosVb8Ancx7ixvWc94AAAAASUVORK5CYII=">
              
              </span> 

              <input type="text" class="form-control input-lg" id="editarDescripcion" name="editarDescripcion" required>

              </div>

            </div>


             <!-- ENTRADA PARA La STOCK -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon">
                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAAB2klEQVR4nO3WS6hNcRTH8Y9H4URcj4wMkAyUDGSgkLqpO3AnMiATiWJwSynFSAyU3JHCwMSAokSKYiAjGUjJozzHJI/IFXH0r3XqtDv75Wyi7q9W+6y91////e+113/9D+P6D7Qv7K/rfVhjWoxW5t58bMZhnMEFfMMYtmNhv9A5eIc3uIybeIl2if3ELazpB74RL3pM/hH3cAlXY1H38SUTlzIy+3fhp2KSR1iFeT1iZoVNxTBud8Hf4iiGsAWbqkBn4lOkOKVwSY3iGo4sZLP1LBZYqJEIHsR3HK8BTpqA1fFZ2lGIrTJoGvQET8O/EcXWqrmdpkdNfMVzTCwDD8Yqj4S/M/wdNcF7YtyBuA7lASfF5J0CSend1TXwYfgzKoIfROam4EPsglydKNmr1yu+8bqIPxT+WfwoajKtWFkv6F3MLQFPxgAuxpi14W/ryuJA3vdOKd+Ka3gcTWJ3zlbIgqfhVUnW7lQptDL1SvV6fM6BvsayfqF54KSVmS6WmtCVgkbUGLijVBPLo63+2+dxkZZGS90fZ/FY/B6JZ39EKwoKpx3PUkzj2hBvV2QppjEtwumwk3HOduxgF3RvtNVkC5oAH6vw1ydro02Az0UHq2PnmwCPSxP6BYJmxG07r6OGAAAAAElFTkSuQmCC">
              </span> 

                <input  readonly ="number" class="form-control input-lg" id="editarStock" name="editarStock" min="0" required>

              </div>

            </div>

                <!-- ENTRADA PARA  VENTA -->

                <div class="form-group">
                
                  <div class="input-group">
                  
                    <span class="input-group-addon">
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAACO0lEQVR4nMWWO2gVQRSGv2seBjUoaiEoIhqbKKKCVQRFCxG0EAsJqCmSKpWiaGUCphFUMIgQEKzSJY3aWKmFKBIEg6IWIRhQUEJ8EOIjuTFy4F84LLvXnd174w9TzJnZ882ZOXtmoDpaxX/QSmAKuA/sWUxwL7Dg2hPgYK2hK4DJGNgv4ChQqgX4oiDvge/ADaADeOMWMAIcA5ZUC7oM+AyUga3O3iDIceCFW8Br4CRQVxR8Vg4HnW0T8AV46o7Cb//bopE3AR+BeaDV2XcBfzQWne0zBz5FQXXL0VDC2HZgnevv1dwxoL4ItEHJZJHtzjD/nsCdFFSXHN1VfzMwDEwAo8AVYL3GdmqBE0BjEag5Ghc4qlKjCf/wA40Nqd+dB2arvwC8SnBsUfQA7cCAks3GDynp5pVoTSHApcBt58y3NjfvgIqGnf054Lnsg5p7JjTSgZRS+NDN6dQZmv0ysBw4ooJSVoGxQpNZbc5hvFmEqAyWnb3ffX9HNiupmVUPvEyBRhVpP/DT2X8DWzS2UX27KptDwOdToFHS7AC+xuzXE47oUgh0AzCdArWtvwV8itmtNq923/8CvoW+SoYrRJvWLJMj9cvWFwI9nAM6p7J5E5gBZrVja7NCG1XEF3K0+H9+NSTaEvAoEDilRPzgbD9iN1MmtWqrsoL73G6dBt7F/uUgXcsItcxeE/u2Ti+OXGpWUa8Ete3cRw3UXgE6kvHyz6VSQqI9Bk5U44XIP7RND3K7h1tqDVtU/QUVFQvpsArJlQAAAABJRU5ErkJggg==">
                    
                    
                    </span> 

                    <input type="number" class="form-control input-lg" id="editarPrecioVenta" name="editarPrecioVenta" min="0" step="any" placeholder="Precio Venta" required>

                  </div>
                
                  </div>
                  

                <!-- ENTRADA PARA PRECIO COMPRA -->

                <div class="form-group">
                  <div class="input-group">
                    <span class="input-group-addon">
                      <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAACXBIWXMAAAsTAAALEwEAmpwYAAACO0lEQVR4nMWWO2gVQRSGv2seBjUoaiEoIhqbKKKCVQRFCxG0EAsJqCmSKpWiaGUCphFUMIgQEKzSJY3aWKmFKBIEg6IWIRhQUEJ8EOIjuTFy4F84LLvXnd174w9TzJnZ882ZOXtmoDpaxX/QSmAKuA/sWUxwL7Dg2hPgYK2hK4DJGNgv4ChQqgX4oiDvge/ADaADeOMWMAIcA5ZUC7oM+AyUga3O3iDIceCFW8Br4CRQVxR8Vg4HnW0T8AV46o7Cb//bopE3AR+BeaDV2XcBfzQWne0zBz5FQXXL0VDC2HZgnevv1dwxoL4ItEHJZJHtzjD/nsCdFFSXHN1VfzMwDEwAo8AVYL3GdmqBE0BjEag5Ghc4qlKjCf/wA40Nqd+dB2arvwC8SnBsUfQA7cCAks3GDynp5pVoTSHApcBt58y3NjfvgIqGnf054Lnsg5p7JjTSgZRS+NDN6dQZmv0ysBw4ooJSVoGxQpNZbc5hvFmEqAyWnb3ffX9HNiupmVUPvEyBRhVpP/DT2X8DWzS2UX27KptDwOdToFHS7AC+xuzXE47oUgh0AzCdArWtvwV8itmtNq923/8CvoW+SoYrRJvWLJMj9cvWFwI9nAM6p7J5E5gBZrVja7NCG1XEF3K0+H9+NSTaEvAoEDilRPzgbD9iN1MmtWqrsoL73G6dBt7F/uUgXcsItcxeE/u2Ti+OXGpWUa8Ete3cRw3UXgE6kvHyz6VSQqI9Bk5U44XIP7RND3K7h1tqDVtU/QUVFQvpsArJlQAAAABJRU5ErkJggg==">
                    </span> 
                    <input type="number" class="form-control input-lg" id="editarPrecioCompra" name="editarPrecioCompra" min="0" step="any" placeholder="Precio Compra" required>
                  </div>
                </div>
                 

            <!-- ENTRADA PARA SUBIR FOTO -->

             <div class="form-group">
              
              <div class="panel">SUBIR IMAGEN</div>

              <input type="file" class="nuevaImagen" name="editarImagen">

              <p class="help-block">Peso máximo de la imagen 2MB</p>

              <img src="vistas/img/productos/default/anonymous.png" class="img-thumbnail previsualizar" width="100px">

              <input type="hidden" name="imagenActual" id="imagenActual">

            </div>

          </div>

       </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-"style="background:#6c757d; color:white">Guardar cambios</button>

        </div>

      </form>

        <?php

      
          $editarProducto = new ControladorProductos();
          $editarProducto -> ctrEditarProducto();



        ?> 

        
    </div>

  </div>
      
</div>
      
  <?php
      
        $eliminarProducto = new ControladorProductos();
        $eliminarProducto -> ctrEliminarProducto();
      
  ?>      
      

