package HCHealthOneGroup.HCHealthOneApp;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

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
		System.out.println("Wellcome to our Marketplace!");
		Benefit benefit = new Transportation("Free Stuff", 50, DiscountType.Nominal, LocalDate.of(2021, 1, 1),
				LocalDate.of(2022, 12, 31), 50);
		System.out.println(benefit);

		Address anAddress = new Address("113 22nd Ave", "STE 4", "Miami", "Fl", "33175", "USA");
		Person aPerson = new Person("Doe", "Jane", LocalDate.of(1900, 1, 1), anAddress);
		int age = aPerson.GetAge();
		Patient aPatient = new Patient("Doe", "Jhon", LocalDate.of(1900, 1, 1), anAddress, "CHART002");

		Center aCenter = new Center("HCOneCenter", anAddress);
		System.out.println(aCenter);

//		InsurancePlan planLevel1 = BuilderHelper.GetLevelInsurance(2);
//		System.out.println(planLevel1);

		List<InsurancePlan> planList = BuilderHelper.GetInsurancePlanList(10);

		Market estrellaInsurance = new Market();
		estrellaInsurance.AddInsurance(planList);

		List<InsurancePlan> planOptions = estrellaInsurance.GetEligiblePlans(aPatient);

		System.out.println(
				aPatient.FullName() + " has " + String.valueOf(planOptions.size()) + " Insurance Plan Options");

		if (planOptions.size() > 0) {
			int index = (new Random()).nextInt(0, planOptions.size() - 1);
			InsurancePlan selectedPlan = planOptions.get(index);

			System.out.println(aPatient.FullName() + " Selected insurace " + selectedPlan.getName());
			estrellaInsurance.ListBenefits(selectedPlan.getName());

			aPatient.setPolicy(selectedPlan.ProvidePolicy(aPatient));
		}
	}

	public static void DumpTest() {

//		System.out.println("The age is " + age);
//		System.out.println("The person full address is " + aPerson.GetAddress().GetFullAddress());
//
//		System.out.println("Patient + " + aPatient.FullName() + " age is " + age);
//		System.out.println("The Patient full address is " + aPerson.GetAddress().GetFullAddress());
	}

}
