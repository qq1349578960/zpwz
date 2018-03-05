<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
  <title>个人中心</title> 
  <script type="text/javascript">
        try {
            top.location.hostname;
            if (top.location.hostname != window.location.hostname) {
                top.location.href = window.location.href;
            }
        }
        catch (e) {
            top.location.href = window.location.href;
        }
    </script> 
  <!--通用样式Css和脚本--> 
  <script type="text/javascript">var $bs_vars={'st':'http://stnew.beisen.com/','version':'2015.09.17.001','constSite':'http://const.tms.beisen.com'};function vstr(str) {
         if (typeof ($bs_vars) == 'undefine')
             return str;
         var result = str;
         for (var v in $bs_vars) {
             var regex = new RegExp('\\$\\{' + v.toString() + '\\}|\\{' + v.toString() + '\\}', 'igm');
             result = result.replace(regex, $bs_vars[v]);
         }
         return result;
     };</script> 
  <!--引用静态文件:requirejs--> 
  <script type="text/javascript" src="js/require.js"></script> 
  <!--引用静态文件:skin_default--> 
  <link href="css/common.css" rel="stylesheet" type="text/css" />
  <link href="css/templateform.css" rel="stylesheet" type="text/css" />
  <link href="css/controls.css" rel="stylesheet" type="text/css" />
  <link href="css/default.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="js/base_new.js"></script>
  <script type="text/javascript" src="js/widgetnew.js?v=3"></script>
  <script type="text/javascript" src="js/common.js"></script>
  <script type="text/javascript" src="js/bsdialog.js"></script>
  <script type="text/javascript" src="js/common.js"></script>
  <script type="text/javascript" src="js/controls.js"></script>
  <script type="text/javascript" src="js/underscore.js"></script>
  <script type="text/javascript" src="js/school-select-v2.js?v=6"></script>
  <link href="css/school-select-v2.css" rel="stylesheet" type="text/css" /> 
  <!--引用静态文件:skin_new_css--> 
  <link href="css/main.css" rel="stylesheet" type="text/css" /> 
  <!--引用静态文件:new_dialog_js--> 
  <script type="text/javascript" src="js/dialog_js.js"></script> 
  <!--产品头部CSS和脚本--> 
  <script src="js/WdatePicker.js"></script> 
  <script type="text/javascript">
       window.PERF_START=new Date;
       function _splash(page, uid, tid, pid){
        uid =  uid || 0;  // 这里是用户ID
        tid =  tid || 0;   // 这里是租户ID
        pid =  pid || 'unknown';  // 这里是项目标识
        var now = new Date;
        var start = window.PERF_START || now;
        var diff = now - start;
        var rand = Math.round(Math.random()*1000000);
        var url= document.location.protocol+'//opsapi.beisen.com/opsapi/AddLog?appName='+pid+'&label=%5Bsplash%5D%20'+page+'&uid='+uid+'&tid='+tid+'&time='+diff+'&type=1&sid='+rand+'&step=0';
        var img = new Image;
        img.src = url;
    }
    </script> 
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
           .leftmenu ul.dl_menulist>li span{
           	  display: none;
           }
           .leftmenu ul.dl_menulist>li.selected span{
           	  display: inline;
           }
           .leftmenu ul.dl_menulist>li.selected a{
           	  display: none;
           }
           .rightcontent>ul>li{
           	  display: none;
           }
    </style> 
 </head> 
 <body> 
  <div class="bs_deliver"> 
   <div class="dl_header_border"> 
    <div class="dl_header clearfix"> 
     <div class="dl_logo"> 
      <img id="logoImg" class="header-logo-img" src="images/104003_medias_20141215_20141215logo.jpg?v=635542641034400000" style="width: 300px;height:80px;" /> 
     </div> 
     <div class="dl_rightit"> 
      <div class="isApplyDetail"> 
       <div class="isLogin"> 
        <span id="topUserEmail" class="pad3" title=""><span class="userShortName"></span>${sessionScope.userName}，欢迎您！</span> 
        <span class="pad3"><a href="<%= basePath%>index">招聘首页</a></span> 
        <em class="dl_header_line dl_padtb05">|</em> 
        <span class="pad3"><a href="<%= basePath%>logout">退出</a></span> 
       </div> 
      </div> 
     </div> 
    </div> 
   </div> 
   <div class="dl_content dl_gray_bg"> 
    <!----> 
    <!--申请职位 s--> 
    <!--申请职位 e--> 
    <!--我的简历 s--> 
    <!--简历内容 s--> 
    <div class="dl_bigwrap dl_gray_bg clearfix"> 
     <div class="leftmenu"> 
      <div class="dl_greyline_bg"> 
       <span class="dl_menutit">个人中心</span> 
      </div> 
      <ul class="dl_menulist clearfix"> 
       <li class="selected applychoose"> 
       	<a href="javascript:void(0)" class="apply">我的申请</a> 
       	<span class="dl_menuchose">我的申请</span>
       </li> 
       <li> 
       	<a href="javascript:void(0)" class="profile">我的简历</a> 
       	<span class="dl_menuchose">我的简历</span>
       </li> 
       <li> 
       	<a href="javascript:void(0)" class="shoucang">已收藏职位</a>
       	<span class="dl_menuchose">已收藏职位</span> 
       </li> 
       <!--<li>
       		<a href="/Portal/Account/EditPwd" class="changepwd">修改密码</a>
    	</li--> 
       <li> 
       	<a href="javascript:void(0)" class="accountSettings">账户设置</a> 
       	<span class="dl_menuchose">账户设置</span>
       </li> 
      </ul> 
     </div> 
     <div class="rightcontent">
      <ul>
      	<li style="display:inline;">
     	  <h3 class="dl_bigtit"><span class="dl_postit">我的申请</span> <span class="dl_mglft10">你还可以申请<span>2</span>个社招职位</span></h3> 
	      <div class="dl_mgtop20"> 
	       <div class="dl_greyline_bg"> 
	       	<span class="dl_menutit">已完成申请</span> 
	       </div> 
	      </div> 
	      <div class="dl_listposition dl_mgtop10"> 
	       <h4> <span class="position blue"><a href="detail.html?620025245">PTD 助教总监</a> </span> <span class="address">北京市</span> </h4> 
	       <ul class="detail clearfix"> 
	        <li>职位编号：A620025245</li> 
	        <li>截止日期：- - -</li> 
	        <li>职位状态：正常</li> 
	        <li class="testResult result" id="110783809" jobid="620016222" personid="622717076"> <a href="/Portal/Apply/ApplyDetail?jId=620025245&amp;applyId=110621433" target="_blank" class="dl_mglft10">查看申请</a> <a href="/Portal/Apply/ApplyDetail?jId=620025245&amp;applyId=110621433&amp;printing=true" target="_blank" class="dl_mglft10">打印&gt;&gt;</a> </li> 
	       </ul> 
	       <ul class="detail clearfix"> 
	        <li>申请日期：2015-12-15</li> 
	        <li>申请状态：处理中</li> 
	       </ul> 
	      </div> 
	      <!-- 修改校招志愿 --> 
	      <div class="tableNew" name="editform" style="display: none;"> 
	       <div style="margin-bottom: 15px;">
	        <span class="dl_postit">修改校招志愿</span>
	       </div> 
	       <div class="wish_ct"> 
	        <table class="wish_container"> 
	        </table> 
	       </div> 
	       <div class="wish_container">
	        <span name="wishError" class="new_pop_error wish_err" style="display: none;"></span>
	       </div> 
	       <div class="wish_container">
	        <span class="position dl_ft12_grey">注：请按照从第一志愿开始的顺序修改志愿，例：若只有两个志愿，那只能选择一个为第一志愿，一个为第二志愿</span>
	       </div> 
	      </div> 
	      <div class="dl_bd_btm dl_padt15"></div> 
	      <div class="dl_more blue dl_ft14">
	       <b><a href="index.html">查看更多职位&gt;&gt;</a></b>
	      </div> 
	      <input id="proId" type="hidden" /> 
      	</li>
      	<li>
      	  <h3 class="dl_bigtit"><span class="dl_postit">我的简历</span></h3> 
	      <div class="dl_importprofile"> 
	       <a class="import dl_import" href="javascript:void(0)">导入简历</a> 
	       <a id="previewBtn" class="look" target="preview" href="/Portal/Resume/PreviewResume?applyform=e725c9e8-01eb-42ca-8321-eee7569f5301" style="">预览简历</a> 
	       <span id="previewBtnDisable" class="look" style="color:#666;display:none;">预览简历</span> 
	      </div> 
	      <style type="text/css">
		    *html .dl_myleftform .form_container {
		        width: 490px;
		        overflow: hidden;
		    }
		
	        *html .dl_myleftform .form_container .form_part .columntwo ul {
	            width: 360px;
	            overflow: hidden;
	        }
	
	        *html .dl_myleftform .form_container ul li {
	            width: 360px;
	            overflow: hidden;
	        }
	            /* .dl_myleftform .form_container li label{width: 100px}*/
	            *html .dl_myleftform .form_container ul li span.preview_text {
	                width: 220px;
	                overflow: hidden;
	            }
	
		    .form_container li textarea {
		        border: 1px solid #c1d5df;
		        float: left;
		        height: 100px;
		        margin-right: 5px;
		        padding: 3px;
		        width: 300px;
		    }
		  </style> 
	      <div class="dl_basicinfo"> 
	       <div class="dl_greyline_bg">
	        <span class="dl_menutit ">个人信息</span>
	       </div> 
	       <div class="dl_basicborder mainContainer "> 
	        <form method="post" id="cd7c7714-b39a-43a0-9c7e-f7382f04f5cd" name="cd7c7714-b39a-43a0-9c7e-f7382f04f5cd" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem"> 
	         <div class="clearfix"> 
	          <div id="resumeitems" name="singleedit" class="dl_myleftform" style="display:none;;"> 
	           <input type="hidden" name="oId" id="Hidden1" value="a4fc2e74-0cd1-4163-a4a1-57112d95fcfc" /> 
	           <input type="hidden" name="jId" id="Hidden4" value="-1" /> 
	           <input type="hidden" name="mId" id="Hidden5" value="0" /> 
	           <input name="_objectDataID" type="hidden" value="NDc0NjFhMzktMTg2My00YzM3LTlmOTgtY2ZkN2UyOTFlNmQ0JGE0ZmMyZTc0LTBjZDEtNDE2My1hNGExLTU3MTEyZDk1ZmNmYw==" />
	           <input name="_metaObjID" type="hidden" value="NDc0NjFhMzktMTg2My00YzM3LTlmOTgtY2ZkN2UyOTFlNmQ0" />
	           <input name="_viewName" type="hidden" value="UGVyc29uUHJvZmlsZVZpZXc=" />
	           <input name="_version" type="hidden" value="MjAxMzA3MDQwNDQ4NDUzNzIx" />
	           <input name="_formIndex" type="hidden" value="1" />
	           <div class="form_container" id="RecruitmentPortal.PersonProfile"> 
	            <h2 class="form_title"> <strong>个人信息</strong> <span class="tab"></span> </h2> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label class="current label_required">姓名：</label> <input class="{required:true,messages:&quot;请填写姓名&quot;} mul_input" name="RecruitmentPortalPersonProfile_Name" id="4c037148-140a-4c2b-b87a-b97609215d7011" value="zhange" /> <span class="nameDesc"></span> </li> 
	               <li><label class="current label_required">邮箱：</label> <input class="{required:true,messages:&quot;请填写邮箱&quot;} mul_input" name="RecruitmentPortalPersonProfile_email" id="67a5c587-4f90-4ae7-819f-eb3dba9ea39911" value="416148489@qq.com" /> <span class="mailDesc"></span> </li> 
	               <li><label class="current label_required">手机号：</label> <input class="{required:true,messages:'请填写手机号'} mul_input " name="RecruitmentPortalPersonProfile_Mobile" id="acb9b67f-9643-41fb-a7fe-5ff8d742ccdf11" value="13851435593" /> <span class="phoneDesc"></span> </li> 
	               <li><label>出生日期：</label> <input class="mul_input Wdate" name="RecruitmentPortalPersonProfile_Birthday" id="436ab7a4-67a1-4819-a238-d5d34eb0717611" value="2003/12/15" /> <span class="desc birthDesc">格式：2017-12-21</span> </li> 
	               <li><label>性别：</label> 
	                <div class="radio_list"> 
	                 <label class="radio_label"><input type="radio" name="RecruitmentPortalPersonProfile_gender" value="0" checked="checked" /> 男</label> 
	                 <label class="radio_label"><input type="radio" name="RecruitmentPortalPersonProfile_gender" value="1" /> 女</label> 
	                </div> 
	               </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columntwo"> 
	              <ul> 
	               <li><label>最高学历：</label> <select name="RecruitmentPortalPersonProfile_EducationLevel" id="RecruitmentPortalPersonProfile_EducationLevel" class="mul_select"> <option value="">请选择</option> <option value="1">高中及以下</option> <option value="2">中技（中专/技校/职高）</option> <option value="3">大专</option> <option value="4">本科</option> <option value="5">硕士研究生</option> <option value="6">MBA</option> <option value="7">博士研究生</option> </select> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>民族：</label> <select name="RecruitmentPortalPersonProfile_Nation" id="RecruitmentPortalPersonProfile_Nation" class="mul_select"> <option value="">请选择</option> <option value="1">汉族</option> <option value="2">回族</option> <option value="3">畲族</option> <option value="4">塔塔尔族</option> <option value="5">阿昌族</option> <option value="6">哈萨克族</option> <option value="7">土家族</option> <option value="8">景颇族</option> <option value="9">哈尼族</option> <option value="10">土族</option> <option value="11">白族</option> <option value="12">维吾尔族</option> <option value="13">保安族</option> <option value="14">赫哲族</option> <option value="15">乌孜别克族</option> <option value="16">基诺族</option> <option value="17">布依族</option> <option value="18">拉祜族</option> <option value="19">锡伯族</option> <option value="20">黎族</option> <option value="21">东乡族</option> <option value="22">蒙古族</option> <option value="23">仫佬族</option> <option value="24">达斡尔族</option> <option value="25">藏族</option> <option value="26">毛南族</option> <option value="27">裕固族</option> <option value="28">俄罗斯族</option> <option value="29">德昂族</option> <option value="30">僳僳族</option> <option value="31">瑶族</option> <option value="32">朝鲜族</option> <option value="33">布朗族</option> <option value="34">满族</option> <option value="35">彝族</option> <option value="36">门巴族</option> <option value="37">侗族</option> <option value="38">苗族</option> <option value="39">佤族</option> <option value="40">羌族</option> <option value="41">独龙族</option> <option value="42">怒族</option> <option value="43">珞巴族</option> <option value="44">普米族</option> <option value="45">傣族</option> <option value="46">纳西族</option> <option value="47">高山族</option> <option value="48">壮族</option> <option value="49">额伦春族</option> <option value="50">塔吉克族</option> <option value="51">京族</option> <option value="52">仡佬族</option> <option value="53">鄂温克族</option> <option value="54">撒拉族</option> <option value="55">柯尔克孜族</option> <option value="56">水族</option> <option value="57">其它</option> </select> </li> 
	               <li><label>证件照：</label> <input type="hidden" name="RecruitmentPortalPersonProfile_IDPhoto" id="c71310e0-0bef-4173-9826-21a572d4943d11" value="" /> <span><a class="uploadfile" id="c71310e0-0bef-4173-9826-21a572d4943d11_btn">上传</a></span> <span class="desc uploaddesc">推荐1寸照片尺寸，70x100象素。支持jpg，jpeg, gif，bmp或png格式，大小不超过512k</span>
	                <ul id="c71310e0-0bef-4173-9826-21a572d4943d11_info" class="uploadfilescontainer" style="margin-left:70px;"> 
	                </ul> </li> 
	               <li><label>自我评价：</label> <textarea class="textarea mul_textarea" name="RecruitmentPortalPersonProfile_evaluation" id="628bbf58-340a-42d3-bb4d-9e892582841211"></textarea> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	           </div> 
	          </div> 
	          <div name="singleview" class="dl_myleftform" id="showitems"> 
	           <div class="form_container" id="RecruitmentPortal.PersonProfile"> 
	            <h2 class="form_title"> <strong>个人信息</strong> <span class="tab"></span> </h2> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>姓名：</label> <span class="preview_text">zhange</span> </li> 
	               <li><label>邮箱：</label> <span class="preview_text">416148489@qq.com</span> </li> 
	               <li><label>手机号：</label> <span class="preview_text">13851435593</span> </li> 
	               <li><label>出生日期：</label> <span class="preview_text"> 2003年12月15日 </span> </li> 
	               <li><label>性别：</label> <span name="RecruitmentPortalPersonProfile_gender_span" class="preview_text"> 男</span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columntwo"> 
	              <ul> 
	               <li><label>最高学历：</label> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>民族：</label> </li> 
	               <li><label>证件照：</label> <a href="about.html"></a> </li> 
	               <li><label>自我评价：</label> <span class="preview_text"></span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	           </div> 
	          </div> 
	          <div class="dl_myrightfile"> 
	           <div style="width: 118px; margin-left: 12px"> 
	            <a name="btnSingleSave" href="#this" class="dl_btn_grey3" style="display:none;"> <span>保存</span> </a> 
	            <a name="btnSingleCancel" href="#this" class="dl_btn_grey3" style="display:none;float: right;"> <span>取消</span> </a> 
	            <a name="btnSingleEdit" href="javascript:void(0)" class="dl_mglft10" style="float: right; padding-bottom: 10px;">编辑</a> 
	           </div> 
	           <img id="idPhoto" style="width: 120px; height: 140px; padding-top: 10px; display: none;" src="images/upfile.jpg" /> 
	           <br /> 
	           <a class="blue" id="idPhotoUploadBtn" href="javascript:void(0)" style="display:none;">上传照片</a> 
	           <ul id="idPhotoerrinfo" class="warninfo" style="color: #f17f7f; font-size: 12px;"> 
	           </ul> 
	           <ul id="idPhotowarninfo" class="warninfo" style="display:none;"> 
	           </ul> 
	          </div> 
	         </div> 
	        </form> 
	        <input type="hidden" class="viewName" value="201307040448453721" /> 
	       </div> 
	      </div> 
	      <style type="text/css">
		    *html .dl_myleftform .form_container {
		        width: 490px;
		        overflow: hidden;
		    }
	
	        *html .dl_myleftform .form_container .form_part .columntwo ul {
	            width: 360px;
	            overflow: hidden;
	        }
	
	        *html .dl_myleftform .form_container ul li {
	            width: 360px;
	            overflow: hidden;
	        }
            *html .dl_myleftform .form_container ul li span.preview_text {
                width: 220px;
                overflow: hidden;
            }
	
		    .form_container li textarea {
		        border: 1px solid #c1d5df;
		        float: left;
		        height: 100px;
		        margin-right: 5px;
		        padding: 3px;
		        width: 300px;
		    }
		  </style> 
	      <div class="dl_basicinfo"> 
	       <div class="dl_greyline_bg">
	        <span class="dl_menutit ">求职意向</span>
	       </div> 
	       <div class="dl_basicborder mainContainer "> 
	        <form method="post" id="fdfa1ef1-0a89-4bf9-8500-674c5e233e3f" name="fdfa1ef1-0a89-4bf9-8500-674c5e233e3f" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem"> 
	         <div class="clearfix"> 
	          <div id="resumeitems" name="singleedit" class="dl_myleftform" style="display:none;;"> 
	           <input type="hidden" name="oId" id="Hidden1" value="f09d29a6-3c52-4237-bcd5-ecaddf83c9de" /> 
	           <input type="hidden" name="jId" id="Hidden4" value="-1" /> 
	           <input type="hidden" name="mId" id="Hidden5" value="1" /> 
	           <input name="_objectDataID" type="hidden" value="OGJjNjNiM2UtZDYzZC00MTZiLThjMWYtOTkwNzIyODJlZTNmJGYwOWQyOWE2LTNjNTItNDIzNy1iY2Q1LWVjYWRkZjgzYzlkZQ==" />
	           <input name="_metaObjID" type="hidden" value="OGJjNjNiM2UtZDYzZC00MTZiLThjMWYtOTkwNzIyODJlZTNm" />
	           <input name="_viewName" type="hidden" value="T2JqZWN0aXZlVmlldw==" />
	           <input name="_version" type="hidden" value="MjAxMzA3MDQwNDQ4NDU2MDkx" />
	           <input name="_formIndex" type="hidden" value="11" />
	           <div class="form_container" id="RecruitmentPortal.Objective"> 
	            <h2 class="form_title"> <strong>求职意向</strong> <span class="tab"></span> </h2> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>现从事职业：</label> <input type="text" readonly="true" displayname="现从事职业" constname="JobCategory" value="" class="Ajson ConstDictSingleSelect" id="RecruitmentPortalObjective_CurrJobCategory_Id" /> <input type="hidden" value="" name="RecruitmentPortalObjective_CurrJobCategory" id="RecruitmentPortalObjective_CurrJobCategory" class="ResidenceState" /> </li> 
	               <li><label>求职状态：</label> <select name="RecruitmentPortalObjective_WorkState" id="RecruitmentPortalObjective_WorkState" class="mul_select"> <option value="">请选择</option> <option value="1">正在主动找工作</option> <option value="2">可以考虑更好的工作机会</option> <option value="3">目前不想找工作</option> </select> </li> 
	               <li><label>期望从事职业：</label> <input type="text" readonly="true" displayname="期望从事职业" constname="JobCategory" value="美术&middot;设计&middot;创意类" class="Ajson ConstDictSingleSelect" id="RecruitmentPortalObjective_ExpectJobCategory_Id" /> <input type="hidden" value="158" name="RecruitmentPortalObjective_ExpectJobCategory" id="RecruitmentPortalObjective_ExpectJobCategory" class="ResidenceState" /> </li> 
	               <li><label>现月薪(税前)：</label> <select name="RecruitmentPortalObjective_CurrSalary" id="RecruitmentPortalObjective_CurrSalary" class="mul_select"> <option value="">请选择</option> <option value="1">1000以下</option> <option value="2">1000～2000</option> <option value="3">2001～4000</option> <option value="4">4001～6000</option> <option value="5">6001～8000</option> <option value="6">8001～10000</option> <option value="7">10001～15000</option> <option value="8">15001～25000</option> <option value="9">25000以上</option> <option value="10">面议</option> </select> </li> 
	               <li><label>期望月薪(税前)：</label> <select name="RecruitmentPortalObjective_ExpectSalary" id="RecruitmentPortalObjective_ExpectSalary" class="mul_select"> <option value="">请选择</option> <option value="1">1000以下</option> <option value="2">1000～2000</option> <option value="3">2001～4000</option> <option value="4">4001～6000</option> <option value="5">6001～8000</option> <option value="6">8001～10000</option> <option value="7">10001～15000</option> <option value="8">15001～25000</option> <option value="9">25000以上</option> <option value="10">面议</option> </select> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	           </div> 
	          </div> 
	          <div name="singleview" class="dl_myleftform" style=""> 
	           <div class="form_container" id="RecruitmentPortal.Objective"> 
	            <h2 class="form_title"> <strong>求职意向</strong> <span class="tab"></span> </h2> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>现从事职业：</label> <span class="preview_text"></span> </li> 
	               <li><label>求职状态：</label> </li> 
	               <li><label>期望从事职业：</label> <span class="preview_text">美术&middot;设计&middot;创意类</span> </li> 
	               <li><label>现月薪(税前)：</label> </li> 
	               <li><label>期望月薪(税前)：</label> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	           </div> 
	          </div> 
	          <div class="dl_myrightfile"> 
	           <div style="width: 118px; margin-left: 12px"> 
	            <a name="btnSingleSave" href="#this" class="dl_btn_grey3" style="display:none;"> <span>保存</span> </a> 
	            <a name="btnSingleCancel" href="#this" class="dl_btn_grey3" style="display:none;float: right;"> <span>取消</span> </a> 
	            <a name="btnSingleEdit" href="javascript:void(0)" class="dl_mglft10" style="float: right; padding-bottom: 10px;">编辑</a> 
	           </div> 
	          </div> 
	         </div> 
	        </form> 
	        <input type="hidden" class="viewName" value="201307040448456091" /> 
	       </div> 
	      </div> 
	      <div class="dl_educationwrap mainContainer" style="padding: 0px 20px;"> 
	       <div class="dl_greyline_bg"> 
	        <span class="dl_menutit">教育背景</span> 
	       </div> 
	       <div class="dl_basicborder" style="display: none;"> 
	        <form method="post" id="emptyFrom_7" name="emptyFrom_7" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem" style="display: none;"> 
	         <div class="eduhistory_drmmbnew pos_realitive"> 
	          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 660px;">
	           <a name="delItem" href="javascript:void(0)">删除</a> 
	           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a>
	          </div> 
	          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
	           <input type="hidden" name="oId" id="oId" value="" /> 
	           <input type="hidden" name="jId" id="jId" value="-1" /> 
	           <input type="hidden" name="mId" id="mId" value="7" /> 
	           <div class="form_container" id="RecruitmentPortal.Education"> 
	            <h2 class="form_title"> <strong>教育背景</strong> <span class="tab"></span> </h2> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>学校名称：</label> <span class="preview_text"></span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li> <label> 时间：</label> <span class="preview_text start_date"> </span> <span class="preview_text end_date"> </span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>学历：</label> </li> 
	               <li><label>学位：</label> </li> 
	               <li><label>专业名称：</label> <span class="preview_text"></span> </li> 
	               <li><label>专业描述：</label> <span class="preview_text"></span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	           </div> 
	          </div> 
	         </div> 
	         <div class="dl_borderdashed"></div> 
	        </form> 
	       </div> 
	       <div class="dl_basicborder"> 
	        <form method="post" id="10655b54-ca89-4bd0-a9a9-b65600e0174a" name="10655b54-ca89-4bd0-a9a9-b65600e0174a" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem"> 
	         <div class="eduhistory_drmmbnew pos_realitive"> 
	          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 150px;"> 
	           <a name="delItem" href="javascript:void(0)">删除</a> 
	           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a> 
	          </div> 
	          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
	           <input type="hidden" name="oId" id="Hidden7" value="39cc3186-545a-4cc9-8b9e-74c80a398ad8" /> 
	           <input type="hidden" name="jId" id="Hidden8" value="-1" /> 
	           <input type="hidden" name="mId" id="Hidden9" value="7" /> 
	           <div class="form_container" id="RecruitmentPortal.Education"> 
	            <h2 class="form_title"> <strong>教育背景</strong> <span class="tab"></span> </h2> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>学校名称：</label> <span class="preview_text">中国人民大学</span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li> <label> 时间：</label> <span class="preview_text start_date"> 1973年07月至</span> <span class="preview_text end_date"> 今 </span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>学历：</label> <span class="preview_text">硕士研究生</span> </li> 
	               <li><label>学位：</label> <span class="preview_text">MBA</span> </li> 
	               <li><label>专业名称：</label> <span class="preview_text">qqqq</span> </li> 
	               <li><label>专业描述：</label> <span class="preview_text"></span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	           </div> 
	          </div> 
	         </div> 
	         <div class="dl_borderdashed"></div> 
	        </form> 
	       </div> 
	       <div class="dl_basicborder"> 
	        <form method="post" id="fa8a475a-1e60-4402-bc67-15bd75bcde7f" name="fa8a475a-1e60-4402-bc67-15bd75bcde7f" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem"> 
	         <div class="eduhistory_drmmbnew pos_realitive"> 
	          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 150px;"> 
	           <a name="delItem" href="javascript:void(0)">删除</a> 
	           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a> 
	          </div> 
	          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
	           <input type="hidden" name="oId" id="Hidden7" value="fa3b9143-da17-4a66-9c22-69b6702cc1d0" /> 
	           <input type="hidden" name="jId" id="Hidden8" value="-1" /> 
	           <input type="hidden" name="mId" id="Hidden9" value="7" /> 
	           <div class="form_container" id="RecruitmentPortal.Education"> 
	            <h2 class="form_title"> <strong>教育背景</strong> <span class="tab"></span> </h2> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>学校名称：</label> <span class="preview_text">北京化工大学</span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li> <label> 时间：</label> <span class="preview_text start_date"> 1972年05月至</span> <span class="preview_text end_date"> 今 </span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>学历：</label> <span class="preview_text">硕士研究生</span> </li> 
	               <li><label>学位：</label> <span class="preview_text">学士</span> </li> 
	               <li><label>专业名称：</label> <span class="preview_text">qqq</span> </li> 
	               <li><label>专业描述：</label> <span class="preview_text"></span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	           </div> 
	          </div> 
	         </div> 
	         <div class="dl_borderdashed"></div> 
	        </form> 
	       </div> 
	       <input type="hidden" class="viewName" value="201307040448456411" /> 
	       <div class="dl_mgtop10"> 
	        <a name="addItem" href="#this" class="dl_add_ico blue">继续添加</a> 
	       </div> 
	      </div> 
	      <div class="dl_educationwrap mainContainer" style="padding: 0px 20px;"> 
	       <div class="dl_greyline_bg"> 
	        <span class="dl_menutit">工作经验</span> 
	       </div> 
	       <div class="dl_basicborder" style="display: none;"> 
	        <form method="post" id="emptyFrom_6" name="emptyFrom_6" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem" style="display: none;"> 
	         <div class="eduhistory_drmmbnew pos_realitive"> 
	          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 660px;">
	           <a name="delItem" href="javascript:void(0)">删除</a> 
	           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a>
	          </div> 
	          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
	           <input type="hidden" name="oId" id="oId" value="" /> 
	           <input type="hidden" name="jId" id="jId" value="-1" /> 
	           <input type="hidden" name="mId" id="mId" value="6" /> 
	           <div class="form_container" id="RecruitmentPortal.Experience"> 
	            <h2 class="form_title"> <strong>工作经验</strong> <span class="tab"></span> </h2> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>单位名称：</label> <span class="preview_text"></span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li> <label> 工作时间：</label> <span class="preview_text start_date"> </span> <span class="preview_text end_date"> </span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>职位名称：</label> <span class="preview_text"></span> </li> 
	               <li><label>工作地点：</label> <span class="preview_text"></span> </li> 
	               <li><label>工作职责：</label> <span class="preview_text"></span> </li> 
	               <li><label>部门：</label> <span class="preview_text"></span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	           </div> 
	          </div> 
	         </div> 
	         <div class="dl_borderdashed"></div> 
	        </form> 
	       </div> 
	       <div class="dl_basicborder"> 
	        <form method="post" id="1015a315-3343-4c51-9d11-3c90e10bc8b8" name="1015a315-3343-4c51-9d11-3c90e10bc8b8" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem"> 
	         <div class="eduhistory_drmmbnew pos_realitive"> 
	          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 150px;"> 
	           <a name="delItem" href="javascript:void(0)">删除</a> 
	           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a> 
	          </div> 
	          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
	           <input type="hidden" name="oId" id="Hidden7" value="30d193ad-9915-4786-8d84-8191f9bc6c89" /> 
	           <input type="hidden" name="jId" id="Hidden8" value="-1" /> 
	           <input type="hidden" name="mId" id="Hidden9" value="6" /> 
	           <div class="form_container" id="RecruitmentPortal.Experience"> 
	            <h2 class="form_title"> <strong>工作经验</strong> <span class="tab"></span> </h2> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>单位名称：</label> <span class="preview_text">qqq</span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li> <label> 工作时间：</label> <span class="preview_text start_date"> 1972年03月至</span> <span class="preview_text end_date"> 今 </span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>职位名称：</label> <span class="preview_text">wqwq</span> </li> 
	               <li><label>工作地点：</label> <span class="preview_text"></span> </li> 
	               <li><label>工作职责：</label> <span class="preview_text">wqqqqqq</span> </li> 
	               <li><label>部门：</label> <span class="preview_text"></span> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	           </div> 
	          </div> 
	         </div> 
	         <div class="dl_borderdashed"></div> 
	        </form> 
	       </div> 
	       <input type="hidden" class="viewName" value="201307040448456801" /> 
	       <div class="dl_mgtop10"> 
	        <a name="addItem" href="#this" class="dl_add_ico blue">继续添加</a> 
	       </div> 
	      </div> 
	      <div class="dl_educationwrap mainContainer" style="padding: 0px 20px;"> 
	       <div class="dl_greyline_bg"> 
	        <span class="dl_menutit">语言能力</span> 
	       </div> 
	       <div class="dl_basicborder" style="display: none;"> 
	        <form method="post" id="emptyFrom_4" name="emptyFrom_4" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem" style="display: none;"> 
	         <div class="eduhistory_drmmbnew pos_realitive"> 
	          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 660px;">
	           <a name="delItem" href="javascript:void(0)">删除</a> 
	           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a>
	          </div> 
	          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
	           <input type="hidden" name="oId" id="oId" value="" /> 
	           <input type="hidden" name="jId" id="jId" value="-1" /> 
	           <input type="hidden" name="mId" id="mId" value="4" /> 
	           <input name="_metaObjID" type="hidden" value="NTkwNGU4NWQtNTllNi00ZmY0LWI3MmMtNzYyMjZlYzc3ZjBm" />
	           <input name="_viewName" type="hidden" value="TGFuZ1ZpZXc=" />
	           <input name="_version" type="hidden" value="MjAxMzA3MDQwNDQ4NDU3MTIx" />
	           <input name="_formIndex" type="hidden" value="41011" />
	           <div class="form_container" id="RecruitmentPortal.Lang"> 
	            <h2 class="form_title"> <strong>语言能力</strong> <span class="tab"></span> </h2> 
	            <div class="form_part"> 
	             <div class="form_part_container columnone"> 
	              <ul> 
	               <li><label>语言类型：</label> <select name="RecruitmentPortalLang_LanguageType" id="RecruitmentPortalLang_LanguageType" class="dropdownlist mul_select"> <option value="">请选择</option> <option value="0" title="英语">英语</option> <option value="1" title="日语">日语</option> <option value="2" title="韩语">韩语</option> <option value="3" title="法语">法语</option> <option value="4" title="德语">德语</option> <option value="5" title="西班牙语">西班牙语</option> <option value="6" title="意大利语">意大利语</option> <option value="7" title="阿拉伯语">阿拉伯语</option> <option value="8" title="俄语">俄语</option> <option value="9" title="其他">其他</option> </select> </li> 
	               <li><label>掌握程度：</label> <select name="RecruitmentPortalLang_LanguageLevel" id="RecruitmentPortalLang_LanguageLevel" class="dropdownlist mul_select"> <option value="">请选择</option> <option value="1" title="入门">入门</option> <option value="2" title="熟练">熟练</option> <option value="3" title="精通">精通</option> <option value="4" title="母语">母语</option> </select> </li> 
	              </ul> 
	             </div> 
	             <div class="clear"></div> 
	            </div> 
	           </div> 
	          </div> 
	         </div> 
	         <div class="dl_borderdashed"></div> 
	        </form> 
	       </div> 
	       <input type="hidden" class="viewName" value="201307040448457121" /> 
	       <div class="dl_mgtop10"> 
	        <a name="addItem" href="#this" class="dl_add_ico blue">继续添加</a> 
	       </div> 
	      </div> 
      	</li>
      	<li>
      	  <h3 class="dl_bigtit"><span class="dl_postit">已收藏职位</span></h3> 
	      <!--有数据时--> 
	      <div class="dl_listposition dl_mgtop10"> 
	       <h4> <span class=" floatright dl_ft14_grey">未申请</span> <span class="position blue"><a href="detail.html?620025249">学术总监</a> </span> <span class="address">北京市</span> </h4> 
	       <ul class="detail clearfix"> 
	        <li>职位编号：A620025249</li> 
	        <li>截止日期：- - -</li> 
	        <li>职位状态：正常</li> 
	        <li class="dl_textright"><a href="javascript:void(0)" newid="110020233" class="delete">删除</a> <a href="###" url="/Portal/Resume/ResumeItem?jId=620025249&amp;pId=1" isallowreapply="True" isapplied="False" class=" dl_mglft10 dl_ft12_grey apply">申请&gt;&gt;</a></li> 
	       </ul> 
	       <div class="dl_bd_btm dl_padt15"></div> 
	      </div> 
	      <!--e有数据结束--> 
	      <!--s无数据--> 
	      <div class="dl_more blue dl_ft14">
	       <b><a href="<%=basePath%>">查看更多职位&gt;&gt;</a></b>
	      </div> 
	      <input id="proId" type="hidden" />
      	</li>
      	<li>
      	  <h3 class="dl_bigtit"> <span class="dl_postit">账户设置</span> </h3> 
	      <div class="account-settings"> 
	       <div class="area"> 
	        <div class="area-title"> 
	         <div class="label">
	          账户信息
	         </div> 
	        </div> 
	        <div class="base-info"></div> 
	       </div> 
	       <div class="area wechart"> 
	        <div class="area-title"> 
	         <div class="label">
	          微信绑定
	         </div> 
	        </div> 
	        <div class="we-chat-bind"></div> 
	       </div> 
	       <script type="text/javascript"> //判断是否显示微信，为了使页面不闪动，放到dom加载完成的后面接着执行代码
	                      ("False".toLowerCase() == "true" ? true : false) ? null : $(".wechart.area").css('display', 'none');
	                  </script> 
	      </div>
      	</li>
      </ul>
       
     </div> 
    </div> 
    <!--简历内容 e--> 
   </div> 
   <div class="dl_footer"> 
    <p>&copy;2015&nbsp;北京大生知行科技有限公司51talk&nbsp;&nbsp;京ICP备05051632号 京公网安备110108002767号 &nbsp;&nbsp;帮助热线：4006506886</p> 
   </div> 
  </div>  
  <script language="javascript" type="text/javascript">
  		var leftMenus = $('.leftmenu ul.dl_menulist li');
  		var conts = $('.rightcontent>ul>li');
  		
  		leftMenus.click(function(){
 			var _this = $(this).index();
  			leftMenus.each(function(index){
  				var currMenu = leftMenus.eq(index);
  				if(currMenu.hasClass("selected")){
  					currMenu.find('span').css("display","none");
  					currMenu.find('a').css("display","inline");
  					currMenu.removeClass("selected");
  					
  					$('.rightcontent>ul>li').eq(index).css("display","none");
  				}
  				if(index ==0 ){
  					currMenu.removeClass("applychoose");
  				}else if(index ==1 ){
  					currMenu.removeClass("profilechoose");
  				}else if(index ==2 ){
  					currMenu.removeClass("shoucangchoose");
  				}else if(index ==3 ){
  					currMenu.removeClass("settingchoose");
  				}
  			});
  			
  			leftMenus.eq(_this).find('a').css("display","none");
  			leftMenus.eq(_this).find('span').css("display","inline");
  			leftMenus.eq(_this).addClass("selected");
  			$('.rightcontent>ul>li').eq(_this).css("display","inline");
  			
  			if(_this ==0 ){
  				leftMenus.eq(_this).addClass("applychoose");
  			}else if(_this ==1 ){
  				leftMenus.eq(_this).addClass("profilechoose");
  			}else if(_this ==2 ){
  				leftMenus.eq(_this).addClass("shoucangchoose");
  			}else if(_this ==3 ){
  				leftMenus.eq(_this).addClass("settingchoose");
  			}
  		});
  		
  		//编辑
  		var editBt = $('.dl_myrightfile a');
  		editBt.click(function(){
  			var _this = $(this).index();
  			//编辑
  			if(_this == 2){
  				$('#resumeitems').css("display","block");
  				$('#showitems').css("display","none");
  				$(this).css("display","none");
  				editBt.eq(0).css("display","");
  				editBt.eq(1).css("display","");
  			}
  			
  			//取消
  			if(_this == 1){
  				$('#resumeitems').css("display","none");
  				$('#showitems').css("display","block");
  				$(this).css("display","none");
  				editBt.eq(0).css("display","none");
  				editBt.eq(2).css("display","inline-block");
  			}
  			
  			//保存
  			if(_this == 0){
  				var name = $('#4c037148-140a-4c2b-b87a-b97609215d7011').val();
  				var mail = $('#67a5c587-4f90-4ae7-819f-eb3dba9ea39911').val();
  				var phone = $('#acb9b67f-9643-41fb-a7fe-5ff8d742ccdf11').val();
  				var birthday = $('#436ab7a4-67a1-4819-a238-d5d34eb0717611').val();
  				var edu = $('#RecruitmentPortalPersonProfile_EducationLevel option').eq($('#RecruitmentPortalPersonProfile_EducationLevel').val()).text();
  				var national = $('#RecruitmentPortalPersonProfile_Nation option').eq($('#RecruitmentPortalPersonProfile_Nation').val()).text();
  				var selfEval = $('#628bbf58-340a-42d3-bb4d-9e892582841211').val();
  				var sexInput = $('.radio_label input');
  				var sex;
  				sexInput.each(function(index){
  					if(sexInput.eq(index).attr("checked")){
  						sex = sexInput.eq(index).val();
  					}
  				});
  				
  				if(/^\s*$/.test(name)){
  					$('.nameDesc').text("姓名不能为空");
  					$('.nameDesc').css("color","red");
  					return;
  				}
  				if(/^\s*$/.test(mail)){
  					$('.mailDesc').text("邮箱不能为空");
  					$('.mailDesc').css("color","red");
  					return;
  				}
  				if(/^\s*$/.test(mail)){
  					$('.phoneDesc').text("手机号不能为空");
  					$('.phoneDesc').css("color","red");
  					return;
  				}
  				
  				if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/.test(mail)){
  					$('.mailDesc').text("邮箱格式不正确");
  					$('.mailDesc').css("color","red");
  					return;
  				}
  				
  				if(/^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$/.test(phone)){
  					$('.phoneDesc').text("手机号格式不正确");
  					$('.phoneDesc').css("color","red");
  					return;
  				}
  				
  				var birthFlag =false;
  				if(!/^\s*$/.test(birthday)){
  					if(-1 != birthday.indexOf('-')){
  						var date = birthday.split('-');
  						if(date.length != 3){
  							$('.birthDesc').text("格式不正确");
  							$('.birthDesc').css("color","red");
  							return;
  						}
  						var year = parseInt(date[0]);
  						var month = parseInt(date[1]);
  						var day = parseInt(date[2]);
  						if(!year || !month || !day){
  							$('.birthDesc').text("格式不正确");
  							$('.birthDesc').css("color","red");
  							return;
  						}
  						
  						if(year>new Date().getFullYear() || month<1 || month>12 || day<0 || day>31){
  							$('.birthDesc').text("格式不正确");
  							$('.birthDesc').css("color","red");
  							return;
  						}
  						birthFlag = true;
  					}else{
  						$('.birthDesc').text("格式不正确");
						$('.birthDesc').css("color","red");
						return;
  					}
  				}
  				
  				var params={};
  				params['resume.name'] = name;
  				params['resume.mail'] = mail;
  				params['resume.phone'] = phone;
  				params['resume.sex'] = sex;
  				if(birthFlag){
  					params['resume.birthday'] = new Date(birthday);
  				}
  				if(edu != '请选择'){
  					params['resume.edu'] = edu;
  				}
  				if(national != '请选择'){
  					params['resume.national'] = national;
  				}
  				if(!/^\s*$/.test(selfEval)){
  					params['resume.selfEval'] = selfEval;
  				}
  				
  				console.log(params)
  				$.ajax({
  					url:"<%=basePath%>saveSelfInfo",
  					method:"post",
  					data:params,
  					success:function(data){
  						console.log(data)
  					},
  					error:function(err){
						alert(err)  						
  					}
  					
  				});
  			}
  		});
  		
  		$('.mul_input').focus(function(){
  			$('.mul_input').next().text("");
			$('#436ab7a4-67a1-4819-a238-d5d34eb0717611').next().text("格式：2017-12-21");
			$('#436ab7a4-67a1-4819-a238-d5d34eb0717611').next().css("color","#999");
  		});
  		
         $(function () {
             var html = ['<div class="dl_dialog1">',
                                 '	<div class="dl_dialog_wrap">',
                                 '       <div class="dl_dialog_icoqa"><span>请确认是否删除收藏的职位</span></div>',
                                 '	<div class="dl_dialog_btn">',
                                 ' <a href="javascript:void(0);" class="dl_btn_grey1" id="btnSure"><span>确定</span></a>',
                                 '	<a href="javascript:void(0);" class="dl_btn_grey1 dl_mglft10 simplemodal-close"  id="btnClse"><span>取消</span></a>',
                                 '		<div>',
                                 '	</div>',
                                 '</div>'].join("");
             $(".delete").click(function () {
                 $("#proId").val($(this).attr("newId"));
                 $.modal(html, {
                     containerCss: {
                         backgroundColor: "transparent",
                         borderColor: "transparent",
                         padding: 0
                     }
                 });
             });
         });
         $("#btnSure").live("click", function () {
             var id = $("#proId").val();
             ; $.post("DeleteJobCollect", { "id": id }, function (data) {
                 if (data) {
                     window.location.reload();
                 }
             }, "json");
             //window.location.reload();
             $.modal.close();
         });
         
         $(function () {

             var htmlError = ['<div class="dl_dialog1">',
                                 '     <div class="dl_dialog_wrap">',
                                 '       <div class="dl_tocenter">',
                                 '<span class="dl_dialog_icook dl_ft14_grey2"><b>您之前已经成功申请过该职位，请不要重复申请！</b>',
                                 '</span>',
                                 '</div>',
                                 '     <div class="dl_dialog_btn">',
                                 ' <span class="dl_green1"></span>',
                                 '              <div>',
                                 '     </div>',
                                 '</div>'].join("");
             
             $(".apply").click(function () {
                 var isAllowReApply = $(this).attr("isAllowReApply");
                 var isApplied = $(this).attr("isApplied");
                 if (isAllowReApply == "True" && isApplied == "True") {
                     window.location = $(this).attr("url");
                 }
                 else if (isAllowReApply == "False" && isApplied == "True") {
                     $.modal(htmlError, {
                         containerCss: {
                             backgroundColor: "transparent",
                             borderColor: "transparent",
                             padding: 0
                         }
                     });
                 }
                 else if (isApplied == "False") {
                     window.location = $(this).attr("url");
                 }
                 function a() {
                     $.modal.close();
                 }
                 setTimeout(a, 5000);
             });
         });

</script> 
  <script language="javascript" type="text/javascript">

        function SetCss() {
            var win = window.location.href;
            if (win.indexOf("Apply") != -1) {
                $("#myapply a").addClass("current");
            }
            else if (win.indexOf("ResumeItem") != -1) {
                $("#myresume a").addClass("current");
            }
            else if (win.indexOf("EditPwd") != -1) {
                $("#changepwd a").addClass("current");
            }
        }
        SetCss();

        $(function () {

            setInterval(function () {
                try {
                    DrawImage($("#logoImg"), '350', '80');
                } catch (e) {
                }
            }, 100);
        });

        function DrawImage(ImgD, FitWidth, FitHeight) {
            var image = new Image();

            image.src = $(ImgD).attr("src");

            if (image.width > 0 && image.height > 0) {
                if (image.width / image.height >= FitWidth / FitHeight) {
                    if (image.width > FitWidth) {
                        $(ImgD).css("width", FitWidth);
                        $(ImgD).css("height", (image.height * FitWidth) / image.width);
                    } else {
                        $(ImgD).css("width", image.width);
                        $(ImgD).css("height", image.height);
                    }
                } else {
                    if (image.height > FitHeight) {
                        $(ImgD).css("height", FitHeight);
                        $(ImgD).css("width", (image.width * FitHeight) / image.height);
                    } else {
                        $(ImgD).css("width", image.width);
                        $(ImgD).css("height", image.height);
                    }
                }
                $(ImgD).show();
            }
        }
    </script>  
 </body>
</html>