package HCHealthOneGroup.HCHealthOneApp.Domain;

public abstract class Rule {
	
	/**
	 * The Name of the Rule
	 */
	protected String name;
	
	public Rule(String name) {
		this.name = name;
	}

	/**
	 * Represents if the rule is valid for the required element.
	 * @return true when applies, false when does not apply
	 */
	abstract boolean appliesTo(Patient patient);
}