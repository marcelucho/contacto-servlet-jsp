package com.marcelo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

// extends forma parte de la herencia
@WebServlet(urlPatterns="/inicio")  // para acceder al servlet el usuario localhost:8080/inicio
public class Servlet extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest resq, HttpServletResponse resp) throws ServletException, IOException{
        String param = resq.getParameter("nombre");
        if(param == null){
        resp.getWriter().append("Hola Mundo desde DOget otra vez");
        }else{
            String saludo = "Hola, " + param + "!";
            resp.getWriter().append(saludo);
        }
    }
    
}