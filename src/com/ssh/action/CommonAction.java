package com.ssh.action;
/**
 * ����action
 */
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.bean.User;
import com.ssh.service.ICommonService;
import com.ssh.util.ResultObj;
@Controller
@ParentPackage("json-default")
public class CommonAction extends ActionSupport implements ServletRequestAware,ServletResponseAware, ServletContextAware{
	private static final long serialVersionUID = 1L;
	protected HttpServletRequest request;
	protected ServletContext context;
	protected HttpServletResponse response;
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	public void setServletContext(ServletContext context) {
		this.context = context;
	}
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public ServletContext getContext() {
		return context;
	}
	public void setContext(ServletContext context) {
		this.context = context;
	}
	public HttpServletResponse getResponse() {
		return response;
	}
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	private User user;
	
	private ResultObj result;
	
	@Autowired
	ICommonService commonService;
	
	/**
	 * �����¼ҳ��
	 * @return
	 */
	@Action(value="gotoLogin",results={@Result(name="login",location="/login.jsp")})
	public String loginPage(){
		System.out.println("�����¼ҳ�� ");
		return "login";
	}
	
	/**
	 * ��¼ִ��
	 * @return
	 */
	@Action(
			value="login",
			results={
				@Result(name="loginResult",location="/login.jsp"),
			})
	public String login(){
		result = new ResultObj();
		if(user ==null){
			result.setMsg("�û��������벻��Ϊ��");
			result.setResult("1");
			request.setAttribute("result", result);
			return "loginResult";
		}
		
		String flag =null;
		String msg = null;
		User u=commonService.login(user.getLoginName(), user.getPassword());
		if(null != u){
			flag = "0";
			msg = "��¼�ɹ�";
			HttpSession session = request.getSession();
			session.setAttribute("userName", u.getLoginName());
			session.setMaxInactiveInterval(10*60);
		}else{
			flag = "1";
			msg = "�˺Ż��������";
		}
		
		String type = u.getUserType();
		if(type == null){
			flag = "1";
			msg = "�˻��쳣��������";
		}else{
			request.setAttribute("type", type);
		}
		result.setMsg(msg);
		result.setResult(flag);
		request.setAttribute("result", result);
		return "loginResult";
	}
	
	/**
	 * �˳�
	 * @return
	 */
	@Action(value="logout",results={@Result(name="index",location="/index.jsp")})
	public String logout(){
		result = new ResultObj();
		HttpSession session = request.getSession();
		session.invalidate();
		result.setMsg("�ɹ��˳� ");
		request.setAttribute("result", result);
		return "index";
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public ICommonService getCommonService() {
		return commonService;
	}
	public void setCommonService(ICommonService commonService) {
		this.commonService = commonService;
	}
}
