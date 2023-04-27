<%-- 
    Document   : libroIndex
    Created on : 26 abr. 2023, 20:01:24
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
         <h1>Libreria Marcelucho</h1>
        <form action="<%= request.getContextPath()%>/libroServlet" method="POST">
            <fieldset>
            <label>ISBN: </label>
            <br>
            <input type="text" name="isbn">
            <br>
            <label>Titulo: </label>
            <br>
            <input type="text" name="titulo">
            <br>
            <label>Nombre del Autor: </label>
            <br>
            <input type="text" name="nombreAutor">
            <br>
            <label>Fecha de Publicación: </label>
            <br>
            <input type="date" name="fechaPublicacion">
            <br>
            <label>Editorial: </label>
            <br>
            <input type="text" name="editorial">
            <br>
            <input type="submit" name="Registrar">
            </fieldset>
        </form>
    </body>
</html>
