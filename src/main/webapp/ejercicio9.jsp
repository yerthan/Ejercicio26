<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 11/12/2024
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Tablero de Ajedrez con Alfil y Caballo</h2>

<%
    String alfil = "A";
    String caballo = "C";

    int filaAlfil = (int)(Math.random() * 8);
    int columnaAlfil = (int)(Math.random() * 8);

    int filaCaballo = (int)(Math.random() * 8);
    int colCaballo = (int)(Math.random() * 8);

    while (filaAlfil == filaCaballo && columnaAlfil == colCaballo) {
        filaCaballo = (int)(Math.random() * 8);
        colCaballo = (int)(Math.random() * 8);
    }
%>
<table>
    <thead>
    <tr>
        <th></th>
        <%
            for (char columna = 'A'; columna <= 'H'; columna++) {
        %>
        <th><%= columna %></th>
        <% } %>
    </tr>
    </thead>
    <tbody>
    <%
        for (int fila = 0; fila < 8; fila++) {
    %>
    <tr>
        <td><%= 8 - fila %></td>
        <%
            for (int columna = 0; columna < 8; columna++) {
                String color;
                if ((fila + columna) % 2 == 0) {
                    color = "blanca";
                } else {
                    color = "negra";
                }
                String contenido = "";
                if (fila == filaAlfil && columna == columnaAlfil) {
                    contenido = alfil;
                } else if (fila == filaCaballo && columna == colCaballo) {
                    contenido = caballo;
                }
        %>
        <td><%= contenido %></td>

        <% } %>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
