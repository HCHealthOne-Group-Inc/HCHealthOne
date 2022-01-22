package HCHealthOneGroup.HCHealthOneApp.Domain;

public class Policy {
	
	private int policyNumber;
	private int startDate;
	private int endDate;
	private int groupNumber;
	private Patient patient;
	private InsurancePlan insurancePlan;
	
	public void Policy(int policyNumber, Patient patient, InsurancePlan insurancePlan) 
	{
		this.policyNumber = policyNumber;
		this.patient = patient;
		this.insurancePlan = insurancePlan;
	}
}
