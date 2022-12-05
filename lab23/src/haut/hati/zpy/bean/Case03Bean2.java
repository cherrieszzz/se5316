package haut.hati.zpy.bean;

import static java.lang.Math.sqrt;

public class Case03Bean2 {
    private double sider1, sider2, sider3;
    public Case03Bean2(double sider1, double sider2, double sider3) {
        this.sider1 = sider1;
        this.sider2 = sider2;
        this.sider3 = sider3;
    }

    public Case03Bean2(String sider1, String sider2, String sider3) {
        this.sider1 = Double.parseDouble(sider1);
        this.sider2 = Double.parseDouble(sider2);
        this.sider3 = Double.parseDouble(sider3);
    }

    public boolean isTangle() {
        if((sider1 + sider2 > sider3) && (sider1 + sider3 > sider2) && (sider2 + sider3 > sider1))
            return true;
        else
            return false;
    }

    public double area() {
        double a = sider1;
        double b = sider2;
        double c = sider3;
        double p = 0.5 * (a + b + c);
        double s = sqrt(p*(p-a)*(p-b)*(p-c));
        return s;
    }

    public double getSider1() {
        return sider1;
    }

    public double getSider2() {
        return sider2;
    }

    public double getSider3() {
        return sider3;
    }
}
