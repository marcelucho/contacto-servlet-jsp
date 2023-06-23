<%-- 
    Document   : contactoPost
    Created on : 19 abr. 2023, 18:53:11
    Author     : Luis
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Crear Contacto</title>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/css/bootstrap.min.css"/>
        <script defer src="<%=request.getContextPath()%>/webjars/bootstrap/5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>


    </head>
    <body>
        <jsp:include page="../templates/header.jsp"></jsp:include>




        <h1>Pagina de Registro de Contacto</h1>
        <div class="container">

            <form action="<%= request.getContextPath() %>/ContactoServlet?action=create" method="POST">
                <div class="mb-3">
                    <label for="nombre" class="form-label"> Nombre: </label> 
                    <input type="text" class="form-control" id="nombre" placeholder="Introduzca nombre" name="nombre">
                </div>
                <br>
                <div class="mb-3">

                    <label for="apellido" class="form-label"> Apellido: </label>
                    <input type="text" class="form-control" id="apellido" placeholder="Introduzca apellido" name="apellido">
                </div>
                <br>
                <div class="mb-3">

                    <label for="email" class="form-label"> Email </label>
                    <input type="email" class="form-control" id="email" placeholder="Introduzca email" name="email">
                </div>
                <br>
                <div class="mb-3">

                    <label for="descripcion" class="form-label"> Descripción: </label>
                    <input type="text" class="form-control" id="descripcion" placeholder="Introduzca apellido"  name="descripcion">
                </div>
                <br>
                <button class="btn btn-primary" type="submit" name="Registrar">Registrar</button>
            </form>
        </div>
    </body>
</html>
