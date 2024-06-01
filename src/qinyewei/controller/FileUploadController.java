package qinyewei.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import entity.MultiFileDomain;
import entity.Video;
import qinyewei.service.VideoService;
@Controller
public class FileUploadController {
	@Autowired
	private VideoService videoService;
	
	// 得到一个用来记录日志的对象，这样打印信息的时候能够标记打印的是那个类的信息
	private static final Log logger = LogFactory.getLog(FileUploadController.class);

	/**
	 * 多文件上传
	 */
	@RequestMapping("/multifile.action")
	public String multiFileUpload(@ModelAttribute MultiFileDomain multiFileDomain,String username,String type, HttpServletRequest request,Model model){
		System.out.println("username:"+username); 
		if(username.equals("null")){
			model.addAttribute("msg", "error1");
			System.out.println("username空");
			return "redirect:index1.jsp";
		}else{
		String realpath = request.getServletContext().getRealPath("video");
		System.out.println("保存路径:"+realpath); 
		File targetDir = new File(realpath); 	//创建File对象
		if(!targetDir.exists()){  //如果路径不存在则添加
			targetDir.mkdirs();  
        } 
		String videomsg1 = null,videomsg2=null,videomsg3=null;
		List<MultipartFile> files = multiFileDomain.getMyfile();
		for (int i = 0; i < files.size(); i++) {
			//如果i=0表明这是第一个文件是 
				MultipartFile file = files.get(i);
				String fileName = file.getOriginalFilename();
				List<String> fileName1=multiFileDomain.getDescription(); 
				String description = null;
				if(i==0){
					description=fileName1.get(0)+".mp4";
					videomsg1="video/"+fileName1.get(0)+".mp4";
					videomsg3=fileName1.get(0);
				}else if(i==1){
					description=fileName1.get(0)+".png";
					videomsg2="video/"+fileName1.get(0)+".png";
					videomsg3=fileName1.get(0);
				}
				System.out.println("原文件名:"+fileName+"视频名称："+fileName1+"更改后文件名："+description);
				File targetFile = new File(realpath,description);
			//上传 
	        try {  
	        	file.transferTo(targetFile);  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
		}
		logger.info("成功");
		System.out.println("视频名称为："+videomsg3+"视频路径为："+videomsg1+"图片路径为："+videomsg2+"类型为："+type+"上传者为："+username);
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		System.out.println(formatter.format(calendar.getTime())); 
		System.out.println("上传成功，开始向数据库中添加数据.......");
		Integer addvideo=videoService.addVideo(videomsg3, videomsg2, videomsg1,type,username,formatter.format(calendar.getTime()),0);
		if(addvideo.equals(1)){
			model.addAttribute("addvideo", "上传成功!");
		}else{
			model.addAttribute("addvideo", "上传失败!");
		}
		return "uploadvideo";
		
		}
	}
}
