package com.ssh.action;
/**
 * 公共action
 */
import java.util.ArrayList;

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
	 * 进入登录页面
	 * @return
	 */
	@Action(value="gotoLogin",results={@Result(name="login",location="/login.jsp")})
	public String loginPage(){
		System.out.println("进入登录页面 ");
		return "login";
	}
	
	/**
	 * 登录执行
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
			result.setMsg("用户名或密码不能为空");
			result.setResult("1");
			request.setAttribute("result", result);
			return "loginResult";
		}
		
		String flag =null;
		String msg = null;
		User u=commonService.login(user.getLoginName(), user.getPassword());
		if(null != u){
			flag = "0";
			msg = "登录成功";
			HttpSession session = request.getSession();
			session.setAttribute("userName", u.getLoginName());
			session.setMaxInactiveInterval(10*60);
		}else{
			flag = "1";
			msg = "账号或密码错误";
		}
		
		String type = u.getUserType();
		if(type == null){
			flag = "1";
			msg = "账户异常，请重试";
		}else{
			request.setAttribute("type", type);
		}
		result.setMsg(msg);
		result.setResult(flag);
		request.setAttribute("result", result);
		return "loginResult";
	}
	
	/**
	 * 退出
	 * @return
	 */
	@Action(value="logout",results={@Result(name="index",location="/index.jsp")})
	public String logout(){
		result = new ResultObj();
		HttpSession session = request.getSession();
		session.invalidate();
		result.setMsg("成功退出 ");
		request.setAttribute("result", result);
		return "index";
	}
	
	
	/**
	 * 进入注册
	 * @return
	 */
	@Action(value="registered",results={@Result(name="reg",location="/reg.jsp")})
	public String registered(){
		return "reg";
	}
	
	
	/**
	 * 验证账号是否重复
	 * @return
	 */


	
	private String inf;
	
	public String getInf() {
		return inf;
	}
	public void setInf(String inf) {
		this.inf = inf;
	}
	
	@Action(value="userNameValidation",results={
			@Result(type="json",params={"root","inf"})
	})
	public String selfInfo(){
		inf=commonService.userNameValidation(user.getLoginName());
		return SUCCESS;
	}
	
	private String userInfo;
	
	public String getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(String userInfo) {
		this.userInfo = userInfo;
	}
	
	/**
	 * 注册用户
	 * @return
	 */
	@Action(value="registeredUser",results={
			@Result(type="json",params={"root","userInfo"})
	})
	public String registeredUser(){
		userInfo=commonService.registeredUser(user);
		return SUCCESS;
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
