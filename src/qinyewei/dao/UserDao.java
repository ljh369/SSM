package qinyewei.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.User;

public interface UserDao {
	//��ѯ�û��˻�������
	public User findUser(@Param("username")String username,@Param("password")String password);
	//������û�
	public int addUser(@Param("username")String username,@Param("password")String password);
	//��ѯ������Ϣ
	public User listdateUser(@Param("username")String username);
	//�޸ĸ�����Ϣ
	public int updateUser(@Param("username")String username,@Param("password")String password,@Param("sex")String sex);
	//��ѯ����Ա�˻�������
	public User findAdmin(@Param("adminname")String adminname,@Param("adminpassword")String adminpassword);
	//��ѯ�û�ͷ��·��
	public String finduserhead(@Param("username")String username);
	//�����û�ͷ��·��
	public int updateuserhead(@Param("username")String username,@Param("userimgurl")String userimgurl);
	
}
