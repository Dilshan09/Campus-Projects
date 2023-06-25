package newEventType;

public class EventTypes {
	
	private int eventID;
	private String eventType;
	private String eventDescript;
	private String venue1;
	private String venue2;
	private String venue3;
	private String venue4;
	private String venue5;
	private String service1;
	private String service2;
	private String service3;
	private String newService;
	private double cost;
	
	public EventTypes(int eventID, String eventType, String eventDescript, String venue1, String venue2, String venue3,
			String venue4, String venue5, String service1, String service2, String service3, String newService,
			double cost) {
		this.eventID = eventID;
		this.eventType = eventType;
		this.eventDescript = eventDescript;
		this.venue1 = venue1;
		this.venue2 = venue2;
		this.venue3 = venue3;
		this.venue4 = venue4;
		this.venue5 = venue5;
		this.service1 = service1;
		this.service2 = service2;
		this.service3 = service3;
		this.newService = newService;
		this.cost = cost;
	}

	public int getEventID() {
		return eventID;
	}

	public String getEventType() {
		return eventType;
	}

	public String getEventDescript() {
		return eventDescript;
	}

	public String getVenue1() {
		return venue1;
	}

	public String getVenue2() {
		return venue2;
	}

	public String getVenue3() {
		return venue3;
	}

	public String getVenue4() {
		return venue4;
	}

	public String getVenue5() {
		return venue5;
	}

	public String getService1() {
		return service1;
	}

	public String getService2() {
		return service2;
	}

	public String getService3() {
		return service3;
	}

	public String getNewService() {
		return newService;
	}

	public double getCost() {
		return cost;
	}


}
