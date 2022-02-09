package HCHealthOneGroup.HCHealthOneApp.Domain;

import java.time.LocalDate;

public class Transportation extends ServiceBenefit {

	private int numberOfTrips;

	public Transportation(String name, int discount, DiscountType discountType, LocalDate startDate, LocalDate endDate,
			int numberOfTrips) {
		super(name, discount, discountType, startDate, endDate);

		this.numberOfTrips = numberOfTrips;
	}

	// TODO: Implement abstract calculate the discount

}
