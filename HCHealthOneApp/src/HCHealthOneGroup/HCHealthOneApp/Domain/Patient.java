package HCHealthOneGroup.HCHealthOneApp.Domain;

public class Patient extends Person {
	
	private String chartNumber;
	private String PreexistingConditions;
	private Provider primaryProvider;
	
	/**
	 * Constructor
	 * @param chartNumber
	 */
	public Patient(String lastName, String firstName, String dateOfBirth, Address address, String chartNumber) {
		super(lastName, firstName, dateOfBirth, address);
		this.chartNumber = chartNumber;
	}
	
	/**
	 * Get the patient Chart Number
	 * @return
	 */
	public String getChartNumber() {
		return chartNumber;
	}

	public String GetRiskLevel(String PreexistingConditions) {
		
		return PreexistingConditions;
	}
	
	public void ChangePrimaryProvider (Provider primaryProvider) {
		this.primaryProvider = primaryProvider;
	}
	
	public String GetPreexistingConditions() {
		return "SomePreExistingConditions";
	}
	
}
