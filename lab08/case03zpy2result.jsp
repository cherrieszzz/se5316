<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.lang.*" %>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>结果</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
    <%!public class student {
        public String username;
        public String passwd;
        public String sex;
        public String age;
        public String year;
        public String month;
        public String day;
        public String hobby[];
        public String course[];
        public String cv;
       
    }%>
    <%
    String username = request.getParameter("username");
    String passwd = request.getParameter("passwd");
    String sex = request.getParameter("sex");
    String age = request.getParameter("age");
    String year = request.getParameter("date-year");
    String month = request.getParameter("date-month");
    String day = request.getParameter("date-day");
    String hobby[] = request.getParameterValues("hobby");
    String course[] = request.getParameterValues("course");
    String cv = request.getParameter("cv");
    %>
    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">用户名</th>
                    <th scope="col">密码</th>
                    <th scope="col">性别</th>
                    <th scope="col">年龄</th>
                    <th scope="col">出生日期</th>
                    <th scope="col">爱好</th>
                    <th scope="col">所选课程</th>
                    <th scope="col">简历</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%=username%></td>
                    <td><%=passwd%></td>
                    <td><%=sex%></td>
                    <td><%=age%></td>
                    <td><%= year%>/<%= month%>/<%=day%></td>
                    <td> <%
                        if(hobby==null){
                            out.println("无");
                        }else{ 
                            for(int m=0;m<hobby.length;m++){
                                out.print(hobby[m] + " ");
                            }
                        }
                        %></td>
                    <td><%
                        if(course == null){
                            out.println("无");
                        }else {
                            for(int c = 0; c < course.length; c++){
                                out.println(course[c] + " ");
                            }
                        }
                        %></td>
                    <td><%=cv%></td>
                </tr>
            </tbody>
        </table>
    </div>

   
    <!-- jQuery and JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-E5Sj1saJVFNzWWK3YIJB4LEDEEVEGaOdfmCprPDkfWUo+xkb6Ep52Q1TMEtgcFwi" crossorigin="anonymous"></script>
</body>
</html>