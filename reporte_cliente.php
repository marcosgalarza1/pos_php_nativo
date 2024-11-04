<?php
require "fpdf/conexion.php";
require "fpdf/fpdf.php";

class PDF extends FPDF
{
    // Encabezado de página
    function Header()
    {
        // Añadir imagen en la esquina superior izquierda
        $this->Image('vistas/img/texturas/log.png', 10, 4, 30);

        // Añadir imagen en la esquina superior derecha (opcional)
        $this->Image('vistas/img/texturas/log2.jpg', 170, 8, 30); // Ajusta la posición si es necesario

        $this->SetFont('Arial', 'B', 14);
        $this->Cell(0, 10, 'EL GALLITO CAMBA', 0, 1, 'C');
        $this->Cell(0, 8, 'RIO PIRAI', 0, 1, 'C');
       
        $this->Ln(7); // Mayor separación después del título

        // Título en cada página
        $this->SetFont("Arial", "B", 12);
        $this->Cell(0, 0, "REPORTE DE CLIENTE", 0, 1, "C");
        $this->Ln(5); // Espacio entre el título y la tabla
    }

    // Encabezado de la tabla
    function TablaHeader()
    {
        $this->SetFont("Arial", "", 10);
        $this->SetFillColor(200, 200, 200); // Color de fondo de las cabeceras

        // Ajustar el ancho total de la tabla (restar márgenes izquierdo y derecho)
        $tablaAncho = 185; // Ancho total de la tabla en mm (210 mm - 2 * 10 mm de márgenes)
        $anchoColumna = array(60, 40, 40, 50); // Ancho de cada columna

        // Calcular la posición inicial para centrar la tabla
        $posX = (210 - $tablaAncho) / 2; // 210 mm es el ancho de A4
        $this->SetX($posX);

        // Imprimir cabeceras de la tabla
        $this->Cell($anchoColumna[0], 10, "NOMBRE", 1, 0, "C", true);
        $this->Cell($anchoColumna[1], 10, "FECHA", 1, 0, "C", true);
       
    }

    // Pie de página
    function Footer()
    {
        $this->SetY(-15); // Posición a 1.5 cm del final
        $this->SetFont('Arial', 'I', 8);
        $this->Cell(0, 10, 'Pagina ' . $this->PageNo() . '/{nb}', 0, 0, 'C');
        date_default_timezone_set('America/La_Paz');
        $this->Cell(0, 10, 'Fecha: ' . date('d-m-Y'), 0, 0, 'R');
    }
}

// Crear una instancia de FPDF y agregar una página
$pdf = new PDF("P", "mm", "A4");
$pdf->AliasNbPages();
$pdf->AddPage();

// Imprimir el encabezado de la tabla
$pdf->TablaHeader();

// Establecer la fuente para los datos
$pdf->SetFont("Arial", "", 9);

// Ajustar el ancho total de la tabla (restar márgenes izquierdo y derecho)
$tablaAncho = 185; // Ancho total de la tabla en mm (210 mm - 2 * 10 mm de márgenes)
$anchoColumna = array(60, 40, 40, 50); // Ancho de cada columna

// Ejecutar la consulta y agregar los datos al PDF
$sql = "SELECT nombre, fecha FROM clientes";
if ($resultado = $mysqli->query($sql)) {
    while ($fila = $resultado->fetch_assoc()) {

        if ($pdf->GetY() > 250) { // Verifica si la posición Y está cerca del final de la página
            $pdf->AddPage(); // Añade una nueva página
            $pdf->TablaHeader(); // Imprime el encabezado de la tabla en la nueva página
        }

        $pdf->SetX((210 - $tablaAncho) / 2); // Asegurarse de estar en la posición correcta

        // Imprimir datos de la fila
        $pdf->Cell($anchoColumna[0], 10, strtoupper($fila['nombre']), 1, 0, "L");
        $pdf->Cell($anchoColumna[1], 10, strtoupper($fila['fecha']), 1, 0, "L");
    }
    $resultado->free();
} else {
    $pdf->Cell(0, 10, "Error en la consulta: " . $mysqli->error, 0, 1, "C");
}

// Cerrar y generar el PDF
$pdf->Output();
?>
