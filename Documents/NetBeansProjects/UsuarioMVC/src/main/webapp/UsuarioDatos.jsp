
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos Usuario</h1>
        <form>
           Nombre: <%= request.getAttribute("nombre") %>
           <br>
           Email: <%= request.getAttribute("email") %> 
        </form>
    </body>
</html>
