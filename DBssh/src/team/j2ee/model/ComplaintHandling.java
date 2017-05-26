package team.j2ee.model;

/**
 * ComplaintHandling entity. @author MyEclipse Persistence Tools
 */

public class ComplaintHandling implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 4939743829840037137L;
	private String id;
	private Customer customer;
	private Orders orders;
	private String complaint;
	private String handling;

	// Constructors

	/** default constructor */
	public ComplaintHandling() {
	}

	/** minimal constructor */
	public ComplaintHandling(String id) {
		this.id = id;
	}

	/** full constructor */
	public ComplaintHandling(String id, Customer customer, Orders orders, String complaint, String handling) {
		this.id = id;
		this.customer = customer;
		this.orders = orders;
		this.complaint = complaint;
		this.handling = handling;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Orders getOrders() {
		return this.orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public String getComplaint() {
		return this.complaint;
	}

	public void setComplaint(String complaint) {
		this.complaint = complaint;
	}

	public String getHandling() {
		return this.handling;
	}

	public void setHandling(String handling) {
		this.handling = handling;
	}

}