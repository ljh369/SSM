package entity;

import java.io.Serializable;
import qinyewei.dao.UserDao;
import qinyewei.dao.UserDao;

public class User implements Serializable {

	/**
	 * 
	 */
	private String username;
	private String password;
	private String sex;
	private String vip;
	private String userimgurl;
	private int admin;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getVip() {
		return vip;
	}

	public void setVip(String vip) {
		this.vip = vip;
	}

	public String getUserimgurl() {
		return userimgurl;
	}

	public void setUserimgurl(String userimgurl) {
		this.userimgurl = userimgurl;
	}

	
	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", sex=" + sex + ", vip=" + vip
				+ ", userimgurl=" + userimgurl + ", admin=" + admin + "]";
	}

	

}
