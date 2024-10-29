<div id="back"> </div>

<div class="login-box ">
  
  <div class="login-logo">

    <img src="vistas/img/plantilla/logo-blanco-bloque.png" class="img-responsive" style="padding:30px 100px 0px 100px">

  </div>

  <div class="login-box-body">
    
    <p class="login-box-msg">¡INTRODUZCA SU USUARIO Y CONTRASEÑA!</p>

    <form method="post">

      <div class="form-group has-feedback  ">

        <input type="text" class="form-control" placeholder="Usuario" name="ingUsuario" required>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>

      </div>

      <div class="form-group has-feedback">

        <input type="password" class="form-control" placeholder="Contraseña" name="ingPassword" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      
      </div>

            <div class="row">

            <div class="col-xs-12 tex-center">
        <button type="submit" class="btn btn- btn-block btn-flat mx-auto"
             style="border-radius: 10px; background: black; color: white;">INICIAR SESIÓN</button>
            </div>
    </div>

      <?php

        $login = new ControladorUsuarios();
        $login -> ctrIngresoUsuario();
        
      ?>

    </form>



</div>
