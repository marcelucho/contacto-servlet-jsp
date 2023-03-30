<%-- 
    Document   : envio
    Created on : 29 mar. 2023, 20:59:55
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="asets/css/styles.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Envio de mensaje</h1>
        <form method="post" action="mensaje.jsp">
            <h2>Introdusca un mensaje</h2>
            <input type="text" name"mensajeIntro" placeholder="mensaje" >
            <input type="submit" value"Enviar">
            
        </form>
    </body>
</html>
