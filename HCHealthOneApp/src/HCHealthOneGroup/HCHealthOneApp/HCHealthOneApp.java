package HCHealthOneGroup.HCHealthOneApp;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
	public static void main(String[] args) {
		System.out.println("Hello world!");
		Benefit benefit = new Transportation("Free Stuff", 50, DiscountType.Nominal, LocalDate.of(2021, 1, 1),
				LocalDate.of(2022, 12, 31), 50);
		System.out.println(benefit);

		Address anAddress = new Address("113 22nd Ave", "STE 4", "Miami", "Fl", "33125", "USA");

		Person aPerson = new Person("Doe", "Jane", LocalDate.of(2021, 1, 1), anAddress);
		int age = aPerson.GetAge();

		Patient aPatient = new Patient("Doe", "Jhon", LocalDate.of(2021, 1, 1), anAddress, "CHART002");

		System.out.println("The age is " + age);
		System.out.println("The person full address is " + aPerson.GetAddress().GetFullAddress());

		System.out.println("Patient + " + aPatient.FullName() + " age is " + age);
		System.out.println("The Patient full address is " + aPerson.GetAddress().GetFullAddress());

		Center aCenter = new Center("HCOneCenter", anAddress);
		System.out.println(aCenter);
		
		InsurancePlan planLevel1 = BuilderHelper.GetLevelInsurance(2);
		System.out.println(planLevel1);

	}

}
