package team.j2ee.action;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements SessionAware,RequestAware,ApplicationAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected Map<String,Object> session;


	protected Map<String,Object> request;
	protected Map<String,Object> application;
	
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.session = arg0;
	}

	public Map<String, Object> getSession() {
		return session;
	}


	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	@Override
	public void setApplication(Map<String, Object> arg0) {
		this.application = arg0;
	}

	public Map<String, Object> getApplication() {
		return application;
	}
}
