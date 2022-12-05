package haut.hati.wht;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Case02Servlet1 extends HttpServlet{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
      System.out.print("init程序已启动！！！");
   }
   public void service(HttpServletRequest request,HttpServletResponse response)throws IOException{
	   System.out.print("service程序已启动！！！");
      request.setCharacterEncoding("gb2312");
      response.setContentType("text/html;charset=gb2312");
      PrintWriter out=response.getWriter();
      out.println("<html><body background=D:/workspaceJSP2017/s27ch05wht/WebContent/image/t2.jpg><font size=6>");
      out.println("测试");
      String a=request.getParameter("sideA");
      String b=request.getParameter("sideB");
      String c=request.getParameter("sideC");
      String shape=null;  //三角形的形状
      if(a==null||a.length()==0)   return;
      double sideA=0,sideB=0,sideC=0;
      try {
         sideA = Double.parseDouble(a);
         sideB = Double.parseDouble(b);
         sideC = Double.parseDouble(c);
         out.print("<br>三角形三边为："+sideA);
         out.print("<br>三角形三边为："+sideB);
         out.print("<br>三角形三边为："+sideC);
      }
      catch(NumberFormatException exp){  return;    }     
      if (sideA+sideB>sideC&&sideA+sideC>sideB&&sideB+sideC>sideA) {
			System.out.println("是三角形！");			
			if(sideA==sideB&&sideA==sideC)
				shape="等边三角形";
			if(sideA==sideB||sideA==sideC||sideB==sideC){
				if(shape==null)shape="等腰三角形";
				else shape=shape+",等腰三角形";
			}
				
			if(sideA*sideA>sideB*sideB+sideC*sideC||sideB*sideB>sideA*sideA+sideC*sideC||sideC*sideC>sideB*sideB+sideA*sideA){
				if(shape==null)shape="钝角三角形";
				else shape=shape+",锐角三角形";
			}			
			else if(sideA*sideA==sideB*sideB+sideC*sideC||sideB*sideB==sideA*sideA+sideC*sideC||sideC*sideC==sideB*sideB+sideA*sideA)
			{
				if(shape==null)shape="直角三角形";
				else shape=shape+",直角三角形";
			}
			else if(sideA*sideA<sideB*sideB+sideC*sideC||sideB*sideB<sideA*sideA+sideC*sideC||sideC*sideC<sideB*sideB+sideA*sideA)
			{
				if(shape==null)shape="锐角三角形";
				else shape=shape+",锐角三角形";
			}
			double area = 0,p=0;
		      p = (sideA+sideB+sideC)/2;	//海伦公式法求三角形
		      area = Math.sqrt(p*(p-sideA)*(p-sideB)*(p-sideC));
		      out.print("<br>三角形属于："+shape);
		      out.print("<br>三角形"+a+","+b+","+c+"的面积是"+area);      
		    
		} else {out.print("<br>不是属于三角形：");	}
      
      out.println("</font></body></html>");
   } 
 public void destory() {
	 System.out.print("destory程序已启动！！！");
   }
}
