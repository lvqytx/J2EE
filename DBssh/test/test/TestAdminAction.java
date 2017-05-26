package test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.j2ee.action.Admin_Login;
import team.j2ee.model.Administrator;

public class TestAdminAction {
	@Test
	public void testAction () throws Exception{
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("team/j2ee/config/spring/applicationContext.xml");
		Admin_Login admin = (Admin_Login)ctx.getBean("adminLogin");
		Administrator ad = new Administrator();
		ad.setNickname("1234");
		ad.setPassword("1234");
		ad.setUsername("ytx");
		admin.setAdmin(ad);
		admin.login();
		ctx.close();
	}
}
