
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos Usuario</h1>
        <form>
            <fieldset>
           <label for="id">ID: </label> <input type="number" name="id" value="<%= request.getAttribute("id") %>"> 
           <br>
           <label for="name">Nombre: </label> <input type="text" name="name" value="<%= request.getAttribute("nombre") %>">   
           <br>
           <label for="email">Email: </label> <input type="email" name="email" value="<%= request.getAttribute("email") %>"> 
           <br>
           <label for="nacionalidad">Nacionalidad: </label> <input type="text" name="nacionalidad" value="<%= request.getAttribute("nacionalidad") %>"> 
           <br>
           </fieldset>          
        </form>
    </body>
</html>
