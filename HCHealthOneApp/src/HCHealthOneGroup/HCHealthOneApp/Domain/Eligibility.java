/**
 * 
 */
package HCHealthOneGroup.HCHealthOneApp.Domain;

/**
 * @author JavierC
 *
 */
public class Eligibility {

	private Patient patient;
    private InsurancePlan insurancePlan; 
    
    public Eligibility(Patient patient, InsurancePlan insurancePlan) {
    	this.patient = patient;
    	this.insurancePlan = insurancePlan;
    }
    
    /**
     * If the patient is eligible for the plan
     */
    public boolean IsEligible() {
    	
		boolean isPlanValid = true;

		// will go one by one of the Rules to validate it for the patient
		for (Rule rule : this.insurancePlan.GetRules()) {
			// All rules must apply in order to be an eligible plan for the patient
			isPlanValid = isPlanValid && rule.appliesTo(this.patient);
		}
		
    	return isPlanValid;
    }
}

