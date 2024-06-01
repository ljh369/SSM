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
 * DAO������
 *
 */
public class DaoTest {
	
	@Test
	public void findUserDaoTest(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//���������е�Bean��id����ȡָ����Bean
		UserDao userDao=(UserDao)act.getBean("userDao");
		User user=userDao.findUser("qinyewei", "123456");
		System.out.println("user="+user);
	}
	@Test
	public void addUserDaoTest(){
		//ͨ��ClassPathXmlApplicationContext��������ȡxml�ļ������úõ�bean
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//���������е�Bean��id����ȡָ����Bean
		//ͨ��ClassPathXmlApplicationContext�е�getBean����ȡ��Bean������userDao
		UserDao userDao=(UserDao)act.getBean("userDao");
		//��Beanȡ��������userDao�󣬾Ϳ��Ե������ڲ���addUser�ķ�����
		int user=userDao.addUser("qinyewei6639","123456");
		//insert���ز����Ƿ�ɹ�1Ϊ�ɹ�
		System.out.println("user="+user);
	}

	@Test
	public void updateUserDaoTest(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//���������е�Bean��id����ȡָ����Bean
		UserDao userDao=(UserDao)act.getBean("userDao");
		int user=userDao.updateUser("qinyewei33","88888", null);
		//update���ظ��µ�����0����û�и���
		System.out.println("user="+user);
	}
	@Test
	public void findVideoDaoTest(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//���������е�Bean��id����ȡָ����Bean
		VideoDao videoDao=(VideoDao)act.getBean("videoDao");
		List<Video> video=videoDao.findVideo(0);
		//update���ظ��µ�����0����û�и���
		System.out.println("video="+video);
	}
	@Test
	public void findAdminDaoTest(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//���������е�Bean��id����ȡָ����Bean
		UserDao userDao=(UserDao)act.getBean("userDao");
		User admin=userDao.findAdmin("qinyewei", "123456");
		System.out.println("admin"+admin);
	}
	@Test
	public void findFavoriteVideo(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//���������е�Bean��id����ȡָ����Bean
		VideoDao videoDao=(VideoDao)act.getBean("videoDao");
		List<Favorite> video=videoDao.findFavoriteVideo("qinyewei");
		System.out.println("video"+video);
	}
	@Test
	public void finduplikeVideo(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//���������е�Bean��id����ȡָ����Bean
		VideoDao videoDao=(VideoDao)act.getBean("videoDao");
		List<Video> video=videoDao.finduplikeVideo("AMV");
		System.out.println("video"+video);
	}
	@Test
	public void addVideo(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//���������е�Bean��id����ȡָ����Bean
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
		//���������е�Bean��id����ȡָ����Bean
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
		//���������е�Bean��id����ȡָ����Bean
		CommentDao commentDao=(CommentDao)act.getBean("commentDao");
		/*int comment=commentDao.addComment("qinyewei", "hihihi", "2021-06-11 21:45:39", 2);*/
		//update���ظ��µ�����0����û�и���
		/*System.out.println("comment="+comment);*/
	}
	@Test
	public void findHVideofortype(){
		ApplicationContext act=new ClassPathXmlApplicationContext("applicationcontext.xml");
		//���������е�Bean��id����ȡָ����Bean
		VideoDao videoDao=(VideoDao)act.getBean("videoDao");
		List<Video> video=videoDao.hotvideo();
		//update���ظ��µ�����0����û�и���
		System.out.println("videoname1="+video.get(0).getVideoname());
		System.out.println("videoname2="+video.get(1).getVideoname());
		System.out.println("videoname3="+video.get(2).getVideoname());
		System.out.println("videoname4="+video.get(3).getVideoname());
	}
}
