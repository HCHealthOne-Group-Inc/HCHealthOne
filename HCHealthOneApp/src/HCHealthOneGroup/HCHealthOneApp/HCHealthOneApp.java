package HCHealthOneGroup.HCHealthOneApp;

import HCHealthOneGroup.HCHealthOneApp.Domain.*;

/**
 * 
 * @author jmach081
 *
 */
public class HCHealthOneApp {

	/**
	 * 
	 * @param args
	 */
	public static void main(String[] args) 
	{
		System.out.println("Hello world!");
		Benefit benefit = new Benefit("Free Stuff", 50, DiscountType.Nominal);
		System.out.println(benefit);
		
		Patient patientA = new Patient("001A");
		System.out.println("This is chart number " + patientA.getChartNumber());
		
	}
}
