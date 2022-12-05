<%--
  Created by IntelliJ IDEA.
  User: green
  Date: 2022/11/20
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Input</title>

    <style>
        .container {
            margin-left: auto;
            margin-right: auto;
            width: 40rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>This is a input page</h2>
        <div class="1st-form">
            <form action="case01zpyinfo" method="post">
                <label>Plese input age to check out table</label>
                <br>
                <input type="text" name="age-select">
                <input type="submit">
            </form>
        </div>

        <div class="2nd-form">
            <form action="case01zpyinfo" method="get">
                <label>Plese input sex to check out table(male or female)</label>
                <br>
                <input type="text" name="sex-select">
                <input type="submit">
            </form>
        </div>

    </div>
</body>
</html>
