package hotel.tool;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeTools {
	
	public static String getDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
        return sdf.format(new Date());
	}
}
