<%-- 
    Document   : InfoSystem
    Created on : 26 mar. 2023, 13:53:56
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Properties" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="Estilos/stiloBloques.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="body-bloques">

        <div class="contenedor-resultado">
            <% Properties props = System.getProperties(); %>
            <h1>Información Del Sistema</h1>
            <table>

                <tr>
                    <td><span>Sistema Operativo: </span></td>
                    <td><%=  props.getProperty("os.name")  %></td>
                </tr>
                <tr>
                    <td><span>Versión del sitema operativo: </span></td>
                    <td><%= props.getProperty("os.version") %></td>
                </tr>
                <tr>
                    <td><span>Arquitectura del sitema operativo: </span></td>
                    <td><%= props.getProperty("os.arch") %></td>
                </tr>
                <tr>
                    <td><span>Nombre de usuario del sitema: </span></td>
                    <td><%=  props.getProperty("user.name")%></td>
                </tr>
                <tr>
                    <td><span>Directorio del trabajo del Usuario: </span></td>
                    <td><%=  props.getProperty("user.dir") %></td>
                </tr>

            </table>


        </div>

    </body>
</html>
