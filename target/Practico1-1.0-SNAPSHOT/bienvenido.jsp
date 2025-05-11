<%-- 
    Document   : bienvenido
    Created on : 11 may. 2025, 16:27:01
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% String username = (String) request.getAttribute("username"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
    </head>
    <body>
        <h1>Hola!, <%= username %>!</h1>
    </body>
</html>
