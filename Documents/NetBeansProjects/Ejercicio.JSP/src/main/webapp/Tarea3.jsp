<%-- 
    Document   : Tarea3
    Created on : 26 mar. 2023, 15:27:25
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Krub:wght@400;700&display=swap" rel="stylesheet">
        <link href="Estilos/tarea3.css" rel="stylesheet" type="text/css"/>
        <title>Contacto</title>
    </head>
    <body>
        <h1>Contacto</h1>


        <form action="tarea3_2.jsp" class="formulario">
            <fieldset>
                <legend>Contactános llenando todos los campos</legend>
                <div class="contenedor-campos">
                    <div class="campo">
                        <label>Nombre: </label>
                        <input class= "input-text" type="text" name="nombre" id="nombre" placeholder="Ingrese su nombre">
                    </div>
                    <div class="campo">
                        <label>Email: </label>
                        <input class= "input-text" type="email" name="email" id="email" placeholder="Ingrese su email">
                    </div>
                    <div class="campo">
                        <label>Descripción:</label>
                        <textarea class= "input-text" name="descripción" placeholder="Ingrese descripción"></textarea>
                    </div>                        
                </div> <%-- fin formulario--%>
                <div class="alinear-derecha flex">
                    <button class="boton w-100" type="submit">Saludar</button>
                </div>
                
            </fieldset>
        </form>
            
    </body>
</html>
