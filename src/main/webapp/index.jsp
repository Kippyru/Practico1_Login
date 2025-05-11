<%-- 
    Document   : index
    Created on : 9 may. 2025, 17:38:44
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title>Registro</title>
  <style>
   body { font-family: sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; background: #f2f2f2; }
    .box { background: #fff; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px #ccc; width: 280px; text-align: center; }
  </style>
</head>
<body>

  <div class="box">
    <form action="SvUsuarios" method="POST">
      <h2>Iniciar Sesión</h2>
      <input type="text" name="username" placeholder="Usuario" required><br>
      <input type="password" name="password" placeholder="Contraseña" required><br>
      <button type="submit">Entrar</button>
      <div class="register">
        ¿No tenes cuenta? <a href="registro.html">Regístrate</a>
      </div>
    </form>
  </div>

</body>
</html>