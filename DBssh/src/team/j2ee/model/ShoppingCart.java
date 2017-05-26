package team.j2ee.model;

/**
 * ShoppingCart entity. @author MyEclipse Persistence Tools
 */

public class ShoppingCart implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 4981875755078936414L;
	private ShoppingCartId id;
	private Integer amount;

	// Constructors

	/** default constructor */
	public ShoppingCart() {
	}

	/** full constructor */
	public ShoppingCart(ShoppingCartId id, Integer amount) {
		this.id = id;
		this.amount = amount;
	}

	// Property accessors

	public ShoppingCartId getId() {
		return this.id;
	}

	public void setId(ShoppingCartId id) {
		this.id = id;
	}

	public Integer getAmount() {
		return this.amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

}