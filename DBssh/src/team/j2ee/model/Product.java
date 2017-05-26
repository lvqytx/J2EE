package team.j2ee.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */

public class Product implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -1228142897538299873L;
	private String id;
	private Seller seller;
	private ProductType productType;
	private String nickname;
	private Long price;
	private Integer number;
	private String pictureDir;
	private Set orderdetails = new HashSet(0);
	private Set comments = new HashSet(0);
	private Set shoppingCarts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** minimal constructor */
	public Product(String id, String nickname, Long price) {
		this.id = id;
		this.nickname = nickname;
		this.price = price;
	}

	/** full constructor */
	public Product(String id, Seller seller, ProductType productType, String nickname, Long price, Integer number,
			String pictureDir, Set orderdetails, Set comments, Set shoppingCarts) {
		this.id = id;
		this.seller = seller;
		this.productType = productType;
		this.nickname = nickname;
		this.price = price;
		this.number = number;
		this.pictureDir = pictureDir;
		this.orderdetails = orderdetails;
		this.comments = comments;
		this.shoppingCarts = shoppingCarts;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Seller getSeller() {
		return this.seller;
	}

	public void setSeller(Seller seller) {
		this.seller = seller;
	}

	public ProductType getProductType() {
		return this.productType;
	}

	public void setProductType(ProductType productType) {
		this.productType = productType;
	}

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Long getPrice() {
		return this.price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public String getPictureDir() {
		return this.pictureDir;
	}

	public void setPictureDir(String pictureDir) {
		this.pictureDir = pictureDir;
	}

	public Set getOrderdetails() {
		return this.orderdetails;
	}

	public void setOrderdetails(Set orderdetails) {
		this.orderdetails = orderdetails;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

	public Set getShoppingCarts() {
		return this.shoppingCarts;
	}

	public void setShoppingCarts(Set shoppingCarts) {
		this.shoppingCarts = shoppingCarts;
	}

}