<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.math.RoundingMode" %><%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 12/12/2024
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ecuacion</title>
</head>
<body>

<%
  //variables
 String valor1 = request.getParameter("valora");
 String valor2 = request.getParameter("valorb");
 String valor3 = request.getParameter("valorc");

 if(valor1 != null && !valor1.isEmpty() && valor2 != null && !valor2.isEmpty() && valor3 != null && !valor3.isEmpty()){

   BigDecimal a =  new BigDecimal(valor1);
   BigDecimal b =  new BigDecimal(valor2);
   BigDecimal c =  new BigDecimal(valor3);

   BigDecimal d = b.multiply(b).subtract(new BigDecimal(4).multiply(a).multiply(c));

   if(d.compareTo(BigDecimal.ZERO)>= 0){
     BigDecimal raiz = new BigDecimal(Math.sqrt(d.doubleValue()));

     BigDecimal divisor = a.multiply(new BigDecimal(2));
     BigDecimal resultado1 = b.negate().add(raiz).divide(divisor, 4, RoundingMode.HALF_EVEN);
     BigDecimal resultado2 = b.negate().subtract(raiz).divide(divisor, 4, RoundingMode.HALF_EVEN);

     out.println("<h3>El primer resultado es : " + resultado1 + " el sgundo es : " + resultado2 + "</h3>");
   }else{
     out.println("<h3>No hay soluciones </h3>");
   }
 }else{
   out.println("<h3>Por favor, rellena todos los campos</h3>");
 }
%>

</body>
</html>
