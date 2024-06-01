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
	//向数据库中提交意见与建议
		public int addadvise(String username,String phone,
					String content,String date,String userimgurl);
	//查询所有的意见与建议
	public List<Advise> listadvise();
	//删除的意见与建议
	public int deleteadvise(Integer adid);
	//举报评论
	public int reportComment(String reportuser,Integer commentid,
			String user,String commentcontent,String commentdate,
			Integer videoidbycomment,String userimgurl);
	//删除举报评论的信息
	public int deletereport(Integer reportid);	
	//删除评论
	public int deleteComment(Integer commentid);	
	//查询所有的举报评论
	public List<Report> listreport();
}
