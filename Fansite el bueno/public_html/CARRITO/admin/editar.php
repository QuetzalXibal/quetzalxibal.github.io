<?php
require_once "../config/conexion.php";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!empty($_POST['id'])) {
        $id = $_POST['id'];
        $query = mysqli_query($conexion, "SELECT * FROM productos WHERE id = $id");
        $product = mysqli_fetch_assoc($query);

        echo json_encode($product);
    }
} elseif ($_SERVER['REQUEST_METHOD'] == 'GET') {
    // tu código existente para manejar el formulario de edición
}
?>
