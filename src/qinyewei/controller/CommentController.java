package qinyewei.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import entity.Advise;
import entity.Comment;
import entity.Report;
import entity.User;
import entity.Video;
import qinyewei.service.CommentService;
import qinyewei.service.UserService;
import qinyewei.service.VideoService;

@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	@Autowired
	private VideoService videoService;
	@Autowired
	private UserService userService;
	//提交评论
	@RequestMapping(value="/addcomment.action",method=RequestMethod.GET)
	public String addcomment(String username,String commentcontent,Integer videoid,String pageview,String userimgurl,
			Model model,HttpSession session){
		if(!username.equals("null")){
			Calendar calendar = Calendar.getInstance();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			System.out.println(formatter.format(calendar.getTime())); 
			int addcomment=commentService.addComment(username, commentcontent, formatter.format(calendar.getTime()), videoid,userimgurl);
			//跳转到主界面
			List<Video> video=videoService.findVideo(videoid);
			List<Video> video1=videoService.findVideo(videoid);
			List<Comment> comment=commentService.listComment(videoid);
			String username1=(String)session.getAttribute("username"); 
			User user=userService.listUser(username1);
			model.addAttribute("user", user);
			System.out.println("video"+video);
			model.addAttribute("video", video);
			model.addAttribute("video1", video1);
			model.addAttribute("comment", comment);
			return "page";
		}
		//向域中存数据,可以在jsp中直接取出
		model.addAttribute("msg", "error1");
		return "index1";
	}
	@RequestMapping(value="/addadvise.action",method=RequestMethod.GET)
	public String addadvise(String username,String phone,String advisecontent,String userimgurl,Model model,HttpSession session){
		if(!username.equals("null")){
			Calendar calendar = Calendar.getInstance();
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			int addadvise=commentService.addadvise(username, phone, advisecontent, formatter.format(calendar.getTime()),userimgurl);
			model.addAttribute("msg", "提交成功！");
			User user=userService.listUser(username);
			model.addAttribute("usermessage", user);
			return "pinion";
		}
		//向域中存数据,可以在jsp中直接取出
		model.addAttribute("msg", "error1");
		return "index1";
	}
	//查询意见与建议
	@RequestMapping(value="/listadvise.action",method=RequestMethod.GET)
	public String listadvise(String username,Model model,HttpSession session){
		if(!username.equals("null")){
			List<Advise> listadvise=commentService.listadvise();
			model.addAttribute("advise", listadvise);
			return "mymerootadvise";
		}
		//向域中存数据,可以在jsp中直接取出
		model.addAttribute("msg", "error1");
		return "index1";
	}
	//查询意见与建议
	@RequestMapping(value="/deleteadvise.action",method=RequestMethod.GET)
	public String deleteadvise(Integer adid,Model model,HttpSession session){
		String username=(String)session.getAttribute("username"); 
		if(!username.equals("null")){
			int deleteadvise=commentService.deleteadvise(adid);
			model.addAttribute("msg", "删除成功！");
			List<Advise> listadvise=commentService.listadvise();
			model.addAttribute("advise", listadvise);
			return "mymerootadvise";
		}
		//向域中存数据,可以在jsp中直接取出
		model.addAttribute("msg", "error1");
		return "index1";
	}
	//举报评论
	@RequestMapping(value="/reportcomment.action",method=RequestMethod.GET)
	public String reportcomment(String reportuser,Integer commentid,String user,String commentcontent,
			String commentdate,Integer videoidbycomment,String userimgurl,Integer videoid,
			Model model,HttpSession session){
		System.out.println("reportuser="+reportuser);
		String username=(String)session.getAttribute("username"); 
		if(!username.equals("null")){
			int reportcomment=commentService.reportComment(reportuser, commentid, user, commentcontent
					,commentdate, videoidbycomment, userimgurl);
			model.addAttribute("msg", "举报成功！");
			List<Video> video=videoService.findVideo(videoid);
			List<Comment> comment=commentService.listComment(videoid);
			User user1=userService.listUser(username);
			model.addAttribute("video", video);
			model.addAttribute("comment", comment);
			model.addAttribute("user", user1);
			return "page";
		}
		//向域中存数据,可以在jsp中直接取出
		model.addAttribute("msg", "error1");
		return "index1";
	}
	//查询被举报的评论
	@RequestMapping(value="/listreport.action",method=RequestMethod.GET)
	public String listreport(Model model,HttpSession session){
		String username=(String)session.getAttribute("username"); 
		if(username.equals("root")){
			List<Report> listreport=commentService.listreport();
			model.addAttribute("report", listreport);
			return "mymerootreport";
		}
		//向域中存数据,可以在jsp中直接取出
		model.addAttribute("msg", "error1");
		return "index1";
	}
	//删除违规评论
	@RequestMapping(value="/deletereport.action",method=RequestMethod.GET)
	public String deletereport(Integer reportid,Integer id,Integer commentid,Model model,HttpSession session){
		String username=(String)session.getAttribute("username"); 
		if(username.equals("root")){
			//1为删除评论,2为评论无问题
			if(id==1){
				Integer deletereport=commentService.deletereport(reportid);
				Integer deletecomment=commentService.deleteComment(commentid);
				model.addAttribute("msg", "评论已删除！");
				List<Report> listreport=commentService.listreport();
				model.addAttribute("report", listreport);
				return "mymerootreport";
			}else if(id==2){
				Integer deletereport=commentService.deletereport(reportid);
				model.addAttribute("msg", "评论无问题，举报信息已删除！");
				List<Report> listreport=commentService.listreport();
				model.addAttribute("report", listreport);
				return "mymerootreport";
			}
		}
		//向域中存数据,可以在jsp中直接取出
		model.addAttribute("msg", "error1");
		return "index1";
	}
}
