package HCHealthOneGroup.HCHealthOneApp.Domain;

public class MedicationFormulary extends Benefit {

	private String medicationList;
	
	public MedicationFormulary(String name, int discount, DiscountType discountType, String medicationList) {
		super(name, discount, discountType);
		this.medicationList = medicationList;
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public  String toString() {
		return "This Benefit is named: " + this.name + " with discount " + discount + " " + discountType;
	}

	@Override
	void CalculateDiscount() {
		// TODO Auto-generated method stub
		
	}

}
