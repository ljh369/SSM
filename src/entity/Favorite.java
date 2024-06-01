package entity;

import java.io.Serializable;

public class Favorite implements Serializable{

	/**
	 * 
	 */
	private Integer FId; 
	private String username; 
	private Integer videoid;
	public Integer getFId() {
		return FId;
	}
	public void setFId(Integer fId) {
		FId = fId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getVideoid() {
		return videoid;
	}
	public void setVideoid(Integer videoid) {
		this.videoid = videoid;
	}
	@Override
	public String toString() {
		return "Favorite [FId=" + FId + ", username=" + username + ", videoid=" + videoid + "]";
	}

}
