<%-- 
    Document   : bloques
    Created on : 25 mar. 2023, 14:27:52
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/stiloBloques.css" rel="stylesheet" type="text/css"/>
        <title>Bloques</title>
    </head>
    <body class="body-bloques">

        <div class="contenedor-resultado">
            <!--bloque 1 -->      
            <% 
            String z = request.getParameter("numero");
            int x = Integer.parseInt(z);
            %>       
            <!--bloque 2 -->

            <%if(x>0){   %>           

            <h1> El numero <% out.print(x); %> es positivo</h1>

            <!--bloque 3 -->

            <% }else if(x<0){   %>
            <h1> El numero <% out.print(x); %> es negativo </h1>

            <!--bloque 4 -->

            <% }else{ %>
            <h1> El numero <% out.print(x); %> es cero o neutro </h1>

            <%};
            int y = x * 2; %>
            <h1> El doble del numero es : <%= y %> </h1>
            
        </div>

    </body>


</html>
