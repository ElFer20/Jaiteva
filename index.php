<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurante Jaiteva</title>
    <link rel="stylesheet" href="estilos.css">
    <link rel="icon" type="image/png" href="img/J.png"/>
</head>
<body>
    <header>
        <h1>Bienvenido a Jaiteva</h1>
        <nav>
            <a href="invitado_login.php">Iniciar sin cuenta</a>
            <a href="register.php">Registrarse</a>
            <a href="login.php">Iniciar Sesión</a>
        </nav>
    </header>
    <div class="container">
        <h2>Disfruta de la mejor comida con el mejor servicio</h2>
        <p>Escanea el código QR en tu mesa para comenzar a pedir.</p>
    </div>
    
    <!-- Formulario de Contacto -->
    <section id="contacto">
        <h2>Contáctanos</h2>
        <form name="contact" method="POST" data-netlify="true">
            <input type="hidden" name="form-name" value="contact">
            <label for="name">Nombre:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="message">Mensaje:</label>
            <textarea id="message" name="message" required></textarea>
            
            <button type="submit">Enviar</button>
        </form>
    </section>
</body>
</html>
