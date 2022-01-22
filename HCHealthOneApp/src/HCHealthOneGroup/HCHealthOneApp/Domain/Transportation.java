package HCHealthOneGroup.HCHealthOneApp.Domain;

public class Transportation extends ServiceBenefit {

	private int numberOfTrips;

	public Transportation(String name, int discount, DiscountType discountType, String startDate, String endDate,
			int numberOfTrips) {
		super(name, discount, discountType, startDate, endDate);

		this.numberOfTrips = numberOfTrips;
	}

	
	// TODO: Implement abstract calculate the discount

}
