package qinyewei.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Advise;
import entity.Comment;
import entity.Report;
import entity.User;

public interface CommentService {
	public List<Comment> listComment(int videoid);
	public int addComment(String user,String commentcontent,
			String commentdate,Integer videoidbycomment,String userimgurl);
	//�����ݿ����ύ����뽨��
		public int addadvise(String username,String phone,
					String content,String date,String userimgurl);
	//��ѯ���е�����뽨��
	public List<Advise> listadvise();
	//ɾ��������뽨��
	public int deleteadvise(Integer adid);
	//�ٱ�����
	public int reportComment(String reportuser,Integer commentid,
			String user,String commentcontent,String commentdate,
			Integer videoidbycomment,String userimgurl);
	//ɾ���ٱ����۵���Ϣ
	public int deletereport(Integer reportid);	
	//ɾ������
	public int deleteComment(Integer commentid);	
	//��ѯ���еľٱ�����
	public List<Report> listreport();
}
