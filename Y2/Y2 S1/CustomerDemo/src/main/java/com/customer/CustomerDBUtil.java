package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {   
	
	private static boolean isSuccess;              //instance variables
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Customer> validate (String name , String email){//return customer list
		
		ArrayList<Customer> cus = new ArrayList<>();


		try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
			String sql = "select * from customer where FirstName='"+name+"' and Email='"+email+"'";
			//look is there any values same to this
			
			rs = stmt.executeQuery(sql);//pass values	
			
			if(rs.next()) {
				int id = rs.getInt(1);//column name give as number
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String _email = rs.getString(4);
				String phone = rs.getString(5);
				String address = rs.getString(6);
				String address2 = rs.getString(7);
				String city = rs.getString(8);
				String state = rs.getString(9);
				String postal = rs.getString(10);
				String type = rs.getString(11);
				String goals = rs.getString(12);
				String eventName = rs.getString(13);
				String budject = rs.getString(14);
				String whoPay = rs.getString(15);
				String text = rs.getString(16);
				String attendence = rs.getString(17);
				String runTime = rs.getString(18);
				String repeating = rs.getString(19);
				String month = rs.getString(20);
				String day = rs.getString(21);
				String year = rs.getString(22);

				//create customer object
                Customer c = new Customer(id, firstName, lastName, _email, phone, address, address2, city, state, postal, type, goals, eventName, budject, whoPay, text, attendence, runTime, repeating, month, day, year);
                cus.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
		return cus;
		//return object
		
	}
	
	public static boolean insertEventDetails(String FirstName,String LastName,String Email,String Phone,String Address,String Address2,String City,String State,String Postal,String Type,String Goals,String EventName,String Budject,String WhoPay,String Text,String Attendence,String RunTime,String Repeating,String Month,String Day,String Year) {
		
		boolean isSuccess = false;


		try {
			
            con = DBConnect.getConnection();//call for method in db class
            stmt = con.createStatement();

			String sql = "insert into customer values (0,'"+FirstName+"','"+LastName+"','"+Email+"','"+Phone+"','"+Address+"','"+Address2+"','"+City+"','"+State+"','"+Postal+"','"+Type+"','"+Goals+"','"+EventName+"','"+Budject+"','"+WhoPay+"','"+Text+"','"+Attendence+"','"+RunTime+"','"+Repeating+"','"+Month+"','"+Day+"','"+Year+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;//check isSuccess
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();    //to stop programm crash and find error
		}
		
		
		return isSuccess;//return isSuccess
	}


	public static boolean updatedetails(String id,String first,String last,String email,String phone,String address,String address2,String city,String state,String postal,String type,String goals,String name,String budject,String who,String text,String attendence,String run,String repeat,String month,String day,String year) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update customer set FirstName ='"+first+"',LastName ='"+last+"',Email ='"+email+"',Phone ='"+phone+"',Address ='"+address+"',Address2 ='"+address2+"',City ='"+city+"',State ='"+state+"',Postal ='"+postal+"',Type ='"+type+"',Goals ='"+goals+"',EventName ='"+name+"',Budject ='"+budject+"',WhoPay ='"+who+"',Text ='"+text+"',Attendence ='"+attendence+"',RunTime ='"+run+"',Reapeating ='"+repeat+"',Month ='"+month+"',Day ='"+day+"',Year ='"+year+"'"
					     +"where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
			     isSuccess =true;
			     
			}
			else {
			     isSuccess =false;

			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static List<Customer> getCustomerDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Customer> cus = new ArrayList<>();
		
try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="select * from customer where id = '"+convertedID+"'" ;
			rs = stmt.executeQuery(sql); //executeQuery bcz select quer otherwise executeUpdate 

			while(rs.next()) {
				
				int id = rs.getInt(1);//column name give as number
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String _email = rs.getString(4);
				String phone = rs.getString(5);
				String address = rs.getString(6);
				String address2 = rs.getString(7);
				String city = rs.getString(8);
				String state = rs.getString(9);
				String postal = rs.getString(10);
				String type = rs.getString(11);
				String goals = rs.getString(12);
				String eventName = rs.getString(13);
				String budject = rs.getString(14);
				String whoPay = rs.getString(15);
				String text = rs.getString(16);
				String attendence = rs.getString(17);
				String runTime = rs.getString(18);
				String repeating = rs.getString(19);
				String month = rs.getString(20);
				String day = rs.getString(21);
				String year = rs.getString(22);
				
				//create customer object
				Customer c = new Customer( id, firstName, lastName, _email, phone, address, address2, city, state, postal, type, goals, eventName, budject, whoPay, text, attendence, runTime, repeating, month, day, year);
			    //put created customer object to list
				cus.add(c);
			
			
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return cus;  
	}
	
	public static boolean deleteCustomer(String id) {
		
		int convID = Integer.parseInt(id);//using wrapper classes convert string values to int

        try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from customer where id='"+convID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {//if success
			     isSuccess =true;
			     
			}
			else {
			     isSuccess =false;

			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
        
		return isSuccess;
	}
	
}
