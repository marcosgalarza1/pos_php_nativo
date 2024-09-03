<aside class="main-sidebar ">

	 <section class="sidebar">

		<ul class="sidebar-menu">

		<?php

		if($_SESSION["perfil"] == "Administrador"){

			echo '<li class="active">

				<a href="inicio">

					<i class="fa fa-home"></i>
					<span>Inicio</span>

				</a>

			</li>

			<li>

				<a href="usuarios">

					<i class="fa fa-user"></i>
					<span>Usuarios</span>

				</a>

			</li>';

		}

		if($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Especial"){

			echo '<li>

				<a href="categorias">

					<i class="fa fa-th"></i>
					<span>Categorías</span>

				</a>

			</li>

			<li>

				<a href="productos">

					<i class="fa fa-product-hunt"></i>
					<span>Productos</span>

				</a>

				

			</li>';

       



		}

		if($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Vendedor"){

			echo '<li>

				<a href="clientes">
				<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAYAAADE6YVjAAAACXBIWXMAAAsTAAALEwEAmpwYAAACM0lEQVR4nO2US4jUQBCGI+LjJKigoKCCKF58sOIDPAjeRPAoghfBg4IXQdCTVy8exJsKngSFLILuznZXdtadhZlUZaCrsiyjggriA1dBRBBR8BHpzWQ2m0nigDmJBX1Id1Nf1d9/xXH++dBojmnkm4DmnNvpLK0cACTngSTqLZR7lUM0yZMFEJKo3m6vrhQCyC+ykFEM1xfdV0GwQlN4EkgmFMqpWnNm5SCd3EoDNMrjwrtohjTJy4y8bz0MD5RCJmhmLRBLDOB3ypc9efc8f3oNoMxmu44Xf6w3zYZSUBRFi1TLbDbGLMkFtMJd1hD5gEQBVoDhXqeowvQ3YGcVBLLTdd3Fyd54i9dplLtAXC9aGnlYU7ipl6jm80ZAua2J39sqvIB3J2f2MWOt+bVHZl+2KBWY/Rr5AhBftEsjn8mtHojvZDR15zvhaz0JiD97gTmUnGnk04D8Mz6T7xp50u7lQvocQvJjnGRLt4CpBVqTfNXER7VvzmrkX929q7mJ02+Q/3BywxrAOqXvLK46BqC8snKXQ0gOF9jwm0I5mEr8zM5MZiZmx9rTW0sBXakulVjxeSph005zIp9G+TCGZvsfAXOaozwo83uqsyl7X6mnywDDE3aOBgLMdYI82bXofUW8A4gvA/GbnDd6OHDSvk58s80m0EF4ZB5shgDlS2aCPedvI/0LAZLrfXKhkFNlaJKRHLk+WUtXB0G+AsiPFPFxIGFArtnJbzQayyuD/A8nJ34D3q7BBZ6gxLoAAAAASUVORK5CYII=">
				<span>Meseros</span>
				</a>
				

			</li>';

		}

		if($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Vendedor"){

			echo '<li class="treeview">

				<a href="#">

					<i class="fa fa-list-ul"></i>
					
					<span>Ventas</span>
					
					<span class="pull-right-container">
					
						<i class="fa fa-angle-left pull-right"></i>

					</span>

				</a>

				<ul class="treeview-menu">
					
					<li>

						<a href="ventas">
							
							<i class="fa fa-circle-o"></i>
							<span>Administrar ventas</span>

						</a>

					</li>

					<li>

						<a href="crear-venta">
							
							<i class="fa fa-circle-o"></i>
							<span>Crear venta</span>

						</a>

					</li>';

					if($_SESSION["perfil"] == "Administrador"){

					echo '<li>

						<a href="reportes">
							
							<i class="fa fa-circle-o"></i>
							<span>Reporte de ventas</span>

						</a>

					</li>';

					}

				

				echo '</ul>

			</li>';

		}

		
		if($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Vendedor"){

			echo '<li class="treeview">

				<a href="#">

					<i class="fa fa-list-ul"></i>
					
					<span>Compras</span>
					
					<span class="pull-right-container">
					
						<i class="fa fa-angle-left pull-right"></i>

					</span>

				</a>

				<ul class="treeview-menu">
					
					<li>

						<a href="compras">
							
							<i class="fa fa-circle-o"></i>
							<span>Administrar compras</span>

						</a>

					</li>

					<li>

						<a href="crear-venta">
							
							<i class="fa fa-circle-o"></i>
							<span>Crear compra</span>

						</a>

					</li>';

					if($_SESSION["perfil"] == "Administrador"){

					echo '<li>

						<a href="reportes">
							
							<i class="fa fa-circle-o"></i>
							<span>Reporte de compras</span>

						</a>

					</li>';

					}

				

				echo '</ul>

			</li>';

		}


		if($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Especial"){

			echo '<li>

				<a href="proveedor">

					<i class="fa fa-truck"></i>
					<span>Proveedor</span>

				</a>

			</li>';

		

		}

		?>

		</ul>

	 </section>

</aside>