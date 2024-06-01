package entity;

import java.io.Serializable;

public class Report implements Serializable{


	private Integer reportid; 
	private String reportuser;
	private Integer commentid;
	private String user;
	private String commentcontent;
	private String commentdate;
	private Integer videoidbycomment; 
	private String userimgurl;
	public Integer getReportid() {
		return reportid;
	}
	public void setReportid(Integer reportid) {
		this.reportid = reportid;
	}
	public String getReportuser() {
		return reportuser;
	}
	public void setReportuser(String reportuser) {
		this.reportuser = reportuser;
	}
	public Integer getCommentid() {
		return commentid;
	}
	public void setCommentid(Integer commentid) {
		this.commentid = commentid;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getCommentcontent() {
		return commentcontent;
	}
	public void setCommentcontent(String commentcontent) {
		this.commentcontent = commentcontent;
	}
	public String getCommentdate() {
		return commentdate;
	}
	public void setCommentdate(String commentdate) {
		this.commentdate = commentdate;
	}
	public Integer getVideoidbycomment() {
		return videoidbycomment;
	}
	public void setVideoidbycomment(Integer videoidbycomment) {
		this.videoidbycomment = videoidbycomment;
	}
	public String getUserimgurl() {
		return userimgurl;
	}
	public void setUserimgurl(String userimgurl) {
		this.userimgurl = userimgurl;
	}
	@Override
	public String toString() {
		return "Report [reportid=" + reportid + ", reportuser=" + reportuser + ", commentid=" + commentid + ", user="
				+ user + ", commentcontent=" + commentcontent + ", commentdate=" + commentdate + ", videoidbycomment="
				+ videoidbycomment + ", userimgurl=" + userimgurl + "]";
	}
	

	
}
