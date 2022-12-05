<%--
  Created by IntelliJ IDEA.
  User: green
  Date: 2022/11/10
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <%
        String res1 = request.getAttribute("result_db").toString();
        String res2 = request.getAttribute("result_dc").toString();
    %>
    <div class="container">
        <h1>Lab21 MVC模式求等差等比数列的和</h1>
        <p>等差数列求和结果为：</p> <p><%= res2%></p>
        <p>等比数列求和结果为：</p> <p><%= res1%></p>
    </div>
</body>
</html>
