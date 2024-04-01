<?php

$server = 'localhost';
$username = 'id19978587_fansiteshop';
$password = '7M2IWw[)OevN-BgG';
$database = 'id19978587_fansite';

try {
  $conn = new PDO("mysql:host=$server;dbname=$database;", $username, $password);
} catch (PDOException $e) {
  die('Sin Conexion: ' . $e->getMessage());
}

?>