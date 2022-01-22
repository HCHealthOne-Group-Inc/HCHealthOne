package HCHealthOneGroup.HCHealthOneApp.Domain;


public class Person {
	
	private String dateOfBirth; 
	private String lastName; 
	private String firstName;
	private int ssn;
	private int identificationNumber;
	private String language;
	private String sexAssignedAtBirth;
	
	private Address address; 
	
	public Person(String lastName, String firstName, String dateOfBirth, Address address) 
	{
		this.lastName = lastName;
		this.firstName = firstName;
		this.dateOfBirth = dateOfBirth;
		this.address = address;
	}
	
	public Person(int ssn) {
		this.ssn = ssn;
	}
	
	/**
	 * 
	 * @param age to display the age
	 * @param x show the age grabbed from the data
	 */
	public int Age() {
		//get patient's age
		// 
	    int PersonAge = 99;
		return PersonAge;
	}
	
	public Address GetAddress() {
		//get patient's current address
		return this.address;
	}
	
	public String FullName() {
		//get patient's full name
		return this.firstName + " " + this.lastName;
	}
	
}
