<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 04/12/2024
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tabla de Multiplicar</title>
</head>
<body>

<%
    Integer numero = Integer.parseInt(request.getParameter("numero"));

    if(numero == null){
        out.println("El valor no vale");
    }else{
        out.println("Si se puede coger el valor, ahora vamos a ver, si es un numero entre el 1 y 10");
        if(numero >= 0 && numero <=10){
            out.println("El valor es correcto");
        }
    }
%>

<table>
    <tr>
        <th>Multiplicando</th>
        <th>Multiplicador</th>
        <th>Resultado</th>
    </tr>
    <% for (int i = 1; i <= 10; i++) { %>
    <tr>
        <td><%= numero %></td>
        <td><%= i %></td>
        <td><%= numero * i %></td>
    </tr>
    <% } %>
</table>

</body>
</html>
