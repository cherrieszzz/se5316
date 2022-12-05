package haut.hati.zpy;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Case04Servlet extends HttpServlet {
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //String name = request.getParameter("name");
        String id = request.getParameter("id");
        double n = Double.parseDouble(id);
        try {
            if (n % 2 == 0) {//偶数
                //response.sendRedirect("case04zpyeven.jsp");//重定向
                //request.getRequestDispatcher ("error.jsp").forward(request, response);
                RequestDispatcher dispatcher = request.getRequestDispatcher("case04zpyeven.jsp");
                dispatcher.forward(request, response);
            } else {
                //response.sendRedirect("case04zpyodd.jsp");
                RequestDispatcher dispatcher = request.getRequestDispatcher("case04zpyodd.jsp");
                dispatcher.forward(request, response); //转发到case04xftodd.jsp
            }
        } catch (NumberFormatException e) {
            response.sendRedirect("case04zpyinput.jsp"); //重定向
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

