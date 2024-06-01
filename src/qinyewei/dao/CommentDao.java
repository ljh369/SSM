package qinyewei.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Comment;
import entity.Reply;
import entity.Report;
import entity.User;
import entity.Advise;

public interface CommentDao {
	//查询某视频下的评论
	public List<Comment> listComment(@Param("videoidbycomment")int videoidbycomment);
	//向某视频下提交评论
	public int addComment(@Param("user")String user,@Param("commentcontent")String commentcontent,
			@Param("commentdate")String commentdate,@Param("videoidbycomment")Integer videoidbycomment,@Param("userimgurl")String userimgurl);
	//向数据库中提交意见与建议
	public int addadvise(@Param("username")String username,@Param("phone")String phone,
				@Param("content")String content,@Param("date")String date,@Param("userimgurl")String userimgurl);
	//查询所有的意见与建议
	public List<Advise> listadvise();
	//删除的意见与建议
	public int deleteadvise(@Param("adid")Integer adid);	
	//举报评论
	public int reportComment(@Param("reportuser")String reportuser,@Param("commentid")Integer commentid,
			@Param("user")String user,@Param("commentcontent")String commentcontent,@Param("commentdate")String commentdate,
			@Param("videoidbycomment")Integer videoidbycomment,@Param("userimgurl")String userimgurl);
	//删除举报评论的信息
	public int deletereport(@Param("reportid")Integer reportid);	
	//删除评论
	public int deleteComment(@Param("commentid")Integer commentid);	
	//查询所有的举报评论
	public List<Report> listreport();
	
	
	//	//修改个人信息
//	public int updateUser(@Param("username")String username,@Param("password")String password,@Param("sex")String sex);
//	//查询管理员账户与密码
//	public Admin findAdmin(@Param("adminname")String adminname,@Param("adminpassword")String adminpassword);
	
}
