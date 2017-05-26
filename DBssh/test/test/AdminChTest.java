package test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.j2ee.action.Admin_Ch;
import team.j2ee.model.ComplaintHandling;

public class AdminChTest {
	@Test
	public void test(){
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("team/j2ee/config/spring/applicationContext.xml");
		Admin_Ch ac = (Admin_Ch)ctx.getBean("admin_Ch");
		ac.select();
		for(ComplaintHandling c:ac.getAllCh()){
			System.out.println(c.getId());
		}
		ctx.close();
	}
}
