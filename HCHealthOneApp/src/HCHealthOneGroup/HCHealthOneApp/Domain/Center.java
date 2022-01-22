package HCHealthOneGroup.HCHealthOneApp.Domain;

public class Center {
	
	private String name;
	private String squareFeet;
	private String numberofRooms;
	private String centerType;
	private Address address;
	
	public Center(String name, Address address) 	{
		this.name = name;
		this.address = address;
	}
	
	/**
	 * 
	 * @param x to show coordinate of one side 
	 * @param y to show the opposite side measurement 
	 */
	public int GetCapacity(int x, int y) {
		//find capacity of the center
		return x * y;
	}
	
}
