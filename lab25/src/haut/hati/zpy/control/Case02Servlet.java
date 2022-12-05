package haut.hati.zpy.control;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import haut.hati.zpy.bean.Case02Bean;
import haut.hati.zpy.dao.ConnectionUtil;
public class Case02Servlet  extends HttpServlet {
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Case02Bean bean = null;
        try{
            bean = (Case02Bean)req.getAttribute("bean");
            if(bean == null) {
                bean = new Case02Bean();
                req.setAttribute("bean",bean);
            }
        }catch (Exception e){
            bean = new Case02Bean();
            req.setAttribute("bean",bean);
        }
        String url = "jdbc:mysql://localhost:3306/STUDENT0102ZPY?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
        String username = "root";
        String passwd = "zpy020923";
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String date = req.getParameter("data");
        String sex = req.getParameter("sex");
        int age = Integer.parseInt(req.getParameter("age"));
        String classe = req.getParameter("class");
        String resume = req.getParameter("resume");
        String add = req.getParameter("add");
        String updata = req.getParameter("updata");
        String del = req.getParameter("del");
        String sql = null;
        try {
            Connection conn = ConnectionUtil.getConn(url,username,passwd);
            Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            if(add != null){
                sql = "insert into zpystuinfo_1 values " + " ( "+ "'"+id  +" ', '" + name + "','" + date + "','" + sex + "'," + age + ",'" + classe + "','" + resume +"');";
                stmt.executeUpdate(sql);
            }
            if(updata != null){
                sql = "update zpystuinfo_1 set name="+"'"+name+"',"+"date="+"'"+date+"',"+"sex="+"'"+sex+"',"+"age="+age+","+"class="+"'"+classe+"',"+"resume="+"'"+resume+"'"+" where id="+id+";";
                stmt.executeUpdate(sql);
            }
            if(del != null){
                sql = "delete from zpystuinfo_1 where id ="+ id +";";
                stmt.executeUpdate(sql);
            }

            ResultSet rs = stmt.executeQuery("select * from zpystuinfo_1");


            // 结果集的数据存入数组
            String[] ColumName = ConnectionUtil.getColumName(rs);
            bean.setColumeName(ColumName);
            String[][] tableRecord = ConnectionUtil.gettableRecord(rs);
            bean.setTableRecord(tableRecord);
            ConnectionUtil.Close(conn,stmt,rs);
            req.getRequestDispatcher("case02zpyshow.jsp").forward(req, res);
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }
}
