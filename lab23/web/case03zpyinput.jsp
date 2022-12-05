<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <title>case03zpyinput</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <div class="container">
        <h1>Lab23 MVC模式求梯形和三角形面积</h1>
        <form action="Case03aera" method="post">
            <h2>梯形</h2>
            <div class="input-group">
                <label>上底</label>
                <input type="text" name="up_sider">
            </div>
            <div class="input-group">
                <label>下底</label>
                <input type="text" name="below_sider">
            </div>
            <div class="input-group">
                <label>高</label>
                <input type="text" name="height">
            </div>
            <h2>三角形</h2>
            <div class="input-group">
                <label>边1</label>
                <input type="text" name="sider1">
            </div>
            <div class="input-group">
                <label>边2</label>
                <input type="text" name="sider2">
            </div>
            <div class="input-group">
                <label>边3</label>
                <input type="text" name="sider3">
            </div>
            <div class="belowbar">
                <input type="submit">
            </div>

        </form>
    </div>
</body>
</html>
