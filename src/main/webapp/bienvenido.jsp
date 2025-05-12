<%-- 
    Document   : bienvenido
    Created on : 11 may. 2025, 16:27:01
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%
HttpSession sesion = request.getSession(false);
String username = (sesion != null) ? (String) sesion.getAttribute("username") : null;
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenido</title>
    <style>
    body {
     font-family: sans-serif;
     background: #f2f2f2;
     display: flex;
     flex-direction: column;
     align-items: center;
     justify-content: center;
     height: 100vh;
        }

.logout-button {
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #e74c3c;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    text-decoration: none;
        }

 .logout-button:hover {
    background-color: #c0392b;
        }
    </style>
</head>
<body>

    <h1>¡Hola, <%= username %>!</h1>
    <a href="index.jsp">
        <button type="button" class="logout-button">Cerrar sesión</button>
    </a>

</body>
</html>
