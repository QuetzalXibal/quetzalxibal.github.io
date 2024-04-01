<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content=text/html; charset="UTF-8">
        <title>Lost your password?</title>
        <link rel="stylesheet" href="../CSS/WallPapers.css" type="text/css">
        <link async href="https://fonts.googleapis.com/css?family=Warnes" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css"/>
        <link href="../CSS/RecuperarCuenta.css" rel="stylesheet" type="text/css"/>
    </head>
    <body text="#ffffff">
        <div class="login-box">
        <h1>¿Olvidaste tu contraseña?</h1>
        <a>Introduce tu email para recuperar tu cuenta... </a><br/>
        <span>o <a href="./IniciarSesion.php" class="a">Inicia sesion</a></span>
        <form action="rc.php" method="POST">
            <input name="email" type="text" placeholder="Ingresa tu correo">   
            <input type="submit" value="Recupera">
        </form>
</div>
    </body>
</html>
