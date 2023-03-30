<%-- 
    Document   : tarea3_2
    Created on : 27 mar. 2023, 22:11:39
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/tarea3.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        
            <% 
            String formuNombre = request.getParameter("nombre");
            
            %>  
            <h1>Hola <%= formuNombre%></h1>
    </body>
</html>
