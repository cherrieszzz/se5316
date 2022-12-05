<%--
  Created by IntelliJ IDEA.
  User: green
  Date: 2022/9/8
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
  <head>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <title>实验4 JSP页面组成</title>
  </head>
  <body>
  <%
    Integer dianjiCount = (Integer)application.getAttribute("dianjiliang");
    if( dianjiCount ==null || dianjiCount == 0 ){
      dianjiCount = 1;
    }else{
      dianjiCount += 1;
    }
    application.setAttribute("dianjiliang", dianjiCount);
    int WEB_USER_POST_NUM = 0;
    WEB_USER_POST_NUM ++;

    Date date = new Date();

    int num = (int)(Math.random()*900 + 100);
    String myStr = Integer.toString(num);

    boolean t = true;
    String is_num = " ";
    for(int i = 2; i < num; i++) {
      if(num%i == 0){
         is_num = "该三位数是素数";
        t = false;
        break;
      }
    }
    if(t) {
        is_num = "该三位数不是素数";
    }
  %>
    <div class="container">
      <h3>实验4 JSP页面组成</h3>
      <ul>
        <li>该页面的访问次数为 <%= dianjiCount %> </li>
        <li>当前的系统日期和时间为： <%= date%> </li>
        <li>随机产生一个三位数：<%= myStr%> </li>
        <li><%= is_num%></li>
        <li>你是第<%= WEB_USER_POST_NUM%>访问本站的</li>
      </ul>
    </div>


  </body>
</html>
