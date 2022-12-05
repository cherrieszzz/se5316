package haut.hati.lyr;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Case03Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
 }
  public void service( HttpServletRequest request,HttpServletResponse
    response) throws IOException{
    request.setCharacterEncoding("gb2312");
    response.setContentType("text/html;charset=gb2312");
    PrintWriter out=response.getWriter();
    out.println("<html><body bgcolor= yellow>");
    String str= request. getParameter("english" );
    if(str==null||str.length()==0)
       return;
    String[]word =str.split("[^a-zA-Z]+");
    int n=0;
    try{
       for(int i=0;i< word.length;i++ ){
          if(word[i].length()>=1){
          n++;
          out.print("<br>"+ word[i]);
         }
       }
     }
     catch(NumberFormatException e){
           out.print(""+e);
     }
     out.print("<h2>句子中单词数目:"+ n);
     out.println("</body></html>");
   }
 }
