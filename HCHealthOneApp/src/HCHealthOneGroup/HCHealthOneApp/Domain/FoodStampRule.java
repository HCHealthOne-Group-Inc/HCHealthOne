package HCHealthOneGroup.HCHealthOneApp.Domain;

/**
 * Represents the rule of food stamp
 * 
 * @author xmachin
 *
 */
public class FoodStampRule extends Rule {

	private int income;
	
	public FoodStampRule(String name, int income) {
		super(name);
		this.income = income;
	}
	
	@Override
	boolean appliesTo(Patient patient) {
		// TODO Auto-generated method stub
		return false;
	}
}