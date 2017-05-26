package team.j2ee.model;

/**
 * ShoppingCartId entity. @author MyEclipse Persistence Tools
 */

public class ShoppingCartId implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -1035226553084540305L;
	private String id;
	private Customer customer;
	private Product product;

	// Constructors

	/** default constructor */
	public ShoppingCartId() {
	}

	/** full constructor */
	public ShoppingCartId(String id, Customer customer, Product product) {
		this.id = id;
		this.customer = customer;
		this.product = product;
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
		if (!(other instanceof ShoppingCartId))
			return false;
		ShoppingCartId castOther = (ShoppingCartId) other;

		return ((this.getId() == castOther.getId())
				|| (this.getId() != null && castOther.getId() != null && this.getId().equals(castOther.getId())))
				&& ((this.getCustomer() == castOther.getCustomer()) || (this.getCustomer() != null
						&& castOther.getCustomer() != null && this.getCustomer().equals(castOther.getCustomer())))
				&& ((this.getProduct() == castOther.getProduct()) || (this.getProduct() != null
						&& castOther.getProduct() != null && this.getProduct().equals(castOther.getProduct())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getId() == null ? 0 : this.getId().hashCode());
		result = 37 * result + (getCustomer() == null ? 0 : this.getCustomer().hashCode());
		result = 37 * result + (getProduct() == null ? 0 : this.getProduct().hashCode());
		return result;
	}

}