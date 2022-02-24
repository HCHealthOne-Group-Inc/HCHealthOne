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

		Address anAddress = new Address("113 22nd Ave", "STE 4", "Miami", "Fl", "33175", "USA");
		Person aPerson = new Person("Doe", "Jane", LocalDate.of(1900, 1, 1), anAddress);
		int age = aPerson.GetAge();
		Patient aPatient = new Patient("Doe", "Jhon", LocalDate.of(1900, 1, 1), anAddress, "CHART002");

		Center aCenter = new Center("HCOneCenter", anAddress);
//		System.out.println(aCenter);

//		InsurancePlan planLevel1 = BuilderHelper.GetLevelInsurance(2);
//		System.out.println(planLevel1);

		List<InsurancePlan> planList = BuilderHelper.GetInsurancePlanList(10);

		MarketPlace insuranceMarketplace = new MarketPlace();
		insuranceMarketplace.AddInsurances(planList);

		System.out.println("See our great selection of Insurance Plans");
		DisplayInsuranceOption(insuranceMarketplace.getPlans());

		List<InsurancePlan> planOptions = insuranceMarketplace.GetEligiblePlans(aPatient);
		System.out.println(
				aPatient.FullName() + " is eligible for " + String.valueOf(planOptions.size()) + " Insurance Plans");

		DisplayInsuranceOption(planOptions);

		if (planOptions.size() > 0) {
			// Randomly select a Plan from the eligible plans
			int index = 0;
			if (planOptions.size() > 1)
				index = (new Random()).nextInt(0, planOptions.size() - 1);

			InsurancePlan selectedPlan = planOptions.get(index);

			System.out.println(aPatient.FullName() + " Selected " + selectedPlan.getName() + " as Insurance ");
			System.out.println("Benefits : ");
			insuranceMarketplace.ListBenefits(selectedPlan.getName());

			// Set the policy for the patient
			aPatient.setPolicy(selectedPlan.ProvidePolicy(aPatient));

			System.out.println(selectedPlan + " has issued policy " + aPatient.getPolicy().getPolicyNumber() + " to "
					+ aPatient.FullName());

			// Display list of providers for selected insurance
			System.out.println(aPatient.FullName() + " See our amazing provider list that work with " + selectedPlan);
			DisplayInsuranceProviders(selectedPlan.getCredentialedProviders());

			// Select the provider for the patient
			System.out.println(
					aPatient.FullName() + " Selected " + selectedPlan.GetDefaultProvider() + " as Primary Provider");
			aPatient.ChangePrimaryProvider(selectedPlan.GetDefaultProvider());

			System.out.println();
			System.out.println(aPatient.FullName() + " enjoy your policy and stay healthy ");
			System.out.println("Policy : " + aPatient.getPolicy());
		}
	}

	private static void DisplayInsuranceOption(List<InsurancePlan> planOptions) {
		if (planOptions != null && planOptions.size() > 0) {
			int i = 1;
			System.out.println("Options: ");
			for (InsurancePlan plan : planOptions) {
				System.out.println("	" + String.valueOf(i) + " - " + plan);
				i++;
			}
		}
	}

	private static void DisplayInsuranceProviders(List<Provider> providers) {
		if (providers != null && providers.size() > 0) {
			int i = 1;
			System.out.println("Providers: ");
			for (Provider provider : providers) {
				System.out.println("	" + String.valueOf(i) + " - " + provider);
				i++;
			}
		}
	}

	public static void DumpTest() {

		System.out.println(
				String.valueOf(LocalDate.of(LocalDate.now().getYear() - (new Random()).nextInt(30, 50), 1, 1)));

//		Benefit benefit = new Transportation("Free Stuff", 50, DiscountType.Nominal, LocalDate.of(2021, 1, 1),
//		LocalDate.of(2022, 12, 31), 50);
//System.out.println(benefit);

//		System.out.println("The age is " + age);
//		System.out.println("The person full address is " + aPerson.GetAddress().GetFullAddress());
//
//		System.out.println("Patient + " + aPatient.FullName() + " age is " + age);
//		System.out.println("The Patient full address is " + aPerson.GetAddress().GetFullAddress());
	}

}
