<%-- 
    Document   : mensaje
    Created on : 29 mar. 2023, 21:08:40
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="asets/css/styles.css" rel="stylesheet" type="text/css"/>
        <title>Mensaje</title>
    </head>
    <body>
        <h1>Mensaje</h1>
        <% out.print(request.getParameter("mensajeIntro")); %>
    </body>
</html>
