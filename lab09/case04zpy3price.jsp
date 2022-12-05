<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ include file="link.txt" %>
<%!public String handleStr(String s){
	try{byte[]bb=s.getBytes("iso-8859-1");
	s=new String(bb);
	}catch(Exception e){}
	return s;
}
%>
<HTML><BODY bgcolor=cyan><FONT Size=5>
 这里是结帐处,您的姓名以及选择的书籍：
<%request.setCharacterEncoding("UTF-8");
String personName=(String)session.getAttribute("name");
 	StringBuffer bookmess=null;
    out.println("<br>您的姓名："+personName);
   if(personName==null||personName.length()==0){
	   out.print("请重新输入您的名字");
   }else{
	   bookmess=(StringBuffer)session.getAttribute("book");
   }
    out.println("<br>购物车中的商品：<br>");    
    %>
    <%    double sum=0;
    String buybook=new String(bookmess);
    String []price=buybook.split("[^0123456789.]");
      
    if(price!=null){
    	for(String item:price)
    	{  try{
    		sum+=Double.parseDouble(item);
    	}catch(NumberFormatException exp){}
     }  
    }
             
 %>
 <br>购书信息：<br>
<%= handleStr(buybook) %><br>
总价格：<%= sum %>
 <br>继续购买书籍：<A HREF="case04zpy2book.jsp">欢迎继续购买书籍！</A>
 <BR>修改姓名：<A HREF="case04zpy1main.jsp">修改姓名！</A>
</FONT></BODY></HTML>
