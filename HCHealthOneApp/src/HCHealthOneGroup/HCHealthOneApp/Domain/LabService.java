package HCHealthOneGroup.HCHealthOneApp.Domain;

public class LabService extends ServiceBenefit {

	private String labcode;

	public LabService(String name, int discount, DiscountType discountType, String startDate, String endDate,
			String labCode) {
		super(name, discount, discountType, startDate, endDate);
		this.labcode = labCode;
	}

	/**
	 * Implement abstract calculate benefit
	 */

}
