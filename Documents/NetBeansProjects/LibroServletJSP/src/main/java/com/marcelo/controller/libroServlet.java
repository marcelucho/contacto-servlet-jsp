/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.marcelo.controller;

import com.marcelo.model.Libro;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author Luis
 */
@WebServlet(urlPatterns = "/libroServlet")
public class libroServlet extends HttpServlet {
    

    Libro libros = new Libro();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
         libros.setIsbn(req.getParameter("isbn"));
         libros.setTitulo(req.getParameter("titulo"));
         libros.setNombreAutor(req.getParameter("nombreAutor"));        
         libros.setFechaPublicacion(req.getParameter("fechaPublicacion"));
         libros.setEditorial(req.getParameter("editorial"));


        req.setAttribute("isbn", libros.getIsbn());
        req.setAttribute("titulo", libros.getTitulo());
        req.setAttribute("nombreAutor", libros.getNombreAutor());
        req.setAttribute("fechaPublicacion", libros.getFechaPublicacion());
        req.setAttribute("editorial", libros.getEditorial());


        req.getServletContext().getRequestDispatcher("/paginaLibro.jsp").forward(req, resp);       
        
    }
}


