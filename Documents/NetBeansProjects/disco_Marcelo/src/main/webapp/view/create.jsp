<%-- 
    Document   : create
    Created on : 7 jun. 2023, 18:32:13
    Author     : Luis
--%>


<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>JSP Page</title>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/css/bootstrap.min.css"/>
        <script defer src="<%=request.getContextPath()%>/webjars/bootstrap/5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>


    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Disk</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Discos</a>
                        </li>       

                    </ul>

                </div>
            </div>
        </nav>




        <h1>Registro de Discos</h1>
        <div class="container">

            <form action="<%= request.getContextPath() %>/DiscoServlet?action=create" method="POST">
                <div class="mb-3">
                    <label for="autor" class="form-label"> Autor: </label> 
                    <input type="text" class="form-control" id="autor" placeholder="Introduzca autor" name="autor">
                </div>
                <br>
                <div class="mb-3">

                    <label for="titulo" class="form-label"> Titulo: </label>
                    <input type="text" class="form-control" id="titulo" placeholder="Introduzca titulo" name="titulo">
                </div>
                <br>
                <div class="mb-3">

                    <label for="formato" class="form-label"> Formato: </label>
                    <input type="formato" class="form-control" id="formato" placeholder="formato aac, wac, mp3 y flac" name="formato">
                </div>
                <br>
                <div class="mb-3">

                    <label for="genero" class="form-label"> Genero: </label>
                    <input type="text" class="form-control" id="genero" placeholder="genero rock, pop, clásica, blues, etc"  name="genero">
                </div>
                <br>
                <div class="mb-3">

                    <label for="duracion" class="form-label"> Duracion: </label>
                    <input type="time" class="form-control" id="duracion" placeholder="Introduzca duracion"  name="duracion">
                </div>
                <br>
                <button class="btn btn-primary" type="submit" name="Registrar">Registrar</button>
            </form>
        </div>
    </body>
</html>

