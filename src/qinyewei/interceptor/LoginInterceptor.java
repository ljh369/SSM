package qinyewei.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import entity.User;

/**
 * 
 * 登录拦截器
 *
 */
public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// 获取请求的URL
		String url=request.getRequestURI();
		//URL除了登录、注册请求外，其他的URL都进行拦截控制
		if(url.indexOf("/userlogin.action")>=0){
			return true;
		}
		if(url.indexOf("/userregister.action")>=0){
			return true;
		}
		if(url.indexOf("/userlist.action")>=0){
			return true;
		}
		if(url.indexOf("/userout.action")>=0){
			return true;
		}
		if(url.indexOf("/adminlogin.action")>=0){
			return true;
		}
		if(url.indexOf("/listuser.action")>=0){
			return true;
		}
		if(url.indexOf("/onefile.action")>=0){
			return true;
		}
		if(url.indexOf("/videofind.action")>=0){
			return true;
		}
		if(url.indexOf("/multifile.action")>=0){
			return true;
		}
		if(url.indexOf("/listgerenzhongxin.action")>=0){
			return true;
		}
		if(url.indexOf("/listgerenzhongxin.action")>=0){
			return true;
		}
		if(url.indexOf("/deletevideo.action")>=0){
			return true;
		}
		if(url.indexOf("/deletefvideo.action")>=0){
			return true;
		}
		if(url.indexOf("/updateuser.action")>=0){
			return true;
		}
		
		//获取Session
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("username");
		//判断Session中是否有用户数据，如果有，这返回true，继续向下执行
		if(user!=null){
			return true;
		}
		System.err.println("不符合条件");
		//不符合条件的，给出提示信息，并转发到登录页面
		request.setAttribute("msg", "您还没有登录，请先登录！");
		 RequestDispatcher rd = request.getRequestDispatcher("/videofind.action?videoid=0&id=1"); 
		 rd.forward(request,response); 
		return false;
	}

}
