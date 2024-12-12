<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 11/12/2024
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="../Ejercicio9/configuracionCoche.jsp">
  <h2>VAMOS A CONFIGRAR TU COCHE!!!!</h2>
  <label for="tapiceria">¿Que cólor quieres para la tapicera ?</label>
  <select id="tapiceria" name="tapiceria">
    <option>...</option>
    <option value="blanco">Blanco</option>
    <option value="negro">Negro</option>
    <option value="berenjena">Berenjena</option>
  </select>
<br>
<label for="moldura">¿Qué material quieres?</label>
<select id="moldura" name="moldura">
  <option>Selecciona</option>
  <option value="madera">Madera</option>
  <option value="carbono">Carbono</option>
</select>
  <br>
<button type="submit" id="Enviar">Enviar</button>
</form>

</body>
</html>
