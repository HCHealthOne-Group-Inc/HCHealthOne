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
import java.util.concurrent.TimeUnit;
import java.util.Date;


public class ServiceBenefit extends Benefit {

	private String startDate;
	private String endDate;
	/**
	 * 
	 */
	public ServiceBenefit(String name, int discount, DiscountType discountType, String startDate, String endDate) {
		super( name,  discount,  discountType);
		this.startDate = startDate;
		this.endDate = endDate;
	}

	/**
	 * FUnction that print difference in
	//  time startDate and endDate using
	// method CalculateRemainingDate()
	 */
	public long CalculateRemainingDays() 
	{
		//SimpleDateFormat converts the string format to date object
		SimpleDateFormat sdf
		     =new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		//Try Class SimpleDateFormat
		
		try {
			  //parse method is used to parse the text from string to
			 //produce the date
			   Date d1 =sdf.parse(this.startDate);
			   Date d2 =sdf.parse(this.endDate);
			   
			   //Calculate the difference in miliseconds
			   long difference_In_Time 
			   = d2.getTime()-d1.getTime();
			   
			   //Calculate time difference in seconds , minutes , hours, years
			   //and days
			   long difference_In_Seconds =
					   (difference_In_Time/1000) % 60;
			   
			   long difference_In_Minutes =
					   (difference_In_Time/(1000 * 60)) % 24 ;
			   
			   
			   
			   long difference_In_Hours =
					   (difference_In_Time/(1000 * 60  *60)) % 60 ;	
			   
			   
			   long difference_In_Years =
					   (difference_In_Time/(1000 * 60 * 24 *365)) ;
			   
			   
			   long difference_In_Days =
					   (difference_In_Time/(1000 * 60 * 60 * 24)) ;
					   
			   //Print the date difference in years,days,hours, seconds and minutes
			   
			   System.out.print(
					"Difference "  
					   + "between two dates  is: "
					   );
			   
			   System.out.println(
					   difference_In_Years
					   + " years, "
					   +difference_In_Days
					   + " days, "
					   +difference_In_Hours
					   + " hours, "
					   +difference_In_Minutes
					   + " Minutes, "
					    + difference_In_Seconds
					   + " Secondss, "  );
			   
			   return difference_In_Days;
		   } //end try
		catch (ParseException e){
			
			e.printStackTrace();
		}
		return discount;
	}

	@Override
	void CalculateDiscount() {
		// TODO Auto-generated method stub
		
	}
	}


