package qinyewei.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import entity.FileDomain;
import entity.MultiFileDomain;
import entity.User;
import qinyewei.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	//登录
	@RequestMapping(value="/userlogin.action",method=RequestMethod.POST)
	public String login(String username,String password,Model model,HttpSession session){
		//ͨ通过账号和密码查询用户
		User user=userService.findUser(username,password);
		if(user!=null){
			//将用户对象添加到Session
			session.setAttribute("usernameid",2);//2为普通用户
			session.setAttribute("username", user.getUsername());
			
			//跳转到主界面
			model.addAttribute("msg", "1");
			return "index1";
		}
		//向域中存数据,可以在jsp中直接取出
		model.addAttribute("msg", "error");
		return "index1";
	}
	//注册
	@RequestMapping(value="/userregister.action",method=RequestMethod.POST)
	public String register(String username,String password,String repassword,Model model,HttpSession session){
		System.out.println("username:"+username+"password"+password);
		if(!password.equals(repassword)){
			model.addAttribute("msg", "两次密码不一致，请重新输入！");
			return "member";
		}else{
			int user=userService.addUser(username, password);
			//如果return 0则说明添加失败，1为成功
			if(user==1){
				model.addAttribute("msg", "registerok");
				return "index1";
			}else{
				model.addAttribute("msg", "registererror");
				return "member";
			}
		}
		
	}
	@RequestMapping(value="/userlist.action")
	public String updateuser(String username,String password,Model model,HttpSession session){
		User user=userService.findUser(username, password);
		model.addAttribute("user",user);
		System.out.println("username"+user.getUsername()+"sex"+user.getSex()+"Vip"+user.getVip());
		return "updateuser";
		
	}
	@RequestMapping(value="/userout.action")
	public String outlogin(String username,String password,Model model,HttpSession session){
		session.removeAttribute("username");
		
		return "index1";	
	}
	@RequestMapping(value="/adminlogin.action",method=RequestMethod.POST)
	public String Adminlogin(String adminname,String adminpassword,Model model,HttpSession session){
		if(adminname.equals("root")){
			//ͨ通过账号和密码查询用户
			User user=userService.findAdmin(adminname, adminpassword);
			if(user!=null){
				//将用户对象添加到Session
				session.setAttribute("usernameid",1);
				session.setAttribute("username", user.getUsername());
				//跳转到主界面
				model.addAttribute("usermessage", user);
				return "index1";
			}
			//向域中存数据,可以在jsp中直接取出
			model.addAttribute("msg", "error");
			return "index1";
		}
		model.addAttribute("msg", "您输入的不是管理员账号");
		return "index1";
	}
	@RequestMapping(value="/listuser.action",method=RequestMethod.GET)
	public String Listuser(String username,Model model,HttpSession session){
		//ͨ通过账号和密码查询用户
		User user=userService.listUser(username);
		//向域中存数据,可以在jsp中直接取出
		System.out.println("user"+user);
		model.addAttribute("usermessage", user);
		return "updateuser2";
	}
	@RequestMapping(value="/updateuser.action",method=RequestMethod.POST)
	public String updateuser(String username,String oldpassword,String password,String repassword,String sex,Model model,HttpSession session){
		System.out.println("username:"+username);
		//先查询oldpassword是否正确
		User user=userService.findUser(username,oldpassword);
		//判断如果user不为空并且两次输入的密码相同则更改资料
		if(user!=null&&password.equals(repassword)){
			//更改个人信息
			int id=userService.updateUser(username, password, sex);
			System.out.println("id"+id);
			//从新再查一次
			User user1=userService.listUser(username);
			model.addAttribute("updateusermessage", "修改完成");
			model.addAttribute("usermessage", user1);
		}else if(user==null){
			User user1=userService.listUser(username);
			model.addAttribute("updateusermessage", "原密码输入错误");
			model.addAttribute("usermessage", user1);
		}else if(!password.equals(repassword)){
			User user1=userService.listUser(username);
			model.addAttribute("updateusermessage", "两次密码输入不一致，请重新输入");
			model.addAttribute("usermessage", user1);
		}else{
			User user1=userService.listUser(username);
			model.addAttribute("updateusermessage", "输入有误，请重新输入");
			model.addAttribute("usermessage", user1);
		}
		return "updateuser2";
	}
	//查看用户头像
	@RequestMapping(value="/listuserhead.action",method=RequestMethod.GET)
	public String Listuserhead(String username,Model model,HttpSession session){
		String userimgurl=userService.finduserhead(username);
		model.addAttribute("userimgurl", userimgurl);
		User user=userService.listUser(username);
		model.addAttribute("user", user);
		return "upuserhead";
	}
	//更新用户头像
	@RequestMapping("/updateuserhead.action")
	public String updateUserHead(@ModelAttribute FileDomain fileDomain,String username, HttpServletRequest request,Model model){
		System.out.println("username:"+username); 
		String description = null;
		String headurl=null;
		if(username.equals("null")){	
			model.addAttribute("msg", "您还没有登录");
			System.out.println("username空");
			return "redirect:index1.jsp";
		}else{
			String realpath = request.getServletContext().getRealPath("userimages");
			System.out.println("保存路径:"+realpath); 
			String fileName = fileDomain.getMyfile().getOriginalFilename(); 
			File targetFile = new File(realpath, fileName); 
			if(!targetFile.exists()){  
				targetFile.mkdirs();  
			} 
			description=fileName+".png";
			headurl="userimages/"+fileName+".png";
			File targetdir = new File(realpath,description);
				//上传 
			try {   
				fileDomain.getMyfile().transferTo(targetdir);
			} catch (Exception e) {  
				e.printStackTrace();  
			}
			System.out.println("图片名称为："+description+"上传者为："+username);
			System.out.println("上传成功，开始向数据库中添加数据.......");
			Integer updateuserimg=userService.updateuserhead(username, headurl);
			if(updateuserimg.equals(1)){
				model.addAttribute("userhead", "上传成功!");
			}else{
				model.addAttribute("userhead", "上传失败!");
			}
			String userimgurl=userService.finduserhead(username);
			model.addAttribute("userimgurl", userimgurl);
			return "upuserhead";
		}
	}
}
