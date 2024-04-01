<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SignUp</title>
    <link rel="stylesheet" href="../CSS/WallPapers.css" type="text/css">
    <link href="../CSS/Registro.css" rel="stylesheet" type="text/css"/>
    <link async href="https://fonts.googleapis.com/css?family=Warnes" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css"/>

    <script>
    function validateForm() {
        var password = document.forms["registerForm"]["passw"].value;
        var confirmPassword = document.forms["registerForm"]["cpassw"].value;

        if (password !== confirmPassword) {
            alert("Las contraseñas no coinciden");
            return false;
        }
    }
    </script>
</head>
<body text="#ffffff">
<?php if(!empty($message)): ?>
  <p> <?= $message ?></p>
<?php endif; ?>

    <div class="login-box">
        <h1>Registrate</h1>      
            <span>o <a class="a" href="./IniciarSesion.php">Inicia Sesión</a></span>
            <form action="reg.php" method="POST" onsubmit="return validateForm()" name="registerForm">
                <input name="usuario" type="text" placeholder="Introduce tu usuario" minlength="3" maxlength="20" required>
                <input name="correo" type="email" placeholder="Introduce tu correo" minlength="8" maxlength="50" required>
                <input name="passw" type="password" placeholder="Crea una contraseña" minlength="8" maxlength="20" required>
                <input name="cpassw" type="password" placeholder="Confirma tu contraseña" minlength="8" maxlength="20" required>
                <select name="user_type">
                    <option value="user">Usuario</option>
                    <option value="creator">Administrador</option>
                </select>
                <input class="btn btn-danger btn-block" class="boton" type="submit" value="Registra" name="btnreg">
            </form>
    </div>
</body>
</html>
