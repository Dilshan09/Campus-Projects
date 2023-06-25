package com.payment;
 
public class payment {
	private int id;
	private String name;
	private String card;
	private String date;
	private String cvc;
	private String amount;
	
	public payment(int id, String name, String card, String date, String cvc, String amount) {

		this.id = id;
		this.name = name;
		this.card = card;
		this.date = date;
		this.cvc = cvc;
		this.amount = amount;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getCard() {
		return card;
	}

	public String getDate() {
		return date;
	}
	
	public String getCvc() {
		return cvc;
	}
	
	public String getAmount() {
		return amount;
	}

	

	
	

}
