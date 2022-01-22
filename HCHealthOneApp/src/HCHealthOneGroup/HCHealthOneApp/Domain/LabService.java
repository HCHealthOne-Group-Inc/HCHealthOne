package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.io.PrintStream;

public class LabService {

	static //atributes  
	String code1="Blood Test";
	static String code2 ="Urine";
	static String code3 ="Hepatic Panel";
	
			
	//methods   list LAB CODES static methods is possible to call without creating an object
	
	static void MyMethLabcodes () {
		System.out.println(code1);
		System.out.println(code2);
		System.out.println(code3);
		
		
		
	}
	
	public LabService() {
		// TODO Auto-generated constructor stub not invoking the constructor
	}
    
	//Inside MAIN i CALL mystatic method
	
	public static void main (String [] args) {
		
		
		MyMethLabcodes();  //will print my labs codesas is static method does not need an object
		
	 	
    	 
     }//here closed void main
}
