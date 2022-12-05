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
    <title>input</title>
    <link rel="stylesheet" href="./style.css">
    <style>

    </style>
</head>
<body>
    <div class="container">
        <h1>Lab21 MVC模式求等差等比数列的和</h1>
        <form action="Case01Forward" method="post">
            <div class="input-group">
                <label>输入首项:</label>
                <input type="text" name="start">
            </div>

            <div class="input-group">
                <label>输入公差:</label>
                <input type="text" name="gc">
            </div>

            <div class="input-group">
                <label>输入公比:</label>
                <input type="text" name="gb">
            </div>

            <div class="input-group">
                <label>输入项数:</label>
                <input type="text" name="n">
            </div>

            <input type="submit">
        </form>
    </div>
</body>
</html>
