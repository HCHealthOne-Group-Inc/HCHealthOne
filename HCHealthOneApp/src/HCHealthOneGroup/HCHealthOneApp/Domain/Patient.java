package HCHealthOneGroup.HCHealthOneApp.Domain;

public class Patient {
	
	String chartNumber;
	PrimaryProvider primaryProvider;

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

}
