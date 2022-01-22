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
    	return false;
    }
}

