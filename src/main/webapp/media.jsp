<%--
  Created by IntelliJ IDEA.
  User: 34691
  Date: 04/12/2024
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Media</title>
</head>
<body>
<%
     Integer media1 = Integer.parseInt(request.getParameter("media1"));
     Integer media2 = Integer.parseInt(request.getParameter("media2"));
     Integer media3 = Integer.parseInt(request.getParameter("media3"));

     Integer mediaTotal = (media1 + media2 + media3)/3;

     out.println("<h1>La media total es </h1> " + mediaTotal);


%>
</body>
</html>
