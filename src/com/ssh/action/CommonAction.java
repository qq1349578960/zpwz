package com.ssh.action;
/**
 * ¹«¹²action
 */
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
@Controller
@ParentPackage("struts-default")
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
	
	@Autowired
	ICommonService commonService;
	
	@Action(
			value="login",
			results={
				@Result(name="succ",location="/succ.jsp"),
				@Result(name="fail",location="/fail.jsp")
			})
	public String login(){
		User u=commonService.login(user.getLoginName(), user.getPassword());
		context.setAttribute("aa", "what????");
		request.setAttribute("bbb", "how???");
		request.getSession().setAttribute("ddd", "who???");
		if(null != u){
			return "succ";
		}
		else{
			return "fail";
		}
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
