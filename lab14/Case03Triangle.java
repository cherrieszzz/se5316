package haut.hati.lxb;
public class Case03Triangle {
   double sideA=-1,sideB=-1,sideC=-1, area=-1;
   boolean triangle;
   boolean dengyao;
   boolean dengbian;
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
      double p=(sideA+sideB+sideC)/2.0;
      if(triangle)
         area=Math.sqrt(p*(p-sideA)*(p-sideB)*(p-sideC));
      return area;
   }
   public boolean isTriangle()
   {  if(sideA<sideB+sideC&&sideB<sideA+sideC&&sideC<sideA+sideB)
             triangle=true;
      else   triangle=false;
      return triangle;
   }
   public boolean isdengyao(){
   if(sideA==sideB||sideA==sideC||sideB==sideC)
	   dengyao=true;
	  else   dengyao=false;
	  return dengyao;
   }
   public boolean isdengbian(){
	   if(sideA==sideB&&sideA==sideC&&sideB==sideC)
	   dengyao=true;
	  else   dengyao=false;
	  return dengyao;
   }
}
