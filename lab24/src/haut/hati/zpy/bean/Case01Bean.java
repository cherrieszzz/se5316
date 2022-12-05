package haut.hati.zpy.bean;
import java.sql.*;
import javax.persistence.SqlResultSetMapping;
import javax.persistence.criteria.CriteriaBuilder;

public class Case01Bean {
    private String []columeName;
    private String [][] tableRecord;

    public Case01Bean() {
        tableRecord = new String[1][1];
        columeName = new String[1];
    }

    public String[] getColumeName() {
        return columeName;
    }

    public void setColumeName(String[] c) {
        columeName = c;
    }

    public String[][] getTableRecord() {
        return tableRecord;
    }

    public void setTableRecord(String[][] t) {
        this.tableRecord = t;
    }

}
