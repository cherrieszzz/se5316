<%--
  Created by IntelliJ IDEA.
  User: green
  Date: 2022/9/7
  Time: 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  <title>jsp——test项目</title>
</head>
<body>

<div class="container">
  <h1>计算并显示1-100的和</h1>
  <%
    int i, sum;
    sum = 0;
    for (i = 1; i <= 100; i++){
      sum = sum + i;
    }
  %>
  <p> <%= sum%></p>
</div>
</body>
</html>
