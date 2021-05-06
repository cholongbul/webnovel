package com.bit.webnovel;


import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.bit.domain.AuthorVO;
import com.bit.domain.PublisherVO;
import com.bit.persistence.AuthorDAO;
import com.bit.persistence.PubDAO;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
public class AuthorDAOTest {
	
	private static final Logger logger = LoggerFactory.getLogger(AuthorDAOTest.class);

	@Inject
	private PubDAO pubDAO;

	@Test
	public void testCreate() throws Exception {

		for (int i = 1; i <= 1000; i++) {
			AuthorVO author = new AuthorVO();
			author.setA_name(Integer.toString(i) + "번작가");
			author.setA_history(Integer.toString(i) + "번 작가입니다.");
			author.setGender("불명");

			authorDAO.create(author);

		}
	}
	
	@Test
	public void testDelete() throws Exception {

		for (Integer i = 14120; i <= 14649; i++) {
		
			authorDAO.delete(i);

		}
	}
	

	@Test
	public void testpubCreate() throws Exception {

		for (int i = 1; i <= 1000; i++) {
			PublisherVO pub = new PublisherVO();
			pub.setP_name(Integer.toString(i) + "번 출판사");
			pub.setUrl(Integer.toString(i) + "링크입니다.");

			pubDAO.create(pub);

		}
	}

}
