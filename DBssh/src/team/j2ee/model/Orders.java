package team.j2ee.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 614789336604720602L;
	private String id;
	private Customer customer;
	private Integer totalAmount;
	private String status;
	private Date orderdate;
	private Set orderdetails = new HashSet(0);
	private Set complaintHandlings = new HashSet(0);

	// Constructors

	/** default constructor */
	public Orders() {
	}

	/** minimal constructor */
	public Orders(String id, Customer customer, Integer totalAmount, String status) {
		this.id = id;
		this.customer = customer;
		this.totalAmount = totalAmount;
		this.status = status;
	}

	/** full constructor */
	public Orders(String id, Customer customer, Integer totalAmount, String status, Date orderdate, Set orderdetails,
			Set complaintHandlings) {
		this.id = id;
		this.customer = customer;
		this.totalAmount = totalAmount;
		this.status = status;
		this.orderdate = orderdate;
		this.orderdetails = orderdetails;
		this.complaintHandlings = complaintHandlings;
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

	public Integer getTotalAmount() {
		return this.totalAmount;
	}

	public void setTotalAmount(Integer totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getOrderdate() {
		return this.orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public Set getOrderdetails() {
		return this.orderdetails;
	}

	public void setOrderdetails(Set orderdetails) {
		this.orderdetails = orderdetails;
	}

	public Set getComplaintHandlings() {
		return this.complaintHandlings;
	}

	public void setComplaintHandlings(Set complaintHandlings) {
		this.complaintHandlings = complaintHandlings;
	}

}