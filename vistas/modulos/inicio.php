<div class="content-wrapper text-uppercase">

  <section class="content-header">
    <h1>
      Bienvenido
      <small>Panel de Control</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li class="active">Tablero</li>
    </ol>
  </section>

  <section class="content">

    <?php if ($_SESSION["perfil"] != "Administrador") { ?>
      <div class="welcome-container text-center">
        <!-- Texto grande arriba a la izquierda -->
        <div class="role-text">
          <?php
          if ($_SESSION["perfil"] == "Vendedor") {
            echo '<span> Cajero/a</span>';
          } elseif ($_SESSION["perfil"] == "Especial") {
            echo '<span>Supervisor</span>';
          }
          ?>
        </div>

        <h2 class="welcome-message">¡Hola, <?php echo $_SESSION['nombre']; ?>!</h2>
        <p class="lead">Estamos encantados de tenerte aquí.</p>
        <img src="vistas/img/plantilla/jo2.png" alt="Bienvenido" class="responsive-image" style="width: 400px; height: auto;">

        <!-- Cambiar el enlace y texto del botón según el rol -->
        <?php if ($_SESSION["perfil"] == "Especial") { ?>
          <a href="ventas">
            <button class="btn btn-success btn-lg mt-20">Comienza a Supervisar</button>
          </a>
        <?php } else { ?>
          <a href="crear-venta">
            <button class="btn btn-success btn-lg mt-20">Comienza a Vender</button>
          </a>
        <?php } ?>
      </div>
    <?php } ?>

    <div class="row">
      <?php if ($_SESSION["perfil"] == "Administrador") { include "inicio/cajas-superiores.php"; } ?>
    </div> 

    <div class="row">
      <div class="col-lg-12">
        <?php if ($_SESSION["perfil"] == "Administrador") { include "reportes/grafico-ventas.php"; } ?>
      </div>

      <div class="col-lg-6">
        <?php if ($_SESSION["perfil"] == "Administrador") { include "reportes/productos-mas-vendidos.php"; } ?>
      </div>

      <div class="col-lg-6">
        <?php if ($_SESSION["perfil"] == "Administrador") { include "inicio/productos-recientes.php"; } ?>
      </div>
    </div>
  </section>
</div>

<style>
  .welcome-container {
    position: relative;
    padding: 30px;
    background-color: #f9f9f9;
    border-radius: 10px;
    margin-bottom: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  .role-text {
    position: absolute;
    top: 10px;
    left: 20px;
    font-size: 3rem;
    color: #4caf50;
    font-weight: bold;
  }

  .welcome-message {
    color: #4caf50;
    font-size: 2.5rem;
    margin-bottom: 20px;
  }

  .btn {
    margin-top: 15px;
  }

  .mt-20 {
    margin-top: 20px;
  }

  .breadcrumb {
    background-color: transparent;
    padding: 5px 15px;
    border-radius: 5px;
  }

  .content-header h1 {
    font-size: 2.5rem;
    color: #333;
  }

  .responsive-image {
    width: 80%;
    max-width: 600px;
    height: auto;
    display: block;
    margin: 0 auto;
    transition: transform 0.3s;
  }

  .responsive-image:hover {
    transform: scale(1.05);
  }
</style>
