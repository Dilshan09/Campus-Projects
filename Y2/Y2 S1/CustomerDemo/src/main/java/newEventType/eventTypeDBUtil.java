package newEventType;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.DBConnect;

public class eventTypeDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//insert
    public static boolean insertEventType(String eventType, String eventDescript, String v1, String v2, String v3, String v4, String v5, String s1, String s2, String s3, String ns, String cs) {
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		//database columns.
    		String sql = "insert into eventtypes values (0, '"+eventType+"', '"+eventDescript+"', '"+v1+"', '"+v2+"', '"+v3+"', '"+v4+"', '"+v5+"', '"+s1+"', '"+s2+"', '"+s3+"','"+ns+"', '"+cs+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    			
    		}else {
    			isSuccess = false;
    			
    		}
    		
    	}
    	catch (Exception e){
    		e.printStackTrace();
    	}
    
	return isSuccess;
  
   }
    //update
    public static boolean updateeventtype(String eventID, String eventType, String eventDescription, String venue1, String venue2, String venue3, String venue4, String venue5, String service1, String service2, String service3, String newservice, String cost) {
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update eventtypes set eventType='"+eventType+"',eventDescription='"+eventDescription+"',venue1='"+venue1+"',venue2='"+venue2+"',venue3='"+venue3+"',venue4='"+venue4+"',venue5='"+venue5+"',service1='"+service1+"',service2='"+service2+"',service3='"+service3+"',newservice='"+newservice+"',cost='"+cost+"' where eventID='"+eventID+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    	}
    	
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
public static boolean deleteEventType (String eventID, String eventType, String eventDescription, String venue1, String venue2, String venue3, String venue4, String venue5, String service1, String service2, String service3, String newservice, String cost) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from eventtypes where eventID='"+eventID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
				
		return isSuccess;
}
    

}