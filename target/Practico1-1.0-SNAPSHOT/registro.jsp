<%-- 
    Document   : Registrosrodo
    Created on : 12 may. 2025, 13:12:04
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro</title>
    <style>
        body {
            font-family: sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f2f2f2;
        }
        .form-box {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 300px;
            text-align: center;
        }
        input {
            width: 90%;
            margin: 10px 0;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        button {
            width: 90%;
            padding: 10px;
            background: #CD64D4;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        .login-link {
            margin-top: 15px;
            display: block;
        }
    </style>
</head>
<body>
    <div class="form-box">
        <h2>Crear cuenta</h2>
        <form method="get" action="SvUsuarios">
            <input type="text" name="nombre" placeholder="Nombre de usuario" required>
            <input type="password" name="contraseña" placeholder="Contraseña" required>
            <button type="submit">Registrarse e iniciar sesión</button>
        </form>
        
        <a class="login-link" href="index.jsp">Ya tengo cuenta</a>
    </div>
</body>
</htm