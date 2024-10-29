<?php
// Configuración de la conexión a la base de datos
$servername = "localhost";
$username = "root"; // Cambia si tu usuario es diferente
$password = ""; // Cambia si tu contraseña es diferente
$dbname = "jaiteva final";

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>
