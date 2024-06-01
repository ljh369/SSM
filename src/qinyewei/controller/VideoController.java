package qinyewei.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import entity.Comment;
import entity.Favorite;
import entity.User;
import entity.Video;
import qinyewei.service.CommentService;
import qinyewei.service.UserService;
import qinyewei.service.VideoService;

@Controller
public class VideoController {
	@Autowired
	private VideoService videoService;
	@Autowired
	private CommentService commnetService;
	@Autowired
	private UserService userService;
	//查找video
	@RequestMapping(value="/videofind.action")
	public String login(Integer videoid,Integer id,Integer pageview,Model model,HttpSession session,HttpSession request){
		//id为1是主页随机查询20个视频信息,此时videoid为0
		//id为2是用户点击某一个视频后查询该视频的视频信息,此时videoid为0
		//id为3是管理员查询数据库中的所有视频信息
		//id为4是查询数据库中所有的MADAMV视频
		//id为5是管理员查询数据库中未审核的视频信息
		//id为6是进入意见反馈查询当前用户信息
		if(id.equals(1)){
			List<Video> video=videoService.findVideo(videoid);
			System.out.println("video"+video);
			String username=(String)session.getAttribute("username"); 
			User user=userService.listUser(username);
			List<Video> hotvideo=videoService.hotvideo();
			model.addAttribute("usermessage", user);
			model.addAttribute("video", video);
			model.addAttribute("hotvideo", hotvideo);
			System.out.println("user"+user);
			return "index";
		}else if(id.equals(2)){
			Integer pageview1=pageview+1;
			videoService.addVideoview(videoid, pageview1);
			List<Video> video=videoService.findVideo(videoid);
			List<Comment> comment=commnetService.listComment(videoid);
			String username=(String)session.getAttribute("username"); 
			User user=userService.listUser(username);
			model.addAttribute("video", video);
			model.addAttribute("comment", comment);
			model.addAttribute("user", user);
			return "page";
		}else if(id.equals(3)){
			List<Video> video=videoService.findAllVideo();
			System.out.println("video"+video);
			model.addAttribute("video", video);
			return "mymeroot";
		}else if(id.equals(4)){
			List<Video> video=videoService.findVideofortype(videoid);//这里的videoid指的是视频种类
			System.out.println("video"+video);
			String username=(String)session.getAttribute("username"); 
			User user=userService.listUser(username);
			model.addAttribute("usermessage", user);
			model.addAttribute("video", video);
			//根据查询不同种类的视频返回不同的网页
			if(videoid==1){
				return "MADAMV";
			}else if(videoid==2){
				return "Life";
			}else if(videoid==3){
				return "Food";
			}else if(videoid==4){
				return "Music";
			}else if(videoid==5){
				return "Study";
			}
		}else if(id.equals(5)){
			List<Video> video=videoService.findVideoforexamine();
			model.addAttribute("video", video);
			return "mymerootexamine";
		}else if(id.equals(6)){
			String username=(String)session.getAttribute("username"); 
			if(username!=null){
				User user=userService.listUser(username);
				model.addAttribute("usermessage", user);
				return "pinion";
		}else if(id.equals(7)){
			User user=userService.listUser(username);
			List<Video> hotvideo=videoService.hotvideo();
			model.addAttribute("usermessage", user);
			model.addAttribute("video", hotvideo);
			System.out.println("user"+user);
			return "index";
			}
		}
		List<Video> video=videoService.findVideo(0);
		System.out.println("video"+video);
		List<Video> hotvideo=videoService.hotvideo();
		model.addAttribute("video", video);
		model.addAttribute("hotvideo", hotvideo);
		model.addAttribute("msg", "error1");
		return "index";
	}
	//读取个人中心所需要的信息
	@RequestMapping(value="/listgerenzhongxin.action")
	public String findFavoriteVideo(String username,Model model,HttpSession session,HttpSession request){
		//查询作品
		List<Video> Uploader=videoService.finduploaderVideo(username);
		System.out.println("Uploader"+Uploader);
		model.addAttribute("Uploader", Uploader);
		//查询收藏
		List<Favorite> favorite=videoService.findFavoriteVideo(username);
		List<Video> fvideo = new ArrayList();
		for(int j = 0; j<favorite.size(); j++){  
			int videoid=favorite.get(j).getVideoid();	//取出videoid
			System.out.println("取出的videoid："+videoid);
			Video favoritevideo=videoService.findoneVideo(videoid);	//查询取出的这个videoid
			System.out.println("查询videoid的信息为："+favoritevideo);
			fvideo.add(j,favoritevideo);
		}
		User user=userService.listUser(username);
		System.out.println("user"+user);
		model.addAttribute("usermessage", user);
		System.out.println("fvideo"+fvideo);
		model.addAttribute("fvideo", fvideo);
		return "myme";
	}
	@RequestMapping(value="/likevideo.action")
	public String likevideo(String keywords,Model model,HttpSession session,HttpSession request){
		//模糊查询关键字
		List<Video> likevideo=videoService.finduplikeVideo(keywords);
		System.out.println("likevideo"+likevideo);
		model.addAttribute("likevideo", likevideo);
		String username=(String)session.getAttribute("username"); 
		User user=userService.listUser(username);
		model.addAttribute("usermessage", user);
		return "pages";
	}
	@RequestMapping(value="/deletevideo.action")
	public String deletevideo(String username,Integer videoid,Integer id,Model model,HttpSession session,HttpSession request){
		Integer deletevideo=videoService.deletVideo(videoid);
		Integer deletefvideo=videoService.deletefVideo2(videoid);
		if(deletevideo.equals(1)){
			model.addAttribute("msg", "删除成功");
		}
		if(id.equals(1)){
			return "redirect:/listgerenzhongxin.action?username="+username;
		}else if(id.equals(2)){
			List<Video> video=videoService.findAllVideo();
			System.out.println("video"+video);
			model.addAttribute("video", video);
			return "mymeroot";
		}
		return "index";
	}
	@RequestMapping(value="/addfvideo.action")
	public String addfvideo(String username,Integer videoid,Model model,HttpSession session,HttpSession request){
		//先查一下是否已经添加过
	if(!username.equals("null")){
		Favorite favorite1=new Favorite();
		favorite1.setUsername(username);
		favorite1.setVideoid(videoid);
		Integer Fld1=videoService.findoneFavoriteVideo(favorite1);
		System.out.println("Fld1"+Fld1);
		//如果为0则没有查到
		if(Fld1==null){
			//添加收藏
			Favorite favorite=new Favorite();
			favorite.setUsername(username);
			favorite.setVideoid(videoid);
			Integer addfvideo=videoService.addfVideo(favorite);
			System.out.println("addfvideo"+addfvideo);
			if(addfvideo.equals(1)){
				model.addAttribute("msg", "添加至收藏夹");
			}else{
				model.addAttribute("msg", "添加失败");
			}
		}else{
			model.addAttribute("msg", "已经添加过了");
		}
		User user=userService.listUser(username);
		System.out.println("user"+user);
		model.addAttribute("user", user);
		List<Video> video=videoService.findVideo(videoid);
		System.out.println("video"+video);
		model.addAttribute("video", video);
		List<Comment> comment=commnetService.listComment(videoid);
		model.addAttribute("comment", comment);
		return "page";
	}
	List<Video> video=videoService.findVideo(0);
	System.out.println("video"+video);
	List<Video> hotvideo=videoService.hotvideo();
	model.addAttribute("video", video);
	model.addAttribute("hotvideo", hotvideo);
	model.addAttribute("msg", "error1");
	return "index";
	}
	@RequestMapping(value="/deletefvideo.action")
	public String deletefvideo(String username,Integer videoid,Model model,HttpSession session,HttpSession request){
		//先查询要删除的Fld
		Favorite favorite=new Favorite();
		favorite.setUsername(username);
		favorite.setVideoid(videoid);
		Integer Fld=videoService.findoneFavoriteVideo(favorite);
		//删除收藏
		if(!Fld.equals(null)){
			Integer deletefvideo=videoService.deletefVideo(Fld);
		
			if(deletefvideo.equals(1)){
				System.out.println("删除成功！");
				model.addAttribute("deletefvideo", "删除成功！");
			}else{
				System.out.println("删除失败！");
				model.addAttribute("deletefvideo", "删除失败！");
			}
		}else{
			return "index";
		}
		return "redirect:/listgerenzhongxin.action?username="+username;
	}
	//审核通过的video
	@RequestMapping(value="/passvideo.action")
	public String passvideo(Integer videoid,Model model,HttpSession session,HttpSession request){
		//模糊查询关键字
		Integer passvideo=videoService.passvideo(videoid);
		if(passvideo.equals(1)){
			System.out.println("审核成功！");
			model.addAttribute("msg", "审核通过！");
		}else{
			System.out.println("审核失败！");
			model.addAttribute("msg", "审核失败！");
		}
		List<Video> video=videoService.findVideoforexamine();
		model.addAttribute("video", video);
		return "mymerootexamine";
	}
	//审核未通过的video
	@RequestMapping(value="/failvideo.action")
		public String failvideo(Integer videoid,Model model,HttpSession session,HttpSession request){
		Integer deletevideo=videoService.deletVideo(videoid);
		if(deletevideo.equals(1)){
			model.addAttribute("msg", "审核不通过！");
		}
		List<Video> video=videoService.findVideoforexamine();
		model.addAttribute("video", video);
		return "mymerootexamine";
	}
	@RequestMapping(value="/goodvideo.action")
	public String goodvideo(String username,int videoid,int favoriteAmount,Model model,HttpSession session,HttpSession request){
		if(!username.equals("null")){	
		//点赞
		int favoriteAmount1=favoriteAmount+1;
		int goodvideo=videoService.goodvideo(videoid, favoriteAmount1);
		model.addAttribute("msg", "点赞成功！");
		User user=userService.listUser(username);
		System.out.println("user"+user);
		model.addAttribute("user", user);
		List<Video> video=videoService.findVideo(videoid);
		System.out.println("video"+video);
		model.addAttribute("video", video);
		List<Comment> comment=commnetService.listComment(videoid);
		model.addAttribute("comment", comment);
		return "page";
	}
		List<Video> video=videoService.findVideo(0);
		System.out.println("video"+video);
		List<Video> hotvideo=videoService.hotvideo();
		model.addAttribute("video", video);
		model.addAttribute("hotvideo", hotvideo);
		model.addAttribute("msg", "error1");
		return "index";
	}
	
}
