<%-- 
    Document   : index
    Created on : 9 may. 2025, 17:38:44
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! en HTML</h1> <!-- esto es html -->
        <% String Hola = "Holi Mundo en Java"; %> <!-- esto no se ve, es java pero el usuario final no lo ve -->
        <% String Chau = "Chau Mundo en Java"; %>
        <%=Chau %>  <!-- es igual muestra el contenido de una variable en la pagina -->
    </body>
</html>
