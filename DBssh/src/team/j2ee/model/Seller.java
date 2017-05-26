package team.j2ee.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Seller entity. @author MyEclipse Persistence Tools
 */

public class Seller implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -475249882483729403L;
	private String id;
	private String nickname;
	private String username;
	private String password;
	private Set products = new HashSet(0);

	// Constructors

	/** default constructor */
	public Seller() {
	}

	/** minimal constructor */
	public Seller(String id, String nickname, String username, String password) {
		this.id = id;
		this.nickname = nickname;
		this.username = username;
		this.password = password;
	}

	/** full constructor */
	public Seller(String id, String nickname, String username, String password, Set products) {
		this.id = id;
		this.nickname = nickname;
		this.username = username;
		this.password = password;
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

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set getProducts() {
		return this.products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

}