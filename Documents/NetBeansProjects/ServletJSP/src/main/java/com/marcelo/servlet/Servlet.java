package com.marcelo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

// extends forma parte de la herencia
@WebServlet(urlPatterns="/inicio")  // para acceder al servlet el usuario localhost:8080/inicio
public class Servlet extends HttpServlet{
    
    private List<String> lista = new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

       req.setAttribute("nomina",lista);        
       req.getServletContext().getRequestDispatcher("/paginaInicio.jsp").forward(req, resp);
    }
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    
    String nombre = req.getParameter("nombre");
    this.lista.add(nombre);
    resp.sendRedirect(req.getContextPath()+ "/inicio"); // redirecciona a la pagina de inicio
    
    
    }
    
}