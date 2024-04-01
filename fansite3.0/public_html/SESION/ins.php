<?php
// Inicia sesión
session_start();

// Evita el acceso directo al archivo
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    header('Location: ../CARRITO/index.php');
    exit();
}

$servername = "localhost";
$username = "id19978587_fansiteshop";
$password = "7M2IWw[)OevN-BgG";
$dbname = "id19978587_fansite";

// Crea la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica la conexión
if ($conn->connect_error) {
    die("No hay conexión: " . $conn->connect_error);
}

$correo = $_POST['correo'];
$pass = $_POST['passw'];

if (isset($_POST['btnins'])) {
    $stmt = $conn->prepare("SELECT passw, user_type FROM users WHERE correo = ?");
    $stmt->bind_param("s", $correo);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();

    if ($user && password_verify($pass, $user['passw'])) {
        $_SESSION['user_type'] = $user['user_type'];
        $_SESSION['correo'] = $correo;

        if ($user['user_type'] == 'user') {
            echo "<script>alert('Bienvenido: " . $_SESSION['correo'] . "'); window.location='../CARRITO/index.php'</script>";
        } else {
            echo "<script>alert('Bienvenido Administrador: " . $_SESSION['correo'] . "'); window.location='../CARRITO/admin/productos.php'</script>";
        }
    } else {
        echo "<script>alert('Usuario o contraseña incorrecto'); window.location='./IniciarSesion.php'</script>";
    }

    $stmt->close();
}

$conn->close();
?>
