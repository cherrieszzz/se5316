package haut.hati.zpy;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
public class Case05Count {
	   int number=0; 
	   boolean isCome=false;
	   File file=new File("count.dat") ; 
	   private void countPeople() {
	     if(!file.exists()) {
	          number++;
	          try {  file.createNewFile();
	                 FileOutputStream out=new FileOutputStream(file);
	                 DataOutputStream dataOut=new DataOutputStream(out);
	                 dataOut.writeInt(number);
	                 out.close();
	                 dataOut.close();
	          }
	          catch(IOException ee){}
	     }
	     else {
	          try{ FileInputStream in=new FileInputStream(file);
	               DataInputStream dataIn=new DataInputStream(in);
	               number=dataIn.readInt();
	               number++;
	               in.close();
	               dataIn.close();
	               FileOutputStream out=new FileOutputStream(file);
	               DataOutputStream dataOut=new DataOutputStream(out);
	               dataOut.writeInt(number);
	               out.close();
	               dataOut.close();
	          }
	          catch(IOException ee){}
	     }
	     isCome=true;
	  }
	  public int getNumber(){
	     if(isCome==false)
	         countPeople();
	       return number;
	  }
}
