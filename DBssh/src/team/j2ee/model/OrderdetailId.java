package team.j2ee.model;

/**
 * OrderdetailId entity. @author MyEclipse Persistence Tools
 */

public class OrderdetailId implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -6279424930883291259L;
	private Orders orders;
	private Product product;

	// Constructors

	/** default constructor */
	public OrderdetailId() {
	}

	/** full constructor */
	public OrderdetailId(Orders orders, Product product) {
		this.orders = orders;
		this.product = product;
	}

	// Property accessors

	public Orders getOrders() {
		return this.orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof OrderdetailId))
			return false;
		OrderdetailId castOther = (OrderdetailId) other;

		return ((this.getOrders() == castOther.getOrders()) || (this.getOrders() != null
				&& castOther.getOrders() != null && this.getOrders().equals(castOther.getOrders())))
				&& ((this.getProduct() == castOther.getProduct()) || (this.getProduct() != null
						&& castOther.getProduct() != null && this.getProduct().equals(castOther.getProduct())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getOrders() == null ? 0 : this.getOrders().hashCode());
		result = 37 * result + (getProduct() == null ? 0 : this.getProduct().hashCode());
		return result;
	}

}