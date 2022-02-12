package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.util.ArrayList;
import java.util.List;

import HCHealthOneGroup.HCHealthOneApp.BuilderHelper;

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
	private List<Provider> credentialedProviders;

	public InsurancePlan() {
		this.credentialedProviders = new ArrayList<Provider>();
	}

	public InsurancePlan(String name, String carrier, String insuranceType, List<Rule> rules,
			List<Benefit> benefitList) {
		this();
		this.name = name;
		this.insuranceType = insuranceType;
		this.carrier = carrier;
		this.benefits = benefitList;
		this.rules = rules;
	}

	/**
	 * Returns the list of benefits associated to the insurance
	 * 
	 * @return
	 */
	public List<Benefit> GetBenefits() {
		return this.benefits;
	}

	/**
	 * Returns the list of Rules associated to the insurance
	 * 
	 * @return
	 */
	public List<Rule> GetRules() {
		return this.rules;
	}

	/**
	 * Create benefit
	 */
	public void CreateBenefit() {
		// TODO Implement Method
	}

	public void CreateRule() {
		// TODO Create Rule
	}

	/**
	 * Provides a policy from the Plan to a Patient
	 * 
	 * @return a policy
	 */
	public Policy ProvidePolicy(Patient patient) {
		
		String policyNumber = BuilderHelper.getAlphaNumericString(10);
		Policy p = new Policy(policyNumber, patient, this);
		return p;
	}

	public double CalculateServiceDiscount() {
		// TODO Implement Methods
		return 0;
	}

	/**
	 * Credential Provider with the Insurance plan
	 * 
	 * @param provider
	 */
	public void CredentialProvider(Provider provider) {
		this.getCredentialedProviders().add(provider);
	}
	
	/**
	 * Credential a group of providers
	 * @param providers
	 */
	public void CredentialProviders(List<Provider> providers) {
		this.getCredentialedProviders().addAll(providers);
	}

	
	public void RenewBenefit(Benefit benefit) {
		//TODO renew the benefit
	}
	
	@Override
	public String toString() 
	{
		return this.getName() + " | " + this.insuranceType + " | " + this.carrier  + " |Benefits " + String.valueOf(this.benefits.size()); //  + " |Rules " + String.valueOf(this.rules.size()) ;
	}

	public String getName() {
		return name;
	}
	
	public Provider GetDefaultProvider() {
		if (this.getCredentialedProviders().size() == 0) return null;
		return this.getCredentialedProviders().get(0); //Returns the first provider in the list
	}

	/**
	 * Get Providers Credentialed in the insurance
	 * @return
	 */
	public List<Provider> getCredentialedProviders() {
		return credentialedProviders;
	}

}
