package test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.j2ee.service.CustomerService;
import team.j2ee.service.impl.CustomerServiceImpl;

public class TestOrderDetail {
	@Test
	public void testAction () throws Exception{
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("team/j2ee/config/spring/applicationContext.xml");
		CustomerService admin = (CustomerService)ctx.getBean("customerServiceImpl");
		admin.orderDetail("E20170402131114745");
		ctx.close();
	}
}
