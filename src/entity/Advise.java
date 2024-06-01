package entity;

import java.io.Serializable;

public class Advise implements Serializable{


	private Integer adid; 
	private String name;
	private String phone;
	private String content;
	private String date;
	private String userimgurl;
	public Integer getAdid() {
		return adid;
	}
	public void setAdid(Integer adid) {
		this.adid = adid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getUserimgurl() {
		return userimgurl;
	}
	public void setUserimgurl(String userimgurl) {
		this.userimgurl = userimgurl;
	}
	@Override
	public String toString() {
		return "Advise [adid=" + adid + ", name=" + name + ", phone=" + phone + ", content=" + content + ", date="
				+ date + ", userimgurl=" + userimgurl + "]";
	}

	
}
