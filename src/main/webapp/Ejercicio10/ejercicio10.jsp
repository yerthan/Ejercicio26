<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 11/12/2024
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Máquina de helados</h3>
<form method="post" action="maquinaHelados.jsp">
  <label for="chocolate">Helado de chocolate: </label>
  <input type="text" id="chocolate" name="chocolate" min="0" max="100">

  <label for="fresa">Helado de fresa: </label>
  <input type="text" id="fresa" name="fresa" min="0" max="100">

  <label for="vainilla">Helado de vainilla: </label>
  <input type="text" id="vainilla" name="vainilla" min="0" max="100">

  <input type="submit" value="Generar_helado">
</form>
</body>
</html>
