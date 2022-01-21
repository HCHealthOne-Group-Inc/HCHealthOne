package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.util.List;

/**
 * Represents the Insurance Plan
 * 
 * @author xmachin
 *
 */
public class InsurancePlan {

	private String name;
	private String carrier;
	private String insuranceType;

	private List<Rule> rules;
	private List<Benefit> benefits;

	public InsurancePlan(String name, String carrier, String insuranceType, List<Rule> rules,
			List<Benefit> benefitList) {
		this.name = name;
		this.insuranceType = insuranceType;
		this.carrier = carrier;
		this.benefits = benefitList;
	}

	/**
	 * Returns the list of benefits associated to the insurance
	 * @return
	 */
	public List<Benefit> GetBenefits() {
		return this.benefits;
	}
	
	/**
	 * Returns the list of Rules associated to the insurance
	 * @return
	 */
	public List<Rule> GetRules() {
		return this.rules;
	}

}
