package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.time.LocalDate;

public class Policy {
	
	private String policyNumber;
	private LocalDate startDate;
	private LocalDate endDate;
	private int groupNumber;
	private Patient patient;
	private InsurancePlan insurancePlan;
	
	public Policy(String policyNumber, Patient patient, InsurancePlan insurancePlan) 
	{
		this.policyNumber = policyNumber;
		this.patient = patient;
		this.insurancePlan = insurancePlan;
		
		this.startDate = LocalDate.now();
		this.endDate = LocalDate.now().plusYears(1);
		
		
	}
}
