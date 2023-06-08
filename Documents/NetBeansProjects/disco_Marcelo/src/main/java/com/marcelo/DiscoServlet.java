
package com.marcelo;

import com.marcelo.dao.DIscoDAOImpl;
import com.marcelo.dao.DiscoDAO;
import com.marcelo.model.Disco;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;


@WebServlet(urlPatterns ="/DiscoServlet")
public class DiscoServlet extends HttpServlet{
    private DiscoDAO discoDAO;
    
    public DiscoServlet(){
        super();
        discoDAO = new DIscoDAOImpl();
        
    }
    
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        this.procesarSolicitud(req, resp);
         
    
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
       this.procesarSolicitud(req, resp);
    }
    
    protected void procesarSolicitud(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        switch (request.getParameter("action")) {
            case "list":
                //this.list(request, response);
                break;
            case "create":
               this.create(request, response);
                break;
            case "read":
                //this.read(request, response);
                break;
            case "update":
                //this.update(request, response);
                break;
            case "delete":
                //this.delete(request, response);
                break;
            case "showRegister":
                //this.showRegister(request, response);
                break;
            case "index":
                this.index(request, response);
                break;
            default:
                this.index(request, response);
                break;
        }
        
       
    }
     private void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        }
     
     private void showRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/view/create.jsp");
            dispatcher.forward(request, response);
        }
     private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            String autor= request.getParameter("autor");
            String titulo = request.getParameter("titulo");
            String formato = request.getParameter("formato");
            String genero = request.getParameter("genero");
            String duracion = request.getParameter("duracion");

            
            // Crear el objeto que se envia a la base de datos
            Disco objDisco = new Disco();
            objDisco.setAutor(autor);         
            objDisco.setTitulo(titulo);
            objDisco.setFormato(formato);
            objDisco.setGenero(genero);         
            objDisco.setDuracion(duracion);
            
            discoDAO.insert(objDisco);
            
            // Redireccionar al index
            this.index(request, response);
     }
}

