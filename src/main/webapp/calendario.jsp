<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 10/12/2024
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calendario</title>
</head>
<body>
<h2>Este es el calendario que has escrito</h2>
<%
    String mes = request.getParameter("mes");
    String ano = request.getParameter("anio");

    int valorMes = Integer.parseInt(mes);
    int valorAno = Integer.parseInt(ano);

    Calendar calendario = Calendar.getInstance();
    calendario.set(Calendar.YEAR, valorAno);
    calendario.set(Calendar.MONTH, valorMes);
    calendario.set(Calendar.DAY_OF_MONTH, 1);

    %>
</body>
</html>
