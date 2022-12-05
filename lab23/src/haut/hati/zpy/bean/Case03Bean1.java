package haut.hati.zpy.bean;

public class Case03Bean1 {
    private double up_sider, below_sider, height;

    public Case03Bean1(double up_sider, double below_sider, double height) {
        this.up_sider = up_sider;
        this.below_sider = below_sider;
        this.height = height;
    }

    public Case03Bean1(String up_sider, String below_sider, String height) {
        this.up_sider = Double.parseDouble(up_sider);
        this.below_sider = Double.parseDouble(below_sider);
        this.height = Double.parseDouble(height);
    }

    public double area() {
        return (up_sider + below_sider) * height * 0.5;
    }

    public double getUp_sider() {
        return up_sider;
    }

    public double getBelow_sider() {
        return below_sider;
    }

    public double getHeight() {
        return height;
    }
}
