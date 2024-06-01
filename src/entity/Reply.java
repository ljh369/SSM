package entity;

import java.io.Serializable;

public class Reply implements Serializable{


	private Integer replyid; 
	private String user;
	private String replycontent;
	private String replydate;
	private Integer videoidbyreply;
	private Integer replybycommentid;
	public Integer getReplyid() {
		return replyid;
	}
	public void setReplyid(Integer replyid) {
		this.replyid = replyid;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getReplycontent() {
		return replycontent;
	}
	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}
	public String getReplydate() {
		return replydate;
	}
	public void setReplydate(String replydate) {
		this.replydate = replydate;
	}
	public Integer getVideoidbyreply() {
		return videoidbyreply;
	}
	public void setVideoidbyreply(Integer videoidbyreply) {
		this.videoidbyreply = videoidbyreply;
	}
	public Integer getReplybycommentid() {
		return replybycommentid;
	}
	public void setReplybycommentid(Integer replybycommentid) {
		this.replybycommentid = replybycommentid;
	}
	@Override
	public String toString() {
		return "Reply [replyid=" + replyid + ", user=" + user + ", replycontent=" + replycontent + ", replydate="
				+ replydate + ", videoidbyreply=" + videoidbyreply + ", replybycommentid=" + replybycommentid + "]";
	}
	

	
	
}
