

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/webjars/bootstrap/5.3.0-alpha3/dist/css/bootstrap.min.css"/>
        <script defer src="<%=request.getContextPath()%>/webjars/bootstrap/5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Conductor</title>
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

        <h1 class="text-center">Rigistro de Conductor</h1>
        
         <div class="container">
            <form action="<%= request.getContextPath() %>/ConductorServlet?action=create" method="POST">
                <div class="mb-3">
                    <label for="nombre" class="form-label"> Nombre: </label> 
                    <input type="text" class="form-control" id="nombre" placeholder="Introduzca nombre" name="nombre">
                </div>
                <div class="mb-3">
                    <label for="apellido" class="form-label"> Apellido: </label> 
                    <input type="text" class="form-control" id="apellido" placeholder="Introduzca apellido" name="apellido">
                </div>
                <div class="mb-3">
                    <label for="nacionanlidad" class="form-label"> Nacionalidad: </label> 
                    <input type="text" class="form-control" id="nacionalidad" placeholder="Introduzca nacionalidad" name="nacionalidad">
                </div>
                <div class="mb-3">
                    <label for="domicilio" class="form-label"> Domicilio: </label> 
                    <input type="text" class="form-control" id="domicilio" placeholder="Introduzca domicilio" name="domicilio">
                </div>
                <div class="mb-3">
                    <label for="ciudad" class="form-label"> Ciudad: </label> 
                    <input type="text" class="form-control" id="ciudad" placeholder="Introduzca ciudad" name="ciudad">
                </div>
                <div class="mb-3">
                    <label for="pais" class="form-label"> Pais: </label> 
                    <input type="text" class="form-control" id="pais" placeholder="Introduzca pais" name="pais">
                </div>                
                <div class="mb-3">
                    <label for="fechaNacimiento" class="form-label"> Fecha de Nacimiento: </label> 
                    <input type="date" class="form-control" id="fechaNacimiento" placeholder="Introduzca fecha de Nacimiento" name="fechaNacimiento">
                </div>
                <div class="mb-3">
                    <label for="docIdentidad" class="form-label"> Documento de Identidad: </label> 
                    <input type="text" class="form-control" id="docIdentidad" placeholder="Introduzca documento de Identidad" name="docIdentidad">
                </div>
                <div class="mb-3">
                    <label for="catLicencia" class="form-label"> Categoria de Licencia: </label> 
                    <input type="text" class="form-control" id="catLicencia" placeholder="Introduzca categoria de licencia" name="catLicencia">
                </div>
                <div class="mb-3">
                    <label for="numLicencia" class="form-label"> Numero de Licencia: </label> 
                    <input type="text" class="form-control" id="numLicencia" placeholder="Introduzca numero de licencia" name="numLicencia">
                </div>
                <div class="mb-3">
                    <label for="telefono" class="form-label"> Telefono: </label> 
                    <input type="text" class="form-control" id="telefono" placeholder="Introduzca telefono" name="telefono">
                </div>
                <div class="mb-3">
                    <label for="grupoSangre" class="form-label"> Grupo Sanguineo: </label> 
                    <input type="text" class="form-control" id="grupoSangre" placeholder="Introduzca nombre" name="grupoSangre">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label"> Email: </label> 
                    <input type="text" class="form-control" id="email" placeholder="Introduzca email" name="email">
                </div>
                <div class="mb-3">
                    <label for="empresa" class="form-label"> Empresa: </label> 
                    <input type="text" class="form-control" id="empresa" placeholder="Introduzca empresa" name="empresa">
                </div>
                
                 <button class="btn btn-primary" type="submit" name="Registrar">Registrar</button>
            </form>
         </div>
    </body>
</html>