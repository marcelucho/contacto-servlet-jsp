<%-- 
    Document   : paginaInicio
    Created on : 15 abr. 2023, 14:06:56
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Inicio</title>
    </head>
    <body>
        <h1>Pagina Inicio</h1>
        <h2>Lista de nombres</h2>
        <%= request.getAttribute("nomina")%>
        
        <form method="post">
            <p>
                <label for="nombre">Nombre</label>
                <input type="text" id="nombre" name="nombre" placeholder="Introduzca el nombre">                  
            </p>
                    <p>
                        <button type="submit">Enviar</button>
                    </p>


        </form>
    </body>
</html>
