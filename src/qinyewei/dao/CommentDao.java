package qinyewei.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Comment;
import entity.Reply;
import entity.Report;
import entity.User;
import entity.Advise;

public interface CommentDao {
	//��ѯĳ��Ƶ�µ�����
	public List<Comment> listComment(@Param("videoidbycomment")int videoidbycomment);
	//��ĳ��Ƶ���ύ����
	public int addComment(@Param("user")String user,@Param("commentcontent")String commentcontent,
			@Param("commentdate")String commentdate,@Param("videoidbycomment")Integer videoidbycomment,@Param("userimgurl")String userimgurl);
	//�����ݿ����ύ����뽨��
	public int addadvise(@Param("username")String username,@Param("phone")String phone,
				@Param("content")String content,@Param("date")String date,@Param("userimgurl")String userimgurl);
	//��ѯ���е�����뽨��
	public List<Advise> listadvise();
	//ɾ��������뽨��
	public int deleteadvise(@Param("adid")Integer adid);	
	//�ٱ�����
	public int reportComment(@Param("reportuser")String reportuser,@Param("commentid")Integer commentid,
			@Param("user")String user,@Param("commentcontent")String commentcontent,@Param("commentdate")String commentdate,
			@Param("videoidbycomment")Integer videoidbycomment,@Param("userimgurl")String userimgurl);
	//ɾ���ٱ����۵���Ϣ
	public int deletereport(@Param("reportid")Integer reportid);	
	//ɾ������
	public int deleteComment(@Param("commentid")Integer commentid);	
	//��ѯ���еľٱ�����
	public List<Report> listreport();
	
	
	//	//�޸ĸ�����Ϣ
//	public int updateUser(@Param("username")String username,@Param("password")String password,@Param("sex")String sex);
//	//��ѯ����Ա�˻�������
//	public Admin findAdmin(@Param("adminname")String adminname,@Param("adminpassword")String adminpassword);
	
}
