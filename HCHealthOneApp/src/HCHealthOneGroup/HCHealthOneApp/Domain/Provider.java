package HCHealthOneGroup.HCHealthOneApp.Domain;

public class Provider {

	private int SpecialtyCode ;
	private String NationalProviderIdentifier;
	private int MedicareNumber;
	private int MedicaidNumber;
	private int DEANumber;
	
	
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
