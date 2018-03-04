package com.ssh.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ssh.bean.User;
import com.ssh.service.ISimpleUserService;

@Controller
public class SimpleUserAction extends CommonAction {
	@Autowired
	private ISimpleUserService simpleUserSerive;
	
	//≤‚ ‘
	@Action(value="queryAll",results={@Result(name="all",location="/all.jsp")})
	public String all(){
		List<User> user= simpleUserSerive.query();
		request.setAttribute("users", user);
		for (User user2 : user) {
			System.out.println("username"+user2.getLoginName());
		}
		return "all";
	}
}
