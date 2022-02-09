/**
 * 
 */
package HCHealthOneGroup.HCHealthOneApp.Domain;

/**
 * @author Gracielena_home
 *
 */
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.time.temporal.TemporalUnit;
import java.util.concurrent.TimeUnit;
import java.util.Date;

public class ServiceBenefit extends Benefit {

	private LocalDate startDate;
	private LocalDate endDate;

	/**
	 * 
	 */
	public ServiceBenefit(String name, int discount, DiscountType discountType, LocalDate startDate,
			LocalDate endDate) {
		super(name, discount, discountType);
		this.startDate = startDate;
		this.endDate = endDate;
	}

	/**
	 * FUnction that print difference in // time startDate and endDate using //
	 * method CalculateRemainingDate()
	 */
	public long CalculateRemainingDays() {
		return Period.between(startDate, endDate).getDays();
	}

	@Override
	void CalculateDiscount() {
		// TODO Auto-generated method stub

	}
}
