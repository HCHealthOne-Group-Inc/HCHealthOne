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
	
	/**
	 * If the income of the patients is less than the income
	 * returns true
	 */
	@Override
	boolean appliesTo(Patient patient) {
		// 
		return patient.CalculateIncome() <= this.income;
	}
	
	@Override 
	public String toString() {
		return "FoodStampRule " + this.name + "|income:" + String.valueOf(this.income);
	}
}