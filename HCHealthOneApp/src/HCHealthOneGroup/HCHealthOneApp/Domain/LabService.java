package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.time.LocalDate;

public class LabService extends ServiceBenefit {

	private String labcode;

	public LabService(String name, int discount, DiscountType discountType, LocalDate startDate, LocalDate endDate,
			String labCode) {
		super(name, discount, discountType, startDate, endDate);
		this.labcode = labCode;
	}

	/**
	 * Implement abstract calculate benefit
	 */

}
