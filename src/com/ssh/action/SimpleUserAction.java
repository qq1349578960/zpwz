package com.ssh.action;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ssh.service.ISimpleUserService;
import com.ssh.util.ResultObj;


@Controller
public class SimpleUserAction extends CommonAction {
	@Autowired
	private ISimpleUserService simpleUserSerive;
	
	private ResultObj result;
	/**
	 * 进入主页
	 * @return
	 */
	@Action(value="index",results={@Result(name="index",location="/index.jsp")})
	public String index(){
		return "index";
	}
	
	/**
	 * 进入个人中心
	 * @return
	 */
	@Action(value="personal",results={
			@Result(name="personal",location="/personal.jsp"),
			@Result(name="login",location="/login.jsp")
	})
	public String personal(){
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName");
		if(null != userName){
			return "personal";
		}else{
			result = new ResultObj();
			result.setResult("1");
			result.setMsg("请登录");
			request.setAttribute("result", result);
			return "login";
		}
	}
	
	private List<String> infos;
	
	public List<String> getInfos() {
		return infos;
	}

	@Action(value=" ",results={
			@Result(type="json",params={"root","infos"})
	})
	public String selfInfo(){
		infos = new ArrayList<String>();
		infos.add("hahahh");
		infos.add("heihei");
		return SUCCESS;
	}
}
