package qinyewei.service;

import org.apache.ibatis.annotations.Param;

import entity.User;

public interface UserService {
	public User findUser(String username,String password);
	
	public int addUser(String username,String password);
	
	public User findAdmin(String adminname,String adminpassword);
	
	public User listUser(String username);
	
	public int updateUser(String username,String password,String sex);
	
	public String finduserhead(String username);
	
	//更新用户头像路径
	public int updateuserhead(String username,String userimgurl);
}
