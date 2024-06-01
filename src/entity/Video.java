package entity;

import java.io.Serializable;

public class Video implements Serializable{


	private Integer videoid; 
	private String videoname;
	private String videourl;
	private String imgurl;
	private String type;
	private Integer pageview;
	private Integer favoriteamount;
	private String uploader;
	private String date;
	private int examine;
	public Integer getVideoid() {
		return videoid;
	}
	public void setVideoid(Integer videoid) {
		this.videoid = videoid;
	}
	public String getVideoname() {
		return videoname;
	}
	public void setVideoname(String videoname) {
		this.videoname = videoname;
	}
	public String getVideourl() {
		return videourl;
	}
	public void setVideourl(String videourl) {
		this.videourl = videourl;
	}
	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getPageview() {
		return pageview;
	}
	public void setPageview(Integer pageview) {
		this.pageview = pageview;
	}
	public Integer getFavoriteamount() {
		return favoriteamount;
	}
	public void setFavoriteamount(Integer favoriteamount) {
		this.favoriteamount = favoriteamount;
	}
	public String getUploader() {
		return uploader;
	}
	public void setUploader(String uploader) {
		this.uploader = uploader;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public int getExamine() {
		return examine;
	}
	public void setExamine(int examine) {
		this.examine = examine;
	}
	@Override
	public String toString() {
		return "Video [videoid=" + videoid + ", videoname=" + videoname + ", videourl=" + videourl + ", imgurl="
				+ imgurl + ", type=" + type + ", pageview=" + pageview + ", favoriteamount=" + favoriteamount
				+ ", uploader=" + uploader + ", date=" + date + ", examine=" + examine + "]";
	}
	
	

	
	
}
