package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.util.ArrayList;
import java.util.List;

/**
 * Represent the Market of insurance plans
 * 
 * @author xmachin
 *
 */
public class MarketPlace {

	private List<InsurancePlan> plans;

	public MarketPlace() {
		this.plans = new ArrayList<InsurancePlan>();
	}

	public MarketPlace(List<InsurancePlan> plans) {
		this.plans = plans;
	}

	/**
	 * Gets the list of available insurances that are options for the patients
	 * 
	 * @param patient
	 * @return valid list of insurances
	 */
	public List<InsurancePlan> GetEligiblePlans(Patient patient) {

		List<InsurancePlan> eligiblePlans = new ArrayList<InsurancePlan>();

		// Will go one by one of the insurances to evaluate if the patient is eligible
		for (InsurancePlan plan : getPlans()) {

			if (new Eligibility(patient, plan).IsEligible()) {
				eligiblePlans.add(plan);
				MarkInsuranceValid(plan);
			}
		}
		
		if(eligiblePlans.size() == 0) System.out.println("No insurances eligible for " + patient.FullName() + " sorry!! Come back later.");

		return eligiblePlans;
	}

	/**
	 * Add an insurance to the market
	 * 
	 * @param plans
	 */
	public void AddInsurance(InsurancePlan plan) {
		this.getPlans().add(plan);
	}

	/**
	 * Add insurances to the market
	 * 
	 * @param plans
	 */
	public void AddInsurances(List<InsurancePlan> plans) {
		this.getPlans().addAll(plans);
	}
	
	public void ListBenefits(String planName) {
		InsurancePlan plan = this.getPlans().stream().filter(p -> p.getName() == planName).findFirst().get();

		if (plan != null) {
			System.out.println(plan + "  Benefit List ");
			for (Benefit benefit : plan.GetBenefits()) {
				System.out.println(benefit);
			}
		}
	}

	public List<InsurancePlan> getPlans() {
		return plans;
	}
	
	/*
	 * Makes an insurance Plan valid
	 * @param insurancePlan
	 */
	public void MarkInsuranceValid(InsurancePlan insurancePlan) {
		//TODO Implement Method
//		System.out.println(insurancePlan + " is marked as valid" );
	}
}
