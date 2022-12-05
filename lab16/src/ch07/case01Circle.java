package ch07;

public class case01Circle {
    int radius;

    public case01Circle() {
        radius = 1;
    }

    public void setRadius(int radius) {
        this.radius = radius;
    }

    public int getRadius() {
        return radius;
    }

    public double girth() {
        return 2 * Math.PI * radius;
    }

    public double Area() {
        return radius * Math.PI * radius;
    }
}