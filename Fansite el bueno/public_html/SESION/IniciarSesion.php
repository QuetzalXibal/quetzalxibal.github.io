<?php
/*session_start();

require 'ConexionServidor.php';

if (!empty($_POST['correo']) && !empty($_POST['passw'])) {
  $records = $conn->prepare('SELECT id, correo, passw FROM users WHERE correo = :correo');
  $records->bindParam(':correo', $_POST['correo']);
  $records->execute();
  $results = $records->fetch(PDO::FETCH_ASSOC);

  $message = '';

  if (count($results) > 0 && password_verify($_POST['passw'], $results['passw'])) {
    $_SESSION['user_id'] = $results['id'];
    header('Location: /carrito.php');
  } else {
    $message = 'Sorry, those credentials do not match';
  }
}*/

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IniciarSesion</title>
    <link rel="stylesheet" href="../CSS/WallPapers.css" type="text/css">
    <link href="../CSS/IniciarSesion.css" rel="stylesheet" type="text/css"/> <!--este solo es para llamar la carpeta de css -->     
    <link async href="https://fonts.googleapis.com/css?family=Warnes" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css"/>   
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>                          
</head>
<body>
<?php if(!empty($message)): ?>
      <p> <?= $message ?></p>
    <?php endif; ?>  
<div class="login-box"><!--este div es hacerca del login --> 
            <img class='avatar' src="../IMG/Fansite.png" width="" alt="" alt="Logo de FAzt"/>
            <h1>Inicia Sesion</h1>
            <form action="./ins.php" method="POST">
                <label class="correo">Correo</label>               
                <input type="email" placeholder="Ingresa tu correo" name="correo" class="EnterCorreo" maxlength="50" required> <!--USERNAME-->                                     
                <label class="password">Contraseña</label>               
                <input type="password" placeholder="Ingresa tu contraseña" name="passw" class="EnterPassword" minlength="8" maxlength="20" required><!--PASSWORD-->  
                <input  name="btnins" class="boton" type="submit" name="accion" value="Entrar"><!-- Boton-->
               <a class="a" href="RecuperarCuenta.php">¿Perdiste tu contraseña?</a>
               <a class="b" href="Registro.php">Create una cuenta nueva</a> 
            </form>                                                                  
        </div>
</body>
</html>