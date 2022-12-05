package haut.hati.zpy.servlet;

import haut.hati.zpy.bean.Case03Bean1;
import haut.hati.zpy.bean.Case03Bean2;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.Math.sqrt;
import static java.lang.System.out;

public class Case03Servlet extends HttpServlet{
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String up_sider = req.getParameter("up_sider");
        String below_sider = req.getParameter("below_sider");
        String height = req.getParameter("height");
        String sider1 = req.getParameter("sider1");
        String sider2 = req.getParameter("sider2");
        String sider3 = req.getParameter("sider3");
        Case03Bean2 tar = new Case03Bean2(sider1, sider2, sider3);
        Case03Bean1 trape = new Case03Bean1(up_sider, below_sider, height);

        try {
            if(tar.isTangle()) {
                req.setAttribute("tar_area",tar.area());
                req.setAttribute("trape_area",trape.area());
                req.getRequestDispatcher("case03zpyshow.jsp").forward(req, res);
            } else {
                req.setAttribute("tar_area","this is not a tangle");
                req.setAttribute("trape_area",trape.area());
                req.getRequestDispatcher("case03zpyshow.jsp").forward(req, res);
            }
        } catch (Exception e) {
            res.sendRedirect("error.jsp");
        }
    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }
}
