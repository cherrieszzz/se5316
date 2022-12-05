<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.lang.*" %>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登陆页面</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <style>
      .login-card {
        padding: 1.5rem;
        border-width: 2px;
        border-color: black;
        
        width: 50rem;
      }
    </style>
</head>
<body>
    <div class="d-flex justify-content-center">
        <div class="login-card">
          <!--表单-->
          <form action="case03zpy2result.jsp" class="row g-3"> 
            <!--用户名-->
            <div class="col-md-6">
                <label for="username" class="form-label">用户名</label>
                <input type="text" name="username" class="form-control">
            </div>

            <div class="col-md-6">
                <label for="passwd" class="form-label">密码</label>
                <input type="text" name="passwd" class="form-control">
            </div>

            <div class="col-md-12">
              <p>性别</p>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="sex" value="男" checked>
                <label class="form-check-label" for="sex" class="form-label">
                  男
                </label>
              </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="sex" value="女">
                <label class="form-check-label" for="sex" class="form-label">
                  女
                </label>
            </div>
            </div>
              <div class="col-md-4">
                <label for="date-year" class="form-label">出生年份</label>
                <select name="date-year" onblur="changeAge()" id="year" class="form-select">
                  <% for(int y = 2022; y > 1900; y --) {%>
                      <option value="<%= y%>"><%= y%></option>
                  <%}%>
              </select>
              </div>

              <div class="col-md-4">
                <label for="date-month" class="form-label">出生月份</label>
                <select name="date-month" class="form-select">
                  <% for(int m = 1; m < 13; m ++) {%>
                      <option value="<%= m%>"><%= m%></option>
                  <%}%>
                </select>
              </div>

              <div class="col-md-2">
                <label for="date-yday" class="form-label">出生日期</label>
                <select name="date-day" class="form-select">
                  <% for(int d = 1; d < 32; d ++) {%>
                      <option value="<%= d%>"><%= d%></option>
                  <%}%>
              </select>
              </div>
      
              <div class="col-md-2">
                <label for="age" class="form-label">年龄</label>
                <input type="text" name="age" id="age" class="form-control" readonly>
              </div>

              <div class="col-md-12">
                <label for="" class="form-label">爱好</label>
                <br>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="checkbox" name="hobby" value="唱歌">
                  <label class="form-check-label" for="inlineCheckbox1">唱歌</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="checkbox"name="hobby" value="听歌">
                  <label class="form-check-label" for="inlineCheckbox2">听歌</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="checkbox" name="hobby" value="篮球">
                  <label class="form-check-label" for="inlineCheckbox2">篮球</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="checkbox" name="hobby" value="乒乓球">
                  <label class="form-check-label" for="inlineCheckbox2">乒乓球</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="checkbox" name="hobby" value="足球">
                  <label class="form-check-label" for="inlineCheckbox2">足球</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="checkbox" name="hobby" value="羽毛球">
                  <label class="form-check-label" for="inlineCheckbox2">羽毛球</label>
                </div>
              </div>
              
              <div class="col-md-12">
                <label for="course" class="form-label">所选课程(按住Ctrl可以多选)</label>
                <select name="course" multiple="multiple" size="10" class="form-select">
                  <option value="计算机科学导论">计算机科学导论</option>
                  <option value="C程序设计基础">C程序设计基础</option>
                  <option value="数据结构">数据结构</option>
                  <option value="操作系统原理">操作系统原理</option>
                  <option value="软件工程概论">软件工程概论</option>
                  <option value="算法分析与设计">算法分析与设计</option>
                  <option value="Java编程基础">Java编程基础</option>
                  <option value="计算机网络">计算机网络</option>
                  <option value="数据库系统原理及应用">数据库系统原理及应用</option>
                  <option value="软件设计">软件设计</option>
                  <option value="软件测试">软件测试</option>
                  <option value="Java Web应用程序开发">Java Web应用程序开发</option>
                  </select>
              </div>
        
              
    
                <div class="col-md-12">
                    <label for="cv" class="form-label">个人简历</label>
                    <textarea class="form-control" rows="3" name="cv"></textarea>
                </div>
                <div class="col-12">
                  <button type="submit" class="btn btn-primary">注册</button>
                </div>
               
        </form>
        </div>
    </div>
<script>
      function changeAge() {
        var nowData = new Date();
        console.log(nowData.getUTCFullYear());
        var nowYear = nowData.getUTCFullYear();
        console.log(document.getElementById("year").value)
        var year = document.getElementById("year").value;
        var age = nowYear - year;
        var e = document.getElementById("age");
        e.value = age;
    }
</script>
<!-- jQuery and JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-E5Sj1saJVFNzWWK3YIJB4LEDEEVEGaOdfmCprPDkfWUo+xkb6Ep52Q1TMEtgcFwi" crossorigin="anonymous"></script>
</body>
</html>