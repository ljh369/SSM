package qinyewei.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import entity.User;

/**
 * 
 * ��¼������
 *
 */
public class VideoInterceptor implements HandlerInterceptor {

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
		// ��ȡ�����URL
		String url=request.getRequestURI();
		//URL���˵�¼��ע�������⣬������URL���������ؿ���
		if(url.indexOf("/videofind.action")>=0){
			return true;
		}
		if(url.indexOf("/deletevideo.action")>=0){
			return true;
		}
		if(url.indexOf("/addfvideo.action")>=0){
			return true;
		}
		//��ȡSession
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("USER_SESSION");
		//�ж�Session���Ƿ����û����ݣ�����У��ⷵ��true����������ִ��
		if(user!=null){
			return true;
		}
		//�����������ģ�������ʾ��Ϣ����ת������¼ҳ��
		request.setAttribute("msg", "����û�е�¼�����ȵ�¼��");
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		return false;
	}

}
