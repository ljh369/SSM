package qinyewei.service.Impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.Advise;
import entity.Comment;
import entity.Favorite;
import entity.Report;
import entity.User;
import entity.Video;
import qinyewei.dao.CommentDao;
import qinyewei.dao.UserDao;
import qinyewei.dao.VideoDao;
import qinyewei.service.CommentService;
import qinyewei.service.VideoService;
@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentDao commentDao;

	@Override
	public List<Comment> listComment(int videoid) {
		List<Comment> comment=this.commentDao.listComment(videoid);
		return comment;
	}

	@Override
	public int addComment(String user, String commentcontent, String commentdate, Integer videoidbycomment,String userimgurl) {
		int comment=this.commentDao.addComment(user, commentcontent, commentdate, videoidbycomment,userimgurl);
		return comment;
	}

	@Override
	public int addadvise(String username, String phone, String content, String date,String userimgurl) {
		int addadvise=this.commentDao.addadvise(username, phone, content, date,userimgurl);
		return addadvise;
	}

	@Override
	public List<Advise> listadvise() {
		List<Advise> listadvise=this.commentDao.listadvise();
		return listadvise;
	}

	@Override
	public int deleteadvise(Integer adid) {
		Integer deleteadvise=this.commentDao.deleteadvise(adid);
		return deleteadvise;
	}

	@Override
	public int reportComment(String reportuser, Integer commentid, String user, String commentcontent,
			String commentdate, Integer videoidbycomment, String userimgurl) {
		Integer reportComment=this.commentDao.reportComment(reportuser, commentid, user, commentcontent, commentdate, videoidbycomment, userimgurl);
		return reportComment;
	}

	@Override
	public int deletereport(Integer reportid) {
		Integer deletereport=this.commentDao.deletereport(reportid);
		return deletereport;
	}

	@Override
	public int deleteComment(Integer commentid) {
		Integer deleteComment=this.commentDao.deleteComment(commentid);
		return deleteComment;
	}

	@Override
	public List<Report> listreport() {
		List<Report> listreport=this.commentDao.listreport();
		return listreport;
	}



}
