package com.payment;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.DBConnect;

public class paymentDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean paymentinsert (String name, String card, String date, String cvc, String amount) {
		
		boolean isSuccess = false;

	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "insert into paymenttable values (0,'"+name+"', '"+card+"', '"+date+"', '"+cvc+"', '"+amount+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
	}
	catch (Exception e){
		e.printStackTrace();
	}
	
	return isSuccess;

}
	
	public static boolean updatepayment(String id, String name, String card, String date, String cvc, String amount) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update paymenttable set name='"+name+"',card='"+card+"',date='"+date+"',cvc='"+cvc+"',amount='"+amount+"' where id='"+id+"'";
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

	
public static boolean deletePayment(String id, String name, String card, String date, String cvc, String amount) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from paymenttable where id='"+id+"'";
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
