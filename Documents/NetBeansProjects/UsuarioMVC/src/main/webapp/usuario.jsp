
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Usuario</h1>
        <form action="<%= request.getContextPath()%>/UsuarioServlet" method="POST">
            <label>ID: </label><input type="number" name="id">
             <br>
            <label>Nombre: </label><input type="text" name="nombre">
             <br>
            <label>Email: </label><input type="email" name="email">
             <br>
            <label>Nacionalidad: </label><input type="text" name="nacionalidad">
            <br>
            <input type="submit" name="Registrar">

        </form>
        
    </body>
</html>
