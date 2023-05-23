package com.marcelo;

import com.marcelo.dao.ConductorDAO;
import com.marcelo.dao.ConductorDAOImpl;
import com.marcelo.model.Conductor;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/ConductorServlet")
public class ConductorServlet extends HttpServlet {

    private ConductorDAO conductorDAO;

    public ConductorServlet() {
        super();
        conductorDAO = new ConductorDAOImpl();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.procesarSolicitud(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         this.procesarSolicitud(req, resp);
    }

    protected void procesarSolicitud(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

    private void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
    private void showRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/create.jsp");
        dispatcher.forward(request, response);
    }
    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String nacionalidad = request.getParameter("nacionalidad");
        String domicilio = request.getParameter("domicilio");
        String ciudad = request.getParameter("ciudad");
        String pais = request.getParameter("pais");
        String fechaNacimiento = request.getParameter("fechaNacimiento");
        String docIdentidad = request.getParameter("docIdentidad");
        String catLicencia = request.getParameter("catLicencia");
        String numLicencia = request.getParameter("numLicencia");
        String telefono = request.getParameter("telefono");
        String grupoSangre = request.getParameter("grupoSangre");
        String email = request.getParameter("email");
        String empresa = request.getParameter("empresa");
        
        //Crear el objeto que se envia a la base de datos
        
        Conductor objConductor = new Conductor();
        objConductor.setNombre(nombre);
        objConductor.setApellido(apellido);
        objConductor.setNacionalidad(nacionalidad);
        objConductor.setDomicilio(domicilio);
        objConductor.setCiudad(ciudad);
        objConductor.setPais(pais);
        objConductor.setFechaNacimiento(fechaNacimiento);
        objConductor.setDocIdentidad(docIdentidad);
        objConductor.setCatLicencia(catLicencia);
        objConductor.setNumLicencia(numLicencia);
        objConductor.setTelefono(telefono);
        objConductor.setGrupoSangre(grupoSangre);
        objConductor.setEmail(email);
        objConductor.setEmpresa(empresa);
        
        conductorDAO.insert(objConductor);
        
        //Rerideccionar al index
        
        this.index(request, response);     
        
        
    }
}
