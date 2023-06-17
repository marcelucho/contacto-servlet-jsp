<%-- 
    Document   : list
    Created on : 14 jun. 2023, 21:07:02
    Author     : Luis
--%>

<%@page language= "java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/css/bootstrap.min.css"/>
        <script defer src="<%=request.getContextPath()%>/webjars/bootstrap/5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

        <title>Lista de Contactos</title>

    </head>
    <body>

        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">PV</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Contacto</a>
                        </li>       

                    </ul>

                </div>
            </div>
        </nav>
        
        <div class="container">
            <table class="table">
                <tr>
                    <td>ID</td>
                    <td>NOMBRE</td>
                    <td>APELLIDO</td>
                    <td>EMAIL</td>
                    <td>DESCRIPCION</td>
                    <td colspan="2" align="center">ACCIONES</td>
                    
                </tr>
                <c:forEach var="datosBD" items="${lista}"> <%--Lista dentro de ContactoServlet metodo List --%>
                <tr>
                    <td><c:out value="${datosBD.id}"/></td><%--Debe coincidir con el model los datosBD.xxxx --%>
                    <td><c:out value="${datosBD.nombre}"/></td>
                    <td><c:out value="${datosBD.apellido}"/></td>
                    <td><c:out value="${datosBD.email}"/></td>
                    <td><c:out value="${datosBD.descripcion}"/></td>
                    <td>
                        <button type="button" class="btn btn-warning">
                            <a href="<%= request.getContextPath()%>/ContactoServlet?action=read&id=<c:out value="${datosBD.id}"/>">
                               Actualizar
                            </a>
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-danger">
                           <a href="<%= request.getContextPath()%>/ContactoServlet?action=delete&id=<c:out value="${datosBD.id}"/>">
                           Eliminar
                           </a>
                        </button>
                    </td>
                </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
