<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="file" class="haut.hati.zpy.Case04ListFile" scope="request"/>
<HTML>
  <head>
    <style>
      .container {
        width: 800px;
        margin-left: auto;
        margin-right: auto;
        display: flex;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <form action="" Method="post">
        输入目录名，例如:D:/2000<input type=text name="dir" size=15><br>
        输入文件的扩展名,例如:java<input type=text name="extendsName" size=6>
        <input type=submit value="提交">
      </form>
      <jsp:setProperty name="file" property="dir" param="dir"/>
      <jsp:setProperty name="file" property="extendsName" param="extendsName"/>
      <br><b>目录 <jsp:getProperty name="file" property="dir"/>中
      扩展名是
      <jsp:getProperty name="file" property="extendsName"/> 的文件有：
        <% String [] fileName = file.getAllFileName();
     if(fileName!=null) {
       for(int i=0;i<fileName.length;i++) {
          out.print("<br>"+fileName[i]);
       }
     }
  %>
    </div>

  </body>
</HTML>
