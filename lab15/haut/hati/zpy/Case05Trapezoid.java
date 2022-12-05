package haut.hati.zpy;
public class Case05Trapezoid {
	   double sideA=-1,sideB=-1,sideC=-1, area=-1;
	   public void setSideA(double a) {
	      sideA=a;
	   }
	   public double getSideA() {
	      return sideA;
	   }
	   public void setSideB(double b) {
	      sideB=b;
	   }
	   public double getSideB() {
	      return sideB;
	   }
	   public void setSideC(double c) {
	      sideC=c;
	   }
	   public double getSideC() {
	      return sideC;
	   }
	   public double getArea() {
	      double p=(sideA+sideB)/2.0;
	         area=p*sideC;
	      return area;
	   }

	}
