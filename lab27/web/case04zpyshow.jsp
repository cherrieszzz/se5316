<%--
  Created by IntelliJ IDEA.
  User: green
  Date: 2022/11/22
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .container{
            margin: 0 auto;
            width: 40rem;
        }
    </style>
</head>
<body>
    <jsp:useBean id="bean" class="haut.hati.zpy.bean.Case04Bean" scope="request"/>
    <div class="container">
        <p>This is a show page</p>
        <table border=1>
            <%
                String []columeName = bean.getColumeName();
                String [][]tableRecord = bean.getTableRecord();
            %>
            <tr>

                <% for(String s:columeName) { %>
                <th><%= s %></th>
                <% } %>

            </tr>

            <%for(int i = 0; i < tableRecord.length; i++) {%>
            <tr>
                <%for (int j = 0; j < tableRecord[i].length; j++) {%>
                <td><%= tableRecord[i][j] %></td>
                <%}%>
            </tr>
            <%}%>

        </table>
    </div>
</body>
</html>
