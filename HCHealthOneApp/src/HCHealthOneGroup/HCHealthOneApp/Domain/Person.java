package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.time.LocalDate;
import java.util.Date;

public class Person {

	private LocalDate dateOfBirth;
	private String lastName;
	private String firstName;
	private String ssn;
	private String identificationNumber;
	private String language;
	private String sexAssignedAtBirth;

	private Address address;

	public Person(String lastName, String firstName, LocalDate dateOfBirth, Address address) {
		this.lastName = lastName;
		this.firstName = firstName;
		this.dateOfBirth = dateOfBirth;
		this.address = address;
	}

	public Person(String ssn) {
		this.ssn = ssn;
	}

	/**
	 * Returns the Patient's Age
	 * 
	 * @param age to display the age
	 */
	public int GetAge() {
		return LocalDate.now().getYear() - this.dateOfBirth.getYear();
	}

	/***
	 * Gets the Address of the person
	 * @return
	 */
	public Address GetAddress() {
		// get patient's current address
		return this.address;
	}

	/***
	 * Get the Full Name of the person
	 * @return
	 */
	public String FullName() {
		// get patient's full name
		return this.firstName + " " + this.lastName;
	}

	/**
	 * Get the person Income
	 * 
	 * @return
	 */
	public double CalculateIncome() {
		int age = this.GetAge();
		if (age >= 18 && age <= 65)
			return 65000;
		if (age > 65)
			return 1000;
		return 0;
	}

}
