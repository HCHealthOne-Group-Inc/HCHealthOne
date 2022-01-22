/**
 * 
 */
package HCHealthOneGroup.HCHealthOneApp.Domain;

/**
 * @author Gracielena_home
 *
 */
import java.io.*;

public class PCPVisit extends ServiceBenefit {

	private String providerType;

	public PCPVisit(String name, int discount, DiscountType discountType, String startDate, String endDate,
			String providerType) {
		super(name, discount, discountType, startDate, endDate);
		this.providerType = providerType;
	}

	/**
	 * Implement abstract calculate benefit
	 */

}
