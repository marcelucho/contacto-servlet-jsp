<%-- 
    Document   : respuesta
    Created on : 8 abr. 2023, 14:58:44
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="html-respueesta">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="asets/Stylo/stylo4.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body class="respu-body">
        <% 
           String formuNombre = request.getParameter("inpuNombre");
           String formuCorreo = request.getParameter("inpuEmail");            
           String formuCarrera = request.getParameter("inpuCarrera");            
        %>
        
            <div class="contenedor-tabla">
                <div class="contenedor-datos">        
                    <table>
                        <tr>
                            <td><span class="datos">Nombre y apellido</span></td>
                            <td>:<%= formuNombre%></td>                   
                        </tr>
                        <tr>
                            <td><span class="datos">Email</span></td>
                            <td>:<%= formuCorreo%></td>                    
                        </tr>
                        <tr>
                            <td><span class="datos">Carrera</span></td>                  
                            <td>:<%= formuCarrera%></td>
                        </tr>
                    </table>
                        <h3>En breve nos comunicaremos contigo, gracias por elegirnos!!</h3>
                </div>
            </div>
        

    </body>
</html>
