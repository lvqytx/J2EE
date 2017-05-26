package team.j2ee.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginValidateFilter implements Filter{
    public void init(FilterConfig config) throws ServletException {  
    	
    } 
    public void destroy() {  
 
    }  
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {  
        HttpServletRequest req = (HttpServletRequest)request;
        HttpServletResponse res = (HttpServletResponse)response;
        HttpSession session = req.getSession();
        
        Object seller = session.getAttribute("seller");
        Object admin = session.getAttribute("admin");
        //Object customer = session.getAttribute("customer");
        String reqPath = req.getRequestURI();
        
        if (reqPath.contains("seller")){
        	if (reqPath.contains("login.jsp")||reqPath.contains("seller/login")||reqPath.contains("css")||reqPath.contains("images")||reqPath.contains("register")){
        	}else{
        		if (seller==null){
        			res.setContentType("text/html;charset=utf-8");
        			PrintWriter out = res.getWriter();
        			out.print("您没有登录，3秒后返回登陆界面！");
        			res.setHeader("refresh", "3;url=login.jsp"); 
        			return;
        		}
        	}
        }
        else if(reqPath.contains("admin")){
        	if (reqPath.contains("login.jsp")||reqPath.contains("admin/login")||reqPath.contains("css")||reqPath.contains("images")){
        	}else{
        		if (admin==null){
        			res.setContentType("text/html;charset=utf-8");
        			PrintWriter out = res.getWriter();
        			out.print("您没有登录，3秒后返回登陆界面！");
        			res.setHeader("refresh", "3;url=login.jsp"); 
        			return;
        		}
        	}
        	
        }
        
        chain.doFilter(request, response);
    }  
   


}
