<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 11/12/2024
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><Title></title>
</head>
<h2>Helado Creado</h2>

<%
  String valorChocolate = request.getParameter("chocolate");
  String valorFresa = request.getParameter("fresa");
  String valorVainilla = request.getParameter("vainilla");

  int chocolate = 0;
  int fresa = 0;
  int vainilla = 0;;
  boolean valido = true;

  if (valorChocolate != null && !valorChocolate.isEmpty() && valorChocolate.matches("\\d+")) {
    chocolate = Integer.parseInt(valorChocolate);
  } else {
%>
<span>Introduce un número válido para el helado de chocolate</span>
<%
    valido = false;
  }

  if (valorFresa != null && !valorFresa.isEmpty() && valorFresa.matches("\\d+")) {
    fresa = Integer.parseInt(valorFresa);
  } else {
%>
<span>Introduce un número válido para el helado de fresa</span>
<%
    valido = false;
  }

  if (valorVainilla != null && !valorVainilla.isEmpty() && valorVainilla.matches("\\d+")) {
    vainilla = Integer.parseInt(valorVainilla);
  } else {
%>
<span>Introduce un número válido para el helado de vainilla</span>
<%
    valido = false;
  }

  if (valido && (chocolate < 0 || chocolate > 100 || fresa < 0 || fresa > 100 || vainilla < 0 || vainilla > 100)) {
%>
<span>El porcentaje no está entre 0 y 100</span>
<%
    valido = false;
  }

  if (valido && (chocolate + fresa + vainilla > 100)) {
%>
<span>La suma de todos los porcentajes tiene que ser menor o igual a 100</span>

<%
    valido = false;
  }

  if (valido) {
%>

<div style="border: 2px solid #000; width: 300px; height: 300px; position: relative;">
  <% if (chocolate > 0) { %>
  <div style="background-color: brown; height: <%= chocolate * 3 %>px; width: 100%; position: absolute; : 0;">
    <p style="text-align: center; color: white; margin: 0;">Chocolate: <%= chocolate %>%</p>
  </div>
  <% } %>

  <% if (fresa > 0) { %>
  <div style="background-color: pink; height: <%= fresa * 3 %>px; width: 100%; position: absolute; : <%= chocolate * 3 %>px;">
    <p style="text-align: center; color: white; margin: 0;">Fresa: <%= fresa %>%</p>
  </div>
  <% } %>

  <% if (vainilla > 0) { %>
  <div style="background-color: beige; height: <%= vainilla * 3 %>px; width: 100%;
          position: absolute; : <%= (chocolate + fresa) * 3 %>px;">
    <p style="text-align: center; color: black; margin: 0;">Vainilla: <%= vainilla %>%</p>
  </div>
  <% } %>
</div>
<% } %>

<br>
<input src="ejercicio10.jsp" type="submit" value="Volver hacer otro helado" >
</body>
</html>
