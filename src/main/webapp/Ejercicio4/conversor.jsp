<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 04/12/2024
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Conversor euro a dolar</title>
</head>
<body>
<%
  String valor = request.getParameter("dinero");
  if(valor != null){
      Double conversion = Double.parseDouble(valor);
      double valorTotal = conversion *0.95;
      out.println(valorTotal + "Este es el valor que tendrá el euro");
  }else{
      out.println("error");
  }

%>
</body>
</html>
