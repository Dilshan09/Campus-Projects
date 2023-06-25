package com.customer;

public class Customer {
      private int id;
      private String FirstName;
      private String LastName;
      private String Email;
      private String Phone;
      private String Address;
      private String Address2;
      private String City;
      private String State;
      private String Postal;
      private String Type;
      private String Goals;
      private String EventName;
      private String Budject;
      private String WhoPay;
      private String Text;
      private String Attendence;
      private String RunTime;
      private String Repeating;
      private String Month;
      private String Day;
      private String Year;
    
    // no need setters because we set all values using constructor   
	public Customer(int id,String FirstName,String LastName,String Email,String Phone,String Address,String Address2,String City,String State,String Postal,String Type,String Goals,String EventName,String Budject,String WhoPay,String Text,String Attendence,String RunTime,String Repeating,String Month,String Day,String Year) {

		this.id = id;
		this.FirstName = FirstName;
		this.LastName = LastName;
		this.Email = Email;
		this.Phone = Phone;
		this.Address = Address;
		this.Address2 = Address2;
		this.City = City;
		this.State = State;
		this.Postal = Postal;
		this.Type = Type;
		this.Goals = Goals;
		this.EventName = EventName;
		this.Budject = Budject;
		this.WhoPay = WhoPay;
		this.Text = Text;
		this.Attendence = Attendence;
		this.RunTime = RunTime;
		this.Repeating = Repeating;
		this.Month = Month;
		this.Day = Day;
		this.Year = Year;

	}
	
	//want setters to return values
	public int getId() {
		return id;
	}


	public String getFirstName() {
		return FirstName;
	}


	public String getLastName() {
		return LastName;
	}


	public String getEmail() {
		return Email;
	}


	public String getPhone() {
		return Phone;
	}


	public String getAddress() {
		return Address;
	}

	public String getAddress2() {
		return Address2;
	}


	public String getCity() {
		return City;
	}


	public String getState() {
		return State;
	}


	public String getPostal() {
		return Postal;
	}


	public String getType() {
		return Type;
	}
	public String getGoals() {
		return Goals;
	}


	public String getEventName() {
		return EventName;
	}


	public String getBudject() {
		return Budject;
	}


	public String getWhoPay() {
		return WhoPay;
	}


	public String getText() {
		return Text;
	}
	
	public String getAttendence() {
		return Attendence;
	}


	public String getRunTime() {
		return RunTime;
	}


	public String getRepeating() {
		return Repeating;
	}


	public String getMonth() {
		return Month;
	}


	public String getDay() {
		return Day;
	}
	
	public String getYear() {
		return Year;
	}
	
}
