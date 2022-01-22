package HCHealthOneGroup.HCHealthOneApp.Domain;

public class Provider {

	private int specialtyCode ;
	private String nationalProviderIdentifier;
	private int medicareNumber;
	private int medicaidNumber;
	private int deaNumber;
	
	public boolean CanSeeMedicaidPatient (int MedicaidNumber) {
		
		boolean CanSeeMedicaidPatient = false ;
		
		return CanSeeMedicaidPatient;
		
	}
	
	
    public boolean CanSeeMedicarePatient (int MedicareNumber) {
		
		boolean CanSeeMedicarePatient = false ;
		
		return CanSeeMedicarePatient;
		
	}
	
    public boolean CanPrescribeDrugs (int DEANumber) {
		
		boolean CanPrescribeDrugs = false ;
		
		return CanPrescribeDrugs;
    }
}
