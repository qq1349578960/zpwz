<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
  <!--引用静态文件:skin_default--> 
  <link href="css/common.css" rel="stylesheet" type="text/css" />
  <link href="css/templateform.css" rel="stylesheet" type="text/css" />
  <link href="css/controls.css" rel="stylesheet" type="text/css" />
  <link href="css/default.css" rel="stylesheet" type="text/css" />
  <link href="css/school-select-v2.css" rel="stylesheet" type="text/css" /> 
  <!--引用静态文件:skin_new_css--> 
  <link href="css/main.css" rel="stylesheet" type="text/css" /> 

  <!--引用静态文件:front_css--> 
  <link href="css/front.css" rel="stylesheet" type="text/css" />  
  <style type="text/css">
          .checkbox_list {float: left;width: 450px;}
          .form_container ul li span.start_date {width: 80px;}
          .form_container ul li span.end_date {width: 70px;}
          .dl_logo img {
              width: auto!important;
              height: 40px!important;
              margin: 16px 0 0 30px!important;
            }
    </style> 
</head>
<body>

   <div class="dl_header_border"> 
    <div class="dl_header clearfix"> 
     <div class="dl_logo"> 
      <img id="logoImg" class="header-logo-img" src="images/104003_medias_20141215_20141215logo.jpg?v=635542641034400000" style="width: 300px;height:80px;display: none;" /> 
     </div> 
     <div class="dl_rightit"> 
      <div class="isApplyDetail" style="display:none"> 
       <div class="isLogin" style="display:none"> 
        <span id="topUserEmail" class="pad3" title=""><span class="userShortName"></span>，欢迎您！</span> 
        <span class="pad3"><a href="index.html">招聘首页</a></span> 
        <em class="dl_header_line dl_padtb05">|</em> 
        <span class="isUserCenter" style="display:none"> <span class="pad3"><a href="member_apply.html">个人中心</a></span> <em class="dl_header_line dl_padtb05">|</em> </span> 
        <span class="pad3"><a href="/Portal/Account/Logout">退出</a></span> 
       </div> 
       <div class="unLogin" style="display:none"> 
        <span class="pad3"><a href="index.html">招聘首页</a></span> 
        <em class="dl_header_line dl_padtb05">|</em> 
        <span class="pad3"><a href="/Portal/Account/Login">登录</a></span> 
        <em class="dl_header_line dl_padtb05">|</em> 
        <span class="pad3"><a href="/Portal/Account/Register">注册</a></span> 
       </div> 
      </div> 
     </div> 
    </div> 
   </div> 

    <!----> 
    <!--申请职位 s--> 
    <!--申请职位 e--> 
    <!--我的简历 s--> 
    <!--简历内容 s--> 
    <div class="dl_content"> 
     <div class="map"> 
      <div class="dl_lit-wrap dl_padr30 width553 clearfix"> 
       <form id="registForm" method="post" action="/User/Account/Register"> 
        <input type="hidden" id="returnurl" name="returnurl" value="" /> 
        <div class="dl_loginleft dl_padr0"> 
         <h3 class="dl_tit_green" >注册</h3> 
         <ul class="dl_error_wrap15"> 
          <li class="clearfix"> 
	          <span class="dl_form_left">用户</span> 
	          <span class="dl_form_right"> 
	          	<input type="text" class="dl_textinp"  name="UserName" id="oldpass"  />
	          	<span id="oldpassTip" style="display: none; color: red;"></span>
	          </span>
          </li> 
          <li class="clearfix"> 
	          <span class="dl_form_left">密码</span>
	          <span class="dl_form_right">
	          	<input type="password" class="dl_textinp" name="Password" id="newpass"  />
	          	<span id="newpassTip" style="display: none; color: red;"></span>
	          </span>
          </li> 
          <li class="clearfix"> 
	          <span class="dl_form_left">确认密码</span> 
	          <span class="dl_form_right"> 
	          	<input class="dl_textinp" id="newpassAgain" name="confirmPasswords"  type="password"  />
	          	<span id="newpassAgainTip" style="display: none; color: red;"></span>
	          </span>
          </li> 
          <li class="clearfix">
             <span class="dl_form_left">用户类型</span>
             <select class="dl_form_right dl_textinp" id="userType">
                 <option value="1">普通用户</option>
                 <option value="2">企业用户</option>
             </select>
         </li>
         </ul>
         <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
         <script type="text/javascript">
        
         userType=$("#userType").val();
	     	$(document).ready(function() {
			
	    		var error = true;
	    		var errorpwd=true;
	    		var errornewpwd=true;
	    		$("#oldpass").blur(function() {
	
	    			var oldpass = $("#oldpass").val();
	    			if (oldpass == '') {
	    				showError('oldpass', '账号不能为空');
	    				error = true;
	    				return;
	    			} else if(oldpass.length!=6){
	                    showError('oldpass', '账号长度不等于6位');
	                    error = true;
	                    return;
	    			}else {
	    					$.ajax({
	    						type : 'post',
	    						url : 'userNameValidation',
	    						dataType : 'json',
	    						data : {
	    							'user.loginName' : oldpass
	    							
	    						},
	    						success : function(json) {
	                       			
	    							if (json == '可用') {
	    								  	error=false
	                                        $("#oldpass").css({
	                                            "border-color" : "green"
	                                        });
	                                        $("#oldpassTip").css({
	                                            "display" : "none"
	                                        });
	
	                                        return;
	                      
	    							} else {
	    								showError('oldpass', '账号已存在');
	    								error = true;
	    								return;
	    							}
	    						},
	                            error:function () {
	                                layer.close(loadLayerIdx);
	                                //出错
	                                layer.alert("系统异常", {
	                                    skin : 'layui-layer-lan' //样式类名
	                                    ,
	                                    closeBtn : 0
	                                });
	                            }
	    					})
	    					
	
	    			 	
	    			}
	
	    		});
	
	    		$("#newpass").blur(function() {
	    			var newpass = $("#newpass").val();
	    			if (newpass == '') {
	    				showError('newpass', '密码不能为空');
	    				errorpwd = true;
	    				return;
	    			}else if(newpass.length!=6){
	                    showError('newpass', '密码长度不等于6位');
	                    error = true;
	                    return;
	                } else {
	    				$("#newpass").css({
	    					"border-color" : "green"
	    				});
	    				$("#newpassTip").css({
	    					"display" : "none"
	    				});
	    				errorpwd = false;
	    				 return;
	    			}
	    		});
	
	    		$("#newpassAgain").blur(function() {
	    			var newpass = $("#newpass").val();
	    			if (newpass == '') {
	    				showError('newpass', '新密码不能为空');
	    				errornewpwd = true;
	    				return;
	    			}
	    			
	    			var newpassAgain = $("#newpassAgain").val();
	    			
	    			if (newpassAgain == '') {
	    				showError('newpassAgain', '确认新密码不能为空');
	    				errornewpwd = true;
	    				return;
	    			}else if(newpass.length!=6){
	                    showError('newpass', '密码长度不等于6位');
	                    error = true;
	                    return;
	                }
	
	    			if (newpassAgain != newpass) {
	    				showError('newpassAgain', '与输入的新密码不一致');
	    				errornewpwd = true;
	    				return;
	    			} else {
	    				$("#newpassAgain").css({
	    					"border-color" : "green"
	    				});
	    				$("#newpassAgainTip").css({
	    					"display" : "none"
	    				});
	    				if(!errorpwd){
	
	    					errornewpwd = false;
	    					return;
	    				}
	    				errornewpwd = true;
	    				return;
	
	    			}
	
	    		});
	
	    		$("#submit").click(function(event) {
	    			$("#oldpass").blur();
	    			$("#newpass").blur();
	    			$("#newpassAgain").blur();
	
	    			if (!error&&!errornewpwd&&!errorpwd) {
	    				var userPwd = $("#oldpass").val();
	    				var newUserPwd = $("#newpass").val();
	    				
	                
	    				$.ajax({
	    					type : 'post',
	    					url : 'registeredUser',
	    					dataType : 'json',
	    					data : {
	    						'user.loginName' : userPwd,
	    						'user.password':newUserPwd,
	    						'user.userType':userType
	    						
	    					},
	    					success : function(json) {
	                          
	    						if (json == '成功') {
	     								alert(json);
	    						} else {
	    							//出错  
	    							layer.alert(json.head.msg, {
	    								skin : 'layui-layer-lan' //样式类名
	    								,
	    								closeBtn : 0
	    							});
	    						}
	    					}
	    				})
	    			}
	
	    		});
	    	});
	
	    	function showError(formSpan, errorText) {
	    		$("#" + formSpan).css({
	    			"border-color" : "red"
	    		});
	    		$("#" + formSpan + "Tip").empty();
	    		$("#" + formSpan + "Tip").append(errorText);
	    		;
	    		$("#" + formSpan + "Tip").css({
	    			"display" : "inline"
	    		});
	    	}
	
	    	function showtrue(formSpan, errorText) {
	    		$("#" + formSpan).css({
	    			"border-color" : "green"
	    		});
	    		$("#" + formSpan + "Tip").empty();
	    		$("#" + formSpan + "Tip").append(errorText);
	    		;
	    		$("#" + formSpan + "Tip").css({
	    			"display" : "inline"
	    		});
	    	}
         </script> 
         <div class="next"> 
          <div class="dl_padl40">
           <a  class="dl_btn_green1" id="submit"><span>注册</span></a>
          </div> 
         </div> 
        </div> 
       </form> 
       <div class="dl_loginright width170"> 
        <div class="dl_register">
         <span class="noaccount">已有账号？</span>
         <a href="/Portal/Account/Login">点击登录</a>
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
</body>
</html>