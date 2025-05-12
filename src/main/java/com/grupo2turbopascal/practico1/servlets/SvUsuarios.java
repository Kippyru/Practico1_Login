package com.grupo2turbopascal.practico1.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import logica.Usuario;

@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {

    // Lista guardar usuarios en memoria
    private static List<Usuario> listaUsuarios = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Registra las personas nuevos desde registro.jsp :3
        String nombre = request.getParameter("nombre");
        String contraseña = request.getParameter("contraseña");

        if (nombre != null && contraseña != null) {
            Usuario nuevo = new Usuario(nombre, contraseña);
            listaUsuarios.add(nuevo);
            HttpSession sesion = request.getSession();
            sesion.setAttribute("username", nombre);
            response.sendRedirect("bienvenido.jsp");
        } else {
    
            response.sendRedirect("registro.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean encontrado = false;

        for (Usuario u : listaUsuarios) {
            if (u.getUsername().equals(username) && u.getPassword().equals(password)) {
                encontrado = true;
                break;
            }
        }

        if (encontrado) {
            HttpSession sesion = request.getSession();
            sesion.setAttribute("username", username);
            response.sendRedirect("bienvenido.jsp");
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html><body><h3>Credenciales incorrectas.</h3>");
            out.println("<a href='index.jsp'>Volver</a></body></html>");
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet que maneja el registro e inicio de sesión de usuarios.";
    }
}

// Todos los datos se borran cuando apagues el server porque no usas una base de datos de sql w