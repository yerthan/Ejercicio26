<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 08/12/2024
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio7</title>
</head>
<body>

<form action="calendario.jsp" method="post">
<label>Mes del año a imprimir</label>
    <input type="number" id="mes" name="mes" min="1" max="12" required>
    <br>
<label>Día del año que vamos a imprimir</label>
    <input type="number" id="dia" name="dia" min="1" max="31" required>
    <br>
<label>Año el cual quieres imprimir</label>
    <input type="number" id="anio" name="anio" min="1900" required>
    <br>
    <button type="submit" id="aceptar">Enviar</button>
</form>

</body>
</html>
