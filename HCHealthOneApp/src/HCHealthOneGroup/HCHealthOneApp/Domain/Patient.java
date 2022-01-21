package HCHealthOneGroup.HCHealthOneApp.Domain;

public class Patient {
	
	private String chartNumber;
	private PrimaryProvider primaryProvider;
	private String PreexistingConditions;
	

	/**
	 * Constructor
	 * @param chartNumber
	 */
	public Patient(String chartNumber) {
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
	
	public void ChangePrimaryProvider (PrimaryProvider primaryProvider) {
		

	}
	
	public String GetPreexistingConditions() {
		
		
	}
	
}
