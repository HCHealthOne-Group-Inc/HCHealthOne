package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.util.ArrayList;
import java.util.List;

/**
 * Represent the Market of insurance plans
 * 
 * @author xmachin
 *
 */
public class Market {

	private List<InsurancePlan> plans;

	public Market() {
		this.plans = new ArrayList<InsurancePlan>();
	}

	public Market(List<InsurancePlan> plans) {
		this.plans = plans;
	}

	/**
	 * Gets the list of available insurances that are options for the patients
	 * 
	 * @param patient
	 * @return
	 */
	public List<InsurancePlan> GetEligiblePlans(Patient patient) {

		List<InsurancePlan> eligiblePlans = new ArrayList<InsurancePlan>();

		// Will go one by one of the insurances to evaluate if the patient is eligible
		for (InsurancePlan plan : plans) {

			if (new Eligibility(patient, plan).IsEligible())
				eligiblePlans.add(plan);
		}

		return eligiblePlans;
	}

	/**
	 * Add insurances to the market
	 * 
	 * @param plans
	 */
	public void AddInsurance(List<InsurancePlan> plans) {
		this.plans.addAll(plans);
	}

	public void ListBenefits(String planName) {
		InsurancePlan plan = this.plans.stream().filter(p -> p.getName() == planName).findFirst().get();

		if (plan != null) {
			System.out.println(plan + "  Benefit List ");
			for (Benefit benefit : plan.GetBenefits()) {
				System.out.println(benefit);
			}
		}
	}
}
