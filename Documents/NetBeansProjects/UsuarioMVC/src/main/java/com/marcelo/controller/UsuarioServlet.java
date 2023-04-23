
package com.marcelo.controller;

import com.marcelo.model.Usuario;
import com.sun.net.httpserver.HttpsServer;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;

@WebServlet(urlPatterns = "/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {
    Usuario user = new Usuario();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
         user.setId(Integer.parseInt(req.getParameter("id")));
         user.setNombre(req.getParameter("nombre"));
         user.setEmail(req.getParameter("email"));        
         user.setNacionalidad(req.getParameter("nacionalidad"));


        req.setAttribute("id", user.getId());
        req.setAttribute("nombre", user.getNombre());
        req.setAttribute("email", user.getEmail());
        req.setAttribute("nacionalidad", user.getNacionalidad());


        req.getServletContext().getRequestDispatcher("/UsuarioDatos.jsp").forward(req, resp);       
        
    }
}
