package team.j2ee.model;

/**
 * Orderdetail entity. @author MyEclipse Persistence Tools
 */

public class Orderdetail implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 7766946292181133106L;
	private OrderdetailId id;
	private Integer shoppingnum;

	// Constructors

	/** default constructor */
	public Orderdetail() {
	}

	/** minimal constructor */
	public Orderdetail(OrderdetailId id) {
		this.id = id;
	}

	/** full constructor */
	public Orderdetail(OrderdetailId id, Integer shoppingnum) {
		this.id = id;
		this.shoppingnum = shoppingnum;
	}

	// Property accessors

	public OrderdetailId getId() {
		return this.id;
	}

	public void setId(OrderdetailId id) {
		this.id = id;
	}

	public Integer getShoppingnum() {
		return this.shoppingnum;
	}

	public void setShoppingnum(Integer shoppingnum) {
		this.shoppingnum = shoppingnum;
	}

}