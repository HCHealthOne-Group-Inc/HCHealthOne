package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.time.LocalDate;
import java.util.ArrayList;

public class Provider extends Person {

	private String specialtyCode;
	private String nationalProviderIdentifier;
	private String medicareNumber;
	private String medicaidNumber;
	private String deaNumber;
	private ArrayList<InsurancePlan> credentialedInsurances;

	public Provider(String lastName, String firstName, LocalDate dateOfBirth, String nationalProviderIdentifier) {
		super(lastName, firstName, dateOfBirth);
		this.credentialedInsurances = new ArrayList<InsurancePlan>();
		this.nationalProviderIdentifier = nationalProviderIdentifier;
		this.medicaidNumber = "";
		this.medicareNumber = "";
		this.deaNumber = "";
		this.specialtyCode = "000XB00AX1";
	}

	/**
	 * Checks if the provider can see patients with medicaid numbers
	 * @return
	 */
	public boolean CanSeeMedicaidPatient() {
		boolean CanSeeMedicaidPatient = this.medicaidNumber != ""; // If no medicaid number exists return false
		return CanSeeMedicaidPatient;
	}

	/**
	 * Checks if the provider can see medicare patients
	 * @return
	 */
	public boolean CanSeeMedicarePatient() {
		boolean CanSeeMedicarePatient = this.medicareNumber != ""; // If no medicare number exists return false
		return CanSeeMedicarePatient;
	}

	/**
	 * Checks if the provider can prescribe drugs
	 * @return
	 */
	public boolean CanPrescribeDrugs() {
		boolean CanPrescribeDrugs = this.deaNumber != ""; // If no dea number exists return false
		return CanPrescribeDrugs;
	}

	/**
	 * Add credential to the provider
	 * 
	 * @return
	 */
	public ArrayList<InsurancePlan> CreditedInsurances() {
		return this.credentialedInsurances;
	}

	public void AddCredential(InsurancePlan insurancePlan) {
		this.credentialedInsurances.add(insurancePlan);
	}

	@Override
	public String toString() {

		return this.FullName() + " | NPI " + this.nationalProviderIdentifier;
	}

	public String getMedicareNumber() {
		return medicareNumber;
	}

	public void setMedicareNumber(String medicareNumber) {
		this.medicareNumber = medicareNumber;
	}

	public String getMedicaidNumber() {
		return medicaidNumber;
	}

	public void setMedicaidNumber(String medicaidNumber) {
		this.medicaidNumber = medicaidNumber;
	}

	public String getDeaNumber() {
		return deaNumber;
	}

	public void setDeaNumber(String deaNumber) {
		this.deaNumber = deaNumber;
	};
}
