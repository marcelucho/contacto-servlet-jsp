<%-- 
    Document   : formulario
    Created on : 7 abr. 2023, 20:59:02
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="asets/Stylo/stylo4.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lexend+Deca&family=Satisfy&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body class="formu-body">
       
        <section class="titulo-section">
            <h1>Universidad del Norte</h1>
            <h2>Inscribeté ya!!</h2>
        </section>
        
        <section class="formu-section">
            <div  class="contenedor">
                <fieldset>
                    <form action="respuesta.jsp">
                        <div class="contenedor-form">
                            <div class="entrada">
                                <label>Nombre y Apellido</label>
                                <input class="input-campo" type="text" name="inpuNombre" placeholder="Nombre y Apellido">
                            </div>                            
                            <div class="entrada"> 
                                <label for="email">Email</label>
                                <input class="input-campo" type="email" name="inpuEmail" id="email" placeholder="Email">
                            </div>
                            <div class="entrada">
                                <label for="carrera">Eligé tu Carrera</label>
                                <select class="input-campo"id="carrera" name="inpuCarrera">
                                    <option value=" ">Elige tu carrera</option>
                                    <option value="Ing. en Informática">Ing. en Informática</option>
                                    <option value="Odontología">Odontología</option>
                                    <option value="Lic. en Contabilidad">Lic. en Contabilidad</option>                         
                                    <option value="Lic. en Administración">Lic. en Administración</option>                         
                                    <option value="Lic. en Enfermeria">Lic. en Enfermeria</option>                                 
                                </select> 
                            </div>
                        </div>
                        <div class="boton-contenedor">
                            <input class="boton" type="submit" name="boton" value="Listo">
                        </div>
                    </form>
                </fieldset>
            </div>
        </section>

    </body>
</html>
