<%-- 
    Document   : contactoPost
    Created on : 19 abr. 2023, 18:53:11
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Pagina de Registro de Contacto</h1>
        
        <form action="<%= request.getContextPath() %>/ContactoServlet" method="POST">
            <label> Nombre: </label><input type="text" name="nombre">
            <br>
            <label> Apellido: </label><input type="text" name="apellido">
            <br>
            <label> EmailId: </label><input type="email" name="email">
            <br>
            <label> Descripción: </label><input type="text" name="descripcion">
            <br>
            <input type="submit" name="Registrar">
        </form>
    </body>
</html>
