<?php
$conn = new mysqli("localhost", "id19978587_fansiteshop", "7M2IWw[)OevN-BgG", "id19978587_fansite");
if ($conn->connect_errno) {
    die("No hay conexión: (" . $conn->connect_errno . ")");
}

$usuario = $_POST['usuario'];
$correo = $_POST['correo'];
$pass = $_POST['passw'];
$cpass = $_POST['cpassw'];
$user_type = $_POST['user_type'];

if (isset($_POST['btnreg'])) {
    if ($pass === $cpass) {
        $passf = password_hash($pass, PASSWORD_DEFAULT);

        $sql = "INSERT INTO users (usuario, correo, passw, user_type) values (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssss", $usuario, $correo, $passf, $user_type);

        if ($stmt->execute()) {
            echo "<script>alert('Usuario Registrado: $usuario'); window.location='IniciarSesion.php'</script>";
        } else {
            echo "<script>alert('Error al registrar el usuario: " . htmlspecialchars($stmt->error) . "'); window.location='Registro.php'</script>";
        }

        $stmt->close();
    } else {
        echo "<script>alert('Las contraseñas no coinciden'); window.location='Registro.php'</script>";
    }
}
$conn->close();
?>
