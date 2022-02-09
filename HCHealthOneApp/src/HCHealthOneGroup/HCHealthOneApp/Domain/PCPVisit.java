/**
 * 
 */
package HCHealthOneGroup.HCHealthOneApp.Domain;

/**
 * @author Gracielena_home
 *
 */
import java.io.*;
import java.time.LocalDate;

public class PCPVisit extends ServiceBenefit {

	private String providerType;

	public PCPVisit(String name, int discount, DiscountType discountType, LocalDate startDate, LocalDate endDate,
			String providerType) {
		super(name, discount, discountType, startDate, endDate);
		this.providerType = providerType;
	}

	/**
	 * Implement abstract calculate benefit
	 */

}
