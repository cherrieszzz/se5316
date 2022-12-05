<%--
  Created by IntelliJ IDEA.
  User: green
  Date: 2022/11/22
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      .container{
        margin: 0 auto;
        width: 30rem;
      }

      .content{
        display: flex;
        flex-direction: column;
      }
    </style>
  </head>
  <body>
  <div class="container">
    <form action="Case02zpyinfo" method="post">
      <div class="content">
        <label>id：</label>
        <input type="text" name="id">

        <label>name：</label>
        <input type="text" name="name">

        <label>data：</label>
        <input type="text" name="data">

        <label>sex：</label>
        <input type="text" name="sex">

        <label>age：</label>
        <input type="text" name="age">

        <label>class：</label>
        <input type="text" name="class">

        <label>resume：</label>
        <input type="text" name="resume">

      </div>
      <br>
      <div>
        <input type="submit" value="添加" name="add">
        <input type="submit" value="修改" name="updata">
        <input type="submit" value="删除" name="del">
      </div>

    </form>>
  </div>

  </body>
</html>
