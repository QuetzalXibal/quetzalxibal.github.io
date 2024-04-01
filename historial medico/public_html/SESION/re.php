<?php
require 'PHPMailer/PHPMailerAutoload.php';

$conn = new mysqli("localhost", "id19978587_fansiteshop", "7M2IWw[)OevN-BgG", "id19978587_fansite");

if ($conn->connect_errno) {
    die("No hay conexión: (" . $conn->connect_errno . ")");
}

$email = $_POST['email'];

$sql = "SELECT * FROM users WHERE correo = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();
$stmt->close();

if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();
    $token = bin2hex(random_bytes(50)); // Genera un token de 50 bytes

    $sql = "UPDATE users SET reset_token = ? WHERE correo = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $token, $email);
    $stmt->execute();
    $stmt->close();

    $mail = new PHPMailer;
    $mail->isSMTP();
    $mail->Host = 'fansite.gmail.com'; // Cambiar esto por el nombre de tu host de correo
    $mail->SMTPAuth = true;
    $mail->Username = 'tu-correo@gmail.com'; // Cambiar esto por tu dirección de correo electrónico
    $mail->Password = 'tu-contraseña'; // Cambiar esto por tu contraseña de correo electrónico
    $mail->SMTPSecure = 'tls';
    $mail->Port = 587;

    $mail->setFrom('tu-correo@gmail.com', 'Soporte de Fansite'); // Cambiar esto por tu dirección de correo electrónico y nombre de soporte
    $mail->addAddress($email, $user['usuario']);
    $mail->isHTML(true);

    $mail->Subject = 'Restablecimiento de contraseña en Fansite';
    $mail->Body = "Hola " . $user['usuario'] . ",<br><br>Has solicitado restablecer tu contraseña en Fansite. Por favor, haz clic en el siguiente enlace para restablecer tu contraseña:<br><br><a href='http://tusitio.com/reset_password.php?token=" . $token . "'>Restablecer contraseña</a><br><br>Si no has solicitado restablecer tu contraseña, ignora este correo electrónico.";

    if ($mail->send()) {
        echo "<script>alert('Se ha enviado un enlace de restablecimiento de contraseña a tu correo electrónico.'); window.location='IniciarSesion.php'</script>";
    } else {
        echo "<script>alert('Error al enviar el correo electrónico. Por favor, inténtalo de nuevo.'); window.location='RecuperarCuenta.php'</script>";
    }
} else {
    echo "<script>alert('No se encontró ninguna cuenta con ese correo electrónico.'); window.location='RecuperarCuenta.php'</script>";
}

$conn->close();
?>
