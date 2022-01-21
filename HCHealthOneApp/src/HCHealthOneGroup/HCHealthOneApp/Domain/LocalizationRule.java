package HCHealthOneGroup.HCHealthOneApp.Domain;

/**
 * Class to represent a localization rule
 * @author xmachin
 *
 */
public class LocalizationRule extends Rule {

	private String zipCode;
	
	public LocalizationRule(String name, String zipCode) {
		super(name);
		this.zipCode = zipCode;
	}

	@Override
	boolean appliesTo(Patient patient) {
		return false;
	}
}
