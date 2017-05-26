package team.j2ee.action;



import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import team.j2ee.model.Seller;
import team.j2ee.service.SellerService;

@Component
@Scope("prototype")
public class Seller_Login extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Seller seller;
	private String code;
	private String name;
	private String nickname;
	private String password;
	private SellerService sellerService;
	public String register(){
		String rand =(String)session.get("rand");
		if(!rand.equalsIgnoreCase(code)){
			request.put("codeError", "验证码输入错误！");
			return "codeError";
		}
		try {
			if(sellerService.isExist(name)){
				request.put("nameNo", "账号已经注册");
				return "codeError";
			}
			sellerService.register(nickname, name, password);
		} catch (Exception e) {
			// TODO: handle exception
			return ERROR;
		}
		return SUCCESS;
	}
	//登陆
	public String login(){
		try{
			if (sellerService.login(seller.getUsername(),seller.getPassword())){
				Seller sel = sellerService.getSeller(seller.getUsername(),seller.getPassword());
				session.put("seller", sel);
			}
			else{
				this.addFieldError("errorMessage", "商家用户名或者密码错误！");
				return "fail";
			}
		}
		catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	//退出登陆
	public String loginOut(){
		session.remove("seller");
		return SUCCESS;
	}
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public SellerService getSellerService() {
		return sellerService;
	}
	@Resource(name="sellerServiceImpl")
	public void setSellerService(SellerService sellerService) {
		this.sellerService = sellerService;
	}
}
