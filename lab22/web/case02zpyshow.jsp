<%--
  Created by IntelliJ IDEA.
  User: green
  Date: 2022/11/10
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show</title>
    <link type="text/css" href="bootstrap.css">
    <link type="text/css" rel="stylesheet" href="style.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rTTiRUKnSWaDu2FjhzWFl8/JuUZMlplyWE/djenb2LoKqkgLGfEGfSrL7XDLoB1M" crossorigin="anonymous">
</head>
<body>
    <%
        String index1 = request.getAttribute("result1").toString();
        String index2 = request.getAttribute("result2").toString();
    %>
    <div class="container-box">
        <p>根为:<%= index1%> <%= index2%></p>
    </div>
</body>
</html>
