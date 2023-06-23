<%-- 
    Document   : read
    Created on : 17 jun. 2023, 14:19:31
    Author     : Luis
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Actualizar Contacto</title>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/css/bootstrap.min.css"/>
        <script defer src="<%=request.getContextPath()%>/webjars/bootstrap/5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>


    </head>
    <body>
        <jsp:include page="../templates/header.jsp"></jsp:include>




        <h1>Actualizar Contacto</h1>
        <div class="container">

            <form action="<%= request.getContextPath() %>/ContactoServlet?action=update" method="POST">
                <input type="hidden" name="id" required placeholder="idContacto" value='<c:out value="${contacto.id}"></c:out>'>
                <div class="mb-3">
                    <label for="nombre" class="form-label"> Nombre: </label> 
                    <input type="text" class="form-control" id="nombre" required  placeholder="Introduzca nombre" name="nombre" value='<c:out value="${contacto.nombre}"></c:out>'>
                </div>
                <br>
                <div class="mb-3">

                    <label for="apellido" class="form-label"> Apellido: </label>
                    <input type="text" class="form-control" id="apellido" required  placeholder="Introduzca apellido" name="apellido" value='<c:out value="${contacto.apellido}"></c:out>'>
                </div>
                <br>
                <div class="mb-3">

                    <label for="email" class="form-label"> Email </label>
                    <input type="email" class="form-control" id="email" required  placeholder="Introduzca email" name="email" value='<c:out value="${contacto.email}"></c:out>'>
                </div>
                <br>
                <div class="mb-3">

                    <label for="descripcion" class="form-label"> Descripción: </label>
                    <input type="text" class="form-control" id="descripcion" required  placeholder="Introduzca Descripción"  name="descripcion" value='<c:out value="${contacto.descripcion}"></c:out>'>
                </div>
                <br>
                <button class="btn btn-primary" type="submit" name="Actualizar">Actualizar</button>
            </form>
        </div>
    </body>
</html>

