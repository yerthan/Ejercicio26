<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 04/12/2024
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio2</title>
</head>
<body>
<h1>Idioma a elegir</h1>
<form method="post" action="saludo.jsp">
    Selecciona el idioma el cual quieres que te salude
    <select id="idioma" name="idiomaEleccion">
        <option>Ingles</option>
        <option>Español</option>
        <option>Italiano</option>
    </select>
    </br>
    <button type="submit">Enviar</button>
</form>
</body>
</html>
