package qinyewei.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.User;

public interface UserDao {
	//查询用户账户与密码
	public User findUser(@Param("username")String username,@Param("password")String password);
	//添加新用户
	public int addUser(@Param("username")String username,@Param("password")String password);
	//查询个人信息
	public User listdateUser(@Param("username")String username);
	//修改个人信息
	public int updateUser(@Param("username")String username,@Param("password")String password,@Param("sex")String sex);
	//查询管理员账户与密码
	public User findAdmin(@Param("adminname")String adminname,@Param("adminpassword")String adminpassword);
	//查询用户头像路径
	public String finduserhead(@Param("username")String username);
	//更新用户头像路径
	public int updateuserhead(@Param("username")String username,@Param("userimgurl")String userimgurl);
	
}
