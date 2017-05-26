package team.j2ee.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Customer entity. @author MyEclipse Persistence Tools
 */

public class Customer implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -2034982533652250832L;
	private String id;
	private String nickname;
	private String username;
	private String password;
	private Set comments = new HashSet(0);
	private Set orderses = new HashSet(0);
	private Set complaintHandlings = new HashSet(0);
	private Set shoppingCarts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Customer() {
	}

	/** minimal constructor */
	public Customer(String id, String nickname, String username, String password) {
		this.id = id;
		this.nickname = nickname;
		this.username = username;
		this.password = password;
	}

	/** full constructor */
	public Customer(String id, String nickname, String username, String password, Set comments, Set orderses,
			Set complaintHandlings, Set shoppingCarts) {
		this.id = id;
		this.nickname = nickname;
		this.username = username;
		this.password = password;
		this.comments = comments;
		this.orderses = orderses;
		this.complaintHandlings = complaintHandlings;
		this.shoppingCarts = shoppingCarts;
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

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

	public Set getOrderses() {
		return this.orderses;
	}

	public void setOrderses(Set orderses) {
		this.orderses = orderses;
	}

	public Set getComplaintHandlings() {
		return this.complaintHandlings;
	}

	public void setComplaintHandlings(Set complaintHandlings) {
		this.complaintHandlings = complaintHandlings;
	}

	public Set getShoppingCarts() {
		return this.shoppingCarts;
	}

	public void setShoppingCarts(Set shoppingCarts) {
		this.shoppingCarts = shoppingCarts;
	}

}