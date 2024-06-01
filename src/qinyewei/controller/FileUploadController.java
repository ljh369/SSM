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
	
	// �õ�һ��������¼��־�Ķ���������ӡ��Ϣ��ʱ���ܹ���Ǵ�ӡ�����Ǹ������Ϣ
	private static final Log logger = LogFactory.getLog(FileUploadController.class);

	/**
	 * ���ļ��ϴ�
	 */
	@RequestMapping("/multifile.action")
	public String multiFileUpload(@ModelAttribute MultiFileDomain multiFileDomain,String username,String type, HttpServletRequest request,Model model){
		System.out.println("username:"+username); 
		if(username.equals("null")){
			model.addAttribute("msg", "error1");
			System.out.println("username��");
			return "redirect:index1.jsp";
		}else{
		String realpath = request.getServletContext().getRealPath("video");
		System.out.println("����·��:"+realpath); 
		File targetDir = new File(realpath); 	//����File����
		if(!targetDir.exists()){  //���·�������������
			targetDir.mkdirs();  
        } 
		String videomsg1 = null,videomsg2=null,videomsg3=null;
		List<MultipartFile> files = multiFileDomain.getMyfile();
		for (int i = 0; i < files.size(); i++) {
			//���i=0�������ǵ�һ���ļ��� 
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
				System.out.println("ԭ�ļ���:"+fileName+"��Ƶ���ƣ�"+fileName1+"���ĺ��ļ�����"+description);
				File targetFile = new File(realpath,description);
			//�ϴ� 
	        try {  
	        	file.transferTo(targetFile);  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
		}
		logger.info("�ɹ�");
		System.out.println("��Ƶ����Ϊ��"+videomsg3+"��Ƶ·��Ϊ��"+videomsg1+"ͼƬ·��Ϊ��"+videomsg2+"����Ϊ��"+type+"�ϴ���Ϊ��"+username);
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		System.out.println(formatter.format(calendar.getTime())); 
		System.out.println("�ϴ��ɹ�����ʼ�����ݿ����������.......");
		Integer addvideo=videoService.addVideo(videomsg3, videomsg2, videomsg1,type,username,formatter.format(calendar.getTime()),0);
		if(addvideo.equals(1)){
			model.addAttribute("addvideo", "�ϴ��ɹ�!");
		}else{
			model.addAttribute("addvideo", "�ϴ�ʧ��!");
		}
		return "uploadvideo";
		
		}
	}
}
