<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="tri" class="haut.hati.lxb.Case03Triangle" scope="request"/>
<HTML><body bgcolor=#AAFF99><font size=3>
<form action="" method="post" >
   �������������ߣ�
   ��A:<input type=text name="sideA" value=0 size=5>
   ��B:<input type=text name="sideB" value=0 size=5>
   ��C:<input type=text name="sideC" value=0 size=5>
   <input type=submit value="�ύ">
</form>
   <jsp:setProperty name="tri" property="*"/>
     �����ε������ǣ�
     <jsp:getProperty name="tri" property="sideA"/>,
     <jsp:getProperty name="tri" property="sideB"/>,
     <jsp:getProperty name="tri" property="sideC"/>.
<br><b>���������ܹ���һ����������<jsp:getProperty name="tri" property="triangle"/>
<br>�����:<jsp:getProperty name="tri" property="area"/></b>
<br><b>�������߹��ɵ��������ǵ�����������<jsp:getProperty name="tri" property="dengyao"/>
<br><b>�������߹��ɵ��������ǵȱ���������<jsp:getProperty name="tri" property="dengbian"/>
</font></body></HTML>

