package qinyewei.test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.apache.tools.ant.types.CommandlineJava.SysProperties;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import entity.Comment;
import entity.Favorite;
import entity.User;
import entity.Video;
import qinyewei.dao.CommentDao;
import qinyewei.dao.UserDao;
import qinyewei.dao.VideoDao;


/**
 * 
 * DAO测试类
 *
 */
public class DaoTest {
	
	@Test
	public void findUserDaoTest(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		UserDao userDao=(UserDao)act.getBean("userDao");
		User user=userDao.findUser("qinyewei", "123456");
		System.out.println("user="+user);
	}
	@Test
	public void addUserDaoTest(){
		//通过ClassPathXmlApplicationContext对象来获取xml文件中配置好的bean
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		//通过ClassPathXmlApplicationContext中的getBean方法取出Bean并给予userDao
		UserDao userDao=(UserDao)act.getBean("userDao");
		//将Bean取出并给予userDao后，就可以调用其内部的addUser的方法了
		int user=userDao.addUser("qinyewei6639","123456");
		//insert返回插入是否成功1为成功
		System.out.println("user="+user);
	}

	@Test
	public void updateUserDaoTest(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		UserDao userDao=(UserDao)act.getBean("userDao");
		int user=userDao.updateUser("qinyewei33","88888", null);
		//update返回更新的数量0代表没有更新
		System.out.println("user="+user);
	}
	@Test
	public void findVideoDaoTest(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		VideoDao videoDao=(VideoDao)act.getBean("videoDao");
		List<Video> video=videoDao.findVideo(0);
		//update返回更新的数量0代表没有更新
		System.out.println("video="+video);
	}
	@Test
	public void findAdminDaoTest(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		UserDao userDao=(UserDao)act.getBean("userDao");
		User admin=userDao.findAdmin("qinyewei", "123456");
		System.out.println("admin"+admin);
	}
	@Test
	public void findFavoriteVideo(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		VideoDao videoDao=(VideoDao)act.getBean("videoDao");
		List<Favorite> video=videoDao.findFavoriteVideo("qinyewei");
		System.out.println("video"+video);
	}
	@Test
	public void finduplikeVideo(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		VideoDao videoDao=(VideoDao)act.getBean("videoDao");
		List<Video> video=videoDao.finduplikeVideo("AMV");
		System.out.println("video"+video);
	}
	@Test
	public void addVideo(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		VideoDao videoDao=(VideoDao)act.getBean("videoDao");
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
//		System.out.println(formatter.format(calendInteger video=videoDao.addVideo("170210059", "777777","888888", "AMV", "QINYEWEI",formatter.format(calendar.getTime()));
//		System.out.println("video"+video);ar.getTime())); 
//		
	}
	@Test
	public void findoneFavoriteVideo(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		VideoDao videoDao=(VideoDao)act.getBean("videoDao");
		Favorite favorite=new Favorite();
		favorite.setUsername("qinyewei");
		favorite.setVideoid(0);
		Integer video=videoDao.findoneFavoriteVideo(favorite);
		System.out.println("video"+video);
	}
	@Test
	public void findVideofortype(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		CommentDao commentDao=(CommentDao)act.getBean("commentDao");
		/*int comment=commentDao.addComment("qinyewei", "hihihi", "2021-06-11 21:45:39", 2);*/
		//update返回更新的数量0代表没有更新
		/*System.out.println("comment="+comment);*/
	}
	@Test
	public void findHVideofortype(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//根据容器中的Bean的id来获取指定的Bean
		VideoDao videoDao=(VideoDao)act.getBean("videoDao");
		List<Video> video=videoDao.hotvideo();
		//update返回更新的数量0代表没有更新
		System.out.println("videoname1="+video.get(0).getVideoname());
		System.out.println("videoname2="+video.get(1).getVideoname());
		System.out.println("videoname3="+video.get(2).getVideoname());
		System.out.println("videoname4="+video.get(3).getVideoname());
	}
}
