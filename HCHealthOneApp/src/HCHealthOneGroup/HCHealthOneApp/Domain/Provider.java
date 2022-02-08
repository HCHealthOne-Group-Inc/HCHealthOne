package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.util.ArrayList;

public class Provider {

	private int specialtyCode;
	private String nationalProviderIdentifier;
	private int medicareNumber;
	private int medicaidNumber;
	private int deaNumber;
	private ArrayList<InsurancePlan> credentialedInsurances;

	public Provider() {
		this.credentialedInsurances = new ArrayList<InsurancePlan>();
	}

	public boolean CanSeeMedicaidPatient(int MedicaidNumber) {
		boolean CanSeeMedicaidPatient = false;
		return CanSeeMedicaidPatient;
	}

	public boolean CanSeeMedicarePatient(int MedicareNumber) {
		boolean CanSeeMedicarePatient = false;
		return CanSeeMedicarePatient;
	}

	public boolean CanPrescribeDrugs(int DEANumber) {
		boolean CanPrescribeDrugs = false;
		return CanPrescribeDrugs;
	}

	/**
	 * Add credential to the provider
	 * @return
	 */
	public ArrayList<InsurancePlan> CreditedInsurances() {
		return this.credentialedInsurances;
	}

	public void AddCredential(InsurancePlan insurancePlan) {
		this.credentialedInsurances.add(insurancePlan);
	}
}
