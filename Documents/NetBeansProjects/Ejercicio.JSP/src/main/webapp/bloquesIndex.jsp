<%-- 
    Document   : indexBloques
    Created on : 25 mar. 2023, 17:56:33
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="Estilos/stiloBloques.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="body-index">
        <div class="formulario">
            <form action="bloques.jsp" method="post">
                <label>Ingresa un numero</label>
                <input type="number" name="numero" id="numero" placeholder="numero por favor">
                <button type="submit">Enviar</button>
            </form>
        </div>
    </body>
</html>
