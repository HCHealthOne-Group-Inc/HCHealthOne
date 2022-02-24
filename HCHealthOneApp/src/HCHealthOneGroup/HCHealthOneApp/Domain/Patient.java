package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.time.LocalDate;

public class Patient extends Person {

	private String chartNumber;
	private String PreexistingConditions;
	private Provider primaryProvider;
	private Policy policy;

	/**
	 * Constructor
	 * 
	 * @param chartNumber
	 */
	public Patient(String lastName, String firstName, LocalDate dateOfBirth, Address address, String chartNumber) {
		super(lastName, firstName, dateOfBirth, address);
		this.chartNumber = chartNumber;
	}

	/**
	 * Get the patient Chart Number
	 * 
	 * @return
	 */
	public String getChartNumber() {
		return chartNumber;
	}

	public String GetRiskLevel(String PreexistingConditions) {
		return PreexistingConditions;
	}

	public void ChangePrimaryProvider(Provider primaryProvider) {
		this.primaryProvider = primaryProvider;
	}

	public String GetPreexistingConditions() {
		return "SomePreExistingConditions";
	}
	
	public Center FindClosestCenter() {
		// TODO Implement this method maybe move it away
		return null;
	}

	public Policy getPolicy() {
		return policy;
	}

	public void setPolicy(Policy policy) {
		this.policy = policy;
	}

	public Provider getPrimaryProvider() {
		return primaryProvider;
	}

}
