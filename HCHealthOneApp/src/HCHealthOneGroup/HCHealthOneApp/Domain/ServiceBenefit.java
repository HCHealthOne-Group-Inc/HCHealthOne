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


public class ServiceBenefit {

	/**
	 * 
	 */
	public ServiceBenefit() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */

	
	//FUnction that print difference in
	//time startDate and endDate using
	// method CalculateRemainingDate()
	
	static void CalculateRemainingDays(String startDate, String endDate) 
	{
		//SimpleDateFormat converts the string format to date object
		SimpleDateFormat sdf
		     =new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		//Try Class SimpleDateFormat
		
		try {
			  //parse method is used to parse the text from string to
			 //produce the date
			   Date d1 =sdf.parse(startDate);
			   Date d2 =sdf.parse(endDate);
			   
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
			   
		   } //end try
		catch (ParseException e){
			
			e.printStackTrace();
		}
	}
		//dDriver Code this the netry point
		public static void main(String[] args) {
			// TODO Auto-generated method stub
            //GIVE StartDate
			String startDate
			="10-01-2018 01:10:20";
			//GIVEN EndDate
			String endDate
			="10-06-2021 05:30:50";
			
			//Function Call
			
			CalculateRemainingDays(startDate,endDate );
			
			
		}
	
	}


