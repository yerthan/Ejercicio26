<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 04/12/2024
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Saludo</title>
</head>
<body>
<%
  String idioma = request.getParameter("idiomaEleccion");
 if (idioma.equals("Español")){
   out.println("hola");
 } else if (idioma.equalsIgnoreCase("italiano")){
   out.println("ciao");
 }else{
   out.println("hello");
 }
%>
</body>
</html>
