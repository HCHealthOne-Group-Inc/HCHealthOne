/**
 * 
 */
package HCHealthOneGroup.HCHealthOneApp.Domain;

/**
 * @author Gracielena_home
 *
 */
import java.io.*;

public class PCPVisit {

	/**
	 * 
	 */
	
	static String ProviderType;
	
	static void myMetPCPType() {
		System.out.println ("Provider Type: " + ProviderType);
	}
	
	public static void  main(String [] args ) {
		
		myMetPCPType(); //I am invoking my method toprint the pcptype attribute 
		
	};
	public PCPVisit() {
		// TODO Auto-generated constructor stub
	System.out.println("PCPVisit Constructor called");
	}
    
}

