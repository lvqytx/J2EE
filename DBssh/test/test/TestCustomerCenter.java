package test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.j2ee.action.Customer_Center;

public class TestCustomerCenter {
	@Test
	public void test(){
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("team/j2ee/config/spring/applicationContext.xml");
		Customer_Center action = (Customer_Center)ctx.getBean("customer_Center");
		action.userCenter();
		System.out.println("success");
		ctx.close();
	}
}
