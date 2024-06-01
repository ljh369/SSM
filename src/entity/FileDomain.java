package entity;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;
public class FileDomain {
	private String description;
	private MultipartFile myfile;
	//省略setter和getter方法
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public MultipartFile getMyfile() {
		return myfile;
	}
	public void setMyfile(MultipartFile myfile) {
		this.myfile = myfile;
	}
	
}
