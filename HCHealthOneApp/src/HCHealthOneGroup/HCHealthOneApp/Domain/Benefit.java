package HCHealthOneGroup.HCHealthOneApp.Domain;
/**
 * Class to represent a benefit
 * @author xmachin
 *
 */
public class Benefit {

	public String name;
	public int discount;
	public DiscountType discountType;
	
	public Benefit(String name, int discount, DiscountType discountType) {
		this.name = name;
		this.discount = discount;
		this.discountType = discountType;
	}

	@Override
	public  String toString() {
		return "This Benefit is named: " + this.name + " with discount " + discount + " " + discountType;
	}
}
