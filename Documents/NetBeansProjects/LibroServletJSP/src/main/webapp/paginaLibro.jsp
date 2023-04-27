<%-- 
    Document   : libroServlet
    Created on : 26 abr. 2023, 19:02:39
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
        <h1>Datos Libro</h1>
        <form>
            <fieldset>
                <label for="isbn">ISBN: </label>
                <br>
                <input type="text" name="isbn" value="<%= request.getAttribute("isbn") %>"> 
                <br>
                <label for="titulo">Titulo: </label>
                <br>
                <input type="text" name="titulo" value="<%= request.getAttribute("titulo") %>">   
                <br>
                <label for="autor">Nombre del Autor: </label>
                <br>
                <input type="text" name="nombreAutor" value="<%= request.getAttribute("nombreAutor") %>"> 
                <br>
                <label for="publicacion">Fecha de Publicación: </label>
                <br>
                <input type="String" name="publicacion" value="<%= request.getAttribute("fechaPublicacion") %>"> 
                <br>
                <label for="editorial">Editorial: </label>
                <br>
                <input type="text" name="editorial" value="<%= request.getAttribute("editorial") %>"> 
                <br>
            </fieldset>          
        </form>
    </body>
</html>