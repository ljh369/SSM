package qinyewei.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.User;
import qinyewei.dao.UserDao;
import qinyewei.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	@Override
	public User findUser(String username, String password) {
		//��UserDaoע�������ʹ��this���е���
		User user=this.userDao.findUser(username, password);
		return user;
	}
	
	public int addUser(String username, String password) {
		//��UserDaoע�������ʹ��this���е���
		int user=this.userDao.addUser(username, password);
		//���return 0��˵�����ʧ�ܣ�1Ϊ�ɹ�
		return user;
	}

	@Override
	public User findAdmin(String adminname, String adminpassword) {
		User admin=this.userDao.findAdmin(adminname, adminpassword);
		return admin;
	}

	@Override
	public User listUser(String username) {
		User user=this.userDao.listdateUser(username);
		return user;
	}

	@Override
	public int updateUser(String username, String password, String sex) {
		int user=this.userDao.updateUser(username, password, sex); 
		return user;
	}

	@Override
	public String finduserhead(String username) {
		String userimgurl=this.userDao.finduserhead(username);
		return userimgurl;
	}

	@Override
	public int updateuserhead(String username, String userimgurl) {
		int updateuserhead=this.userDao.updateuserhead(username, userimgurl);
		return updateuserhead;
	}
}
