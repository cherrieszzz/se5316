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
        ����Ŀ¼��������:D:/2000<input type=text name="dir" size=15><br>
        �����ļ�����չ��,����:java<input type=text name="extendsName" size=6>
        <input type=submit value="�ύ">
      </form>
      <jsp:setProperty name="file" property="dir" param="dir"/>
      <jsp:setProperty name="file" property="extendsName" param="extendsName"/>
      <br><b>Ŀ¼ <jsp:getProperty name="file" property="dir"/>��
      ��չ����
      <jsp:getProperty name="file" property="extendsName"/> ���ļ��У�
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