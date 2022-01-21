package HCHealthOneGroup.HCHealthOneApp.Domain;

/**
 * Class to represent a rule base on the age
 * @author xmachin
 *
 */
public class AgeRule extends Rule  {

	private int minAge; //Minimun age for the rule
	private int maxAge; // maximun age for the rule
	
	public AgeRule(String ruleName, int minAge, int maxAge) {
		super(ruleName);
		this.minAge = minAge;
		this.maxAge = minAge;
	}
	
	@Override
	boolean appliesTo(Patient patient) {
		// TODO Auto-generated method stub
		return false;
	}
}