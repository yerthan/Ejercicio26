<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 11/12/2024
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ConfiguracionCoche</title>
</head>
<body>
<%
    String valorColor = request.getParameter("tapiceria");
    String valorMaterial = request.getParameter("moldura");

    out.println("<h2>El color de la tapiceria del coche : </h2> <h3>" + valorColor+ "</h3>");
    out.println("<h2>Material que has escogido es : </h2><h3>" + valorMaterial + "</h3>" );
%>
</body>
</html>
