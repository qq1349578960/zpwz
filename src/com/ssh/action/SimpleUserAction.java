package com.ssh.action;


import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ssh.service.ISimpleUserService;

@Controller
public class SimpleUserAction extends CommonAction {
	@Autowired
	private ISimpleUserService simpleUserSerive;
	
	@Action(value="index",results={@Result(name="index",location="/index.jsp")})
	public String index(){
		return "index";
	}
}
