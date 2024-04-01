<?php
$conn = new mysqli("localhost", "id19978587_fansiteshop", "7M2IWw[)OevN-BgG", "id19978587_fansite");
if ($conn->connect_errno) {
    die("No hay conexión: (" . $conn->connect_errno . ")");
}

if (isset($_GET['token'])) {
    $token = $_GET['token'];
    $sql = "SELECT * FROM users WHERE reset_token = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $token);
    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        if (isset($_POST['new_password']) && isset($_POST['confirm_password'])) {
            $new_password = $_POST['new_password'];
            $confirm_password = $_POST['confirm_password'];

            if ($new_password === $confirm_password) {
                $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
                $sql = "UPDATE users SET passw = ?, reset_token = NULL WHERE id = ?";
                $stmt = $conn->prepare($sql);
                $stmt->bind_param("si", $hashed_password, $user['id']);
                $stmt->execute();
                $stmt->close();

                echo "<script>alert('La contraseña ha sido cambiada con éxito.'); window.location='IniciarSesion.php'</script>";
            } else {
                echo "<script>alert('Las contraseñas no coinciden. Por favor, inténtalo de nuevo.'); window.location='reset_password.php?token=" . $token . "'</script>";
            }
        }
    } else {
        echo "<script>alert('Token inválido.'); window.location='Iniciar
