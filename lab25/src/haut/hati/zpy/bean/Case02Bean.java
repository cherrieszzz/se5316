package haut.hati.zpy.bean;

public class Case02Bean {
    private String []columeName;
    private String [][] tableRecord;

    public Case02Bean() {
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
