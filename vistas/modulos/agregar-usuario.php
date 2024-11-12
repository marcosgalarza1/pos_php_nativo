<div class="content-wrapper text-uppercase">
    <!-- Header -->
    <section class="content-header">
        <h1>AGREGAR Usuarios</h1>
        <ol class="breadcrumb">
            <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>

            <li class="active">AGREGAR USUARIOS</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="box">
            <div class="box-body">
                <form role="form" method="post">
                    <div class="row">
                        <!-- ENTRADA PARA EL NOMBRE -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>NOMBRE</strong></h4>
                                <input type="text" class="form-control input-lg" name="nuevoNombre" placeholder="Ingresar Nombre" required>
                            </div>
                        </div>
                        <!-- ENTRADA PARA EL USUARIO -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>USUARIO</strong></h4>
                                <input type="text" class="form-control input-lg" name="nuevoUsuario" placeholder="Ingresar Usuario" id="nuevoUsuario" required>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- ENTRADA PARA LA OONTRASEÑA -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>PASSWORD</strong></h4>
                                <input type="password" class="form-control input-lg" name="nuevoPassword" placeholder="Ingresar Contraseña" required>
                            </div>
                        </div>
                      <!-- ENTRADA PARA SELECCIONAR SU PERFIL -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <h4><strong>SELECCIONAR PERFIL</strong></h4>
                                <select class="form-control input-lg" name="nuevoPerfil" required>
                  
                                 <option value="">Selecionar perfil</option>

                                <option value="Administrador">Administrador</option>

                                <option value="Especial">Especial</option>

                                 <option value="Vendedor">Vendedor</option>

                                </select>
                            </div>
                        </div>

                   
                        <!-- ENTRADA PARA SUBIR FOTO -->
                            <div class="col-md-6">
                            <div class="form-group">
                            <div class="panel">SUBIR FOTO</div>

                            <input type="file" class="nuevaFoto" name="nuevaFoto">

                             <p class="help-block">Peso máximo de la foto 2MB</p>

                             <img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail previsualizar" width="100px">

                             </div>
                       </div>
                    <!-- Botones -->
                    <div style="text-align: right; padding-right: 20px;">
                    <button type="submit" class="btn btn-success btn-sm" style="margin-right: 3px;">GUARDAR</button>
                   <a href="usuarios" class="btn btn-sm" style="background:#6c757d; color:white; margin-right: -1px;">REGRESAR</a>
                </div>

                    <img src="vistas/img/plantilla/user2.jpg" class="responsive-image" style="display: block; margin: 0 auto; max-width: 100%; height: auto; object-fit: contain;">
                    <!-- Controlador para crear el mesero -->
                    <?php
                        $crearUsuario = new ControladorUsuarios();
                        $crearUsuario -> ctrCrearUsuario();
                    ?>
                </form>
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </section>
</div>
