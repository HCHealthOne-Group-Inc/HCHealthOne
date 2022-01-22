/**
 * 
 */
package HCHealthOneGroup.HCHealthOneApp.Domain;

/**
 * @author JavierC
 *
 */
public class Address {
	
	private String line1;
	private String line2;
	private String city;
	private String state;
	private String country;
	private String zipcode;
	
	public Address(String line1, String line2, String city, String state, String zipcode, String country) 
	{
		this.line1 = line1;
		this.line2 = line2;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
	}
	
	public String GetFullAddress() {
		return this.line1 + " " + this.line2 + " " + this.city  + " " +  this.state  + " " +  this.getZipcode()  + " " +  this.country;
	}
	
	public void GetCoordinates() {
		
	}

	public String getZipcode() {
		return zipcode;
	}
	

}
