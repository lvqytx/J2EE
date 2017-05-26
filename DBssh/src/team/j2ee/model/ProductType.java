package team.j2ee.model;

import java.util.HashSet;
import java.util.Set;

/**
 * ProductType entity. @author MyEclipse Persistence Tools
 */

public class ProductType implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 8366675286303723143L;
	private String id;
	private String nickname;
	private Set products = new HashSet(0);

	// Constructors

	/** default constructor */
	public ProductType() {
	}

	/** minimal constructor */
	public ProductType(String id) {
		this.id = id;
	}

	/** full constructor */
	public ProductType(String id, String nickname, Set products) {
		this.id = id;
		this.nickname = nickname;
		this.products = products;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Set getProducts() {
		return this.products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

}