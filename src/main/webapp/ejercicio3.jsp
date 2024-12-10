<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 04/12/2024
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio3 Media Notas</title>
</head>
<body>
<h1>Dime 3 notas y te voy a hacer la media</h1>
<form method="post" action="media.jsp">
    <label>Introduce la primera media</label>
    <input type="text" id="media1" name="media1" required>
    <label>Introduce la segunda media</label>
    <input type="text" id="media2" name="media2" required>
    <label>Introduce la tercera media</label>
    <input type="text" id="media3" name="media3" required>
    <button type="submit">Enviar</button>
</form>
</body>
</html>
