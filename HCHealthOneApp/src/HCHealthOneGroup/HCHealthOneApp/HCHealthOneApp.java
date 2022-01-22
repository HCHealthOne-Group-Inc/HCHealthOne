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
		Benefit benefit = new Transportation("Free Stuff", 50, DiscountType.Nominal, "01/01/2021", "12/31/2022", 50);
		System.out.println(benefit);
		
		
		Address anAddress = new Address("113 22nd Ave", "STE 4", "Miami", "Fl", "33125", "USA");
		
		Person aPerson = new Person("Doe", "Jane", "01/01/2021", anAddress);
		int age = aPerson.Age();
		
		Patient  aPatient = new Patient("Doe", "Jhon", "01/01/2021", anAddress, "CHART002" );
		
		System.out.println("The age is " + age);
		System.out.println("The person full address is " + aPerson.GetAddress().GetFullAddress());
		
		System.out.println("Patient + " + aPatient.FullName() + " age is " + age);
		System.out.println("The Patient full address is " + aPerson.GetAddress().GetFullAddress());

		Center aCenter = new Center("HCOneCenter", anAddress);

	}
}
