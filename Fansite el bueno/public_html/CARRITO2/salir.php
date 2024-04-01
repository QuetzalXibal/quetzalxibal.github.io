<?php
session_start();
session_destroy();
header('Location: ../SESION/IniciarSesion.php')
?>