package haut.hati.zpy.control;

import haut.hati.zpy.bean.Case04Bean;
import haut.hati.zpy.dao.ConnectionUtil;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class Case04Servlet extends HttpServlet {
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Case04Bean bean = null;
        try{
            bean = (Case04Bean)req.getAttribute("bean");
            if(bean == null) {
                bean = new Case04Bean();
                req.setAttribute("bean",bean);
            }
        }catch (Exception e){
            bean = new Case04Bean();
            req.setAttribute("bean",bean);
        }
        try {
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
            if (id == null || id.length() == 0) {
                fail(req, res);
                return;
            }
            String sql = null;
            try {
                Connection conn = ConnectionUtil.getConn(url, username, passwd);
                //Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                //ResultSet rs = stmt.executeQuery("select * from zpystuinfo_1");
                PreparedStatement stmt;
                if (add != null) {
                    stmt = conn.prepareStatement("insert zpystuinfo_1 values (?,?,?,?,?,?,?)");
                    stmt.setString(1,id);
                    stmt.setString(2,name);
                    stmt.setString(3,date);
                    stmt.setString(4,sex);
                    stmt.setInt(5,age);
                    stmt.setString(6,classe);
                    stmt.setString(7,resume);
//                    rs.moveToInsertRow();
//                    rs.updateString("id", id);
//                    rs.updateString("name", name);
//                    rs.updateString("date", date);
//                    rs.updateString("sex", sex);
//                    rs.updateInt("age", age);
//                    rs.updateString("class", classe);
//                    rs.updateString("resume", resume);
//                    rs.insertRow();
                }
                if (updata != null) {
                    stmt = conn.prepareStatement("update zpystuinfo_1 set id =?,name = ?,date =?,sex=?,age=?,class=?,resume=?");
                    stmt.setString(1,id);
                    stmt.setString(2,name);
                    stmt.setString(3,date);
                    stmt.setString(4,sex);
                    stmt.setInt(5,age);
                    stmt.setString(6,classe);
                    stmt.setString(7,resume);
                    stmt.executeUpdate();
//                    int id_num = Integer.parseInt(id);
//                    rs.absolute(id_num);
//                    rs.updateString("id", id);
//                    rs.updateString("name", name);
//                    rs.updateString("date", date);
//                    rs.updateString("sex", sex);
//                    rs.updateInt("age", age);
//                    rs.updateString("class", classe);
//                    rs.updateString("resume", resume);
//                    rs.updateRow();
                }
                if (del != null) {
                    sql = "delete from zpystuinfo_1 where id =" + id + ";";
                    stmt = conn.prepareStatement(sql);
                    stmt.executeUpdate(sql);
                }
                //再次查询更新之后的数据表
                stmt = conn.prepareStatement("select * from zpystuinfo_1");
                ResultSet rs = stmt.executeQuery();
                // 结果集的数据存入数组
                String[] ColumName = ConnectionUtil.getColumName(rs);
                bean.setColumeName(ColumName);
                String[][] tableRecord = ConnectionUtil.gettableRecord(rs);
                bean.setTableRecord(tableRecord);
                ConnectionUtil.Close(conn, stmt, rs);
                req.getRequestDispatcher("case04zpyshow.jsp").forward(req, res);
            } catch (SQLException e) {
                e.printStackTrace();
                fail(req, res);
            }
        }catch (Exception e){
            fail(req, res);
            e.printStackTrace();
        }
    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }

    public void fail(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException {
        try {
            req.getRequestDispatcher("error.jsp").forward(req, res);
        }catch (IOException e){

        }
    }
}
