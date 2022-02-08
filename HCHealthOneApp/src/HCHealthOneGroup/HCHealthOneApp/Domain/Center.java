package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.util.ArrayList;

public class Center {

	private String name;
	private double squareFeet;
	private int numberofRooms;
	private String centerType;
	private Address address;
	private ArrayList<Provider> workingProviders;

	public Center(String name, Address address) {
		this();
		this.name = name;
		this.address = address;
	}

	public Center() {
		workingProviders = new ArrayList<Provider>();
		this.numberofRooms = 10;
		this.squareFeet = 1000;
	}

	/**
	 * 
	 * @param x to show coordinate of one side
	 * @param y to show the opposite side measurement
	 */
	public int GetCapacity() {
		// find capacity of the center
		return this.numberofRooms;
	}

	/**
	 * Gets the providers working at the center
	 * @return
	 */
	public ArrayList<Provider> ProvidersOnDuty() {
		return this.workingProviders;
	}
	
	/**
	 * List the services available at the center
	 */
	public void ServicesProvided() {
		//TODO implement method
	}
	
	/**
	 * Charge for the service provided at the center
	 */
	public void ChargeService() {
		//TODO implement method
	}
	
	public void EnlistProvider(Provider provider) {
		this.workingProviders.add(provider);
	}

	@Override
	public String toString() {
		
		return "Center " + this.name + " " + String.valueOf(this.squareFeet);
	}
}
