﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><HTML 
xmlns="http://www.w3.org/1999/xhtml"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
	<title>登录页面</title> 
		<style>
		body{
			background: #ebebeb;
			font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif;
			color: #222;
			font-size: 12px;
		}
		*{padding: 0px;margin: 0px;}
		.top_div{
			background: #008ead;
			width: 100%;
			height: 400px;
		}
		.ipt{
			border: 1px solid #d3d3d3;
			padding: 10px 10px;
			width: 290px;
			border-radius: 4px;
			padding-left: 35px;
			-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
			box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
			-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
			-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
			transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
		}
		.ipt:focus{
			border-color: #66afe9;
			outline: 0;
			-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
			box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
		}
		.u_logo{
			background: url("images/username.png") no-repeat;
			padding: 10px 10px;
			position: absolute;
			top: 43px;
			left: 40px;
		
		}
		.p_logo{
			background: url("images/password.png") no-repeat;
			padding: 10px 10px;
			position: absolute;
			top: 12px;
			left: 40px;
		}
		a{
			text-decoration: none;
		}
		.tou{
			background: url("images/tou.png") no-repeat;
			width: 97px;
			height: 92px;
			position: absolute;
			top: -87px;
			left: 140px;
		}
		.left_hand{
			background: url("images/left_hand.png") no-repeat;
			width: 32px;
			height: 37px;
			position: absolute;
			top: -38px;
			left: 150px;
		}
		.right_hand{
			background: url("images/right_hand.png") no-repeat;
			width: 32px;
			height: 37px;
			position: absolute;
			top: -38px;
			right: -64px;
		}
		.initial_left_hand{
			background: url("images/hand.png") no-repeat;
			width: 30px;
			height: 20px;
			position: absolute;
			top: -12px;
			left: 100px;
		}
		.initial_right_hand{
			background: url("images/hand.png") no-repeat;
			width: 30px;
			height: 20px;
			position: absolute;
			top: -12px;
			right: -112px;
		}
		.left_handing{
			background: url("images/left-handing.png") no-repeat;
			width: 30px;
			height: 20px;
			position: absolute;
			top: -24px;
			left: 139px;
		}
		.right_handinging{
			background: url("images/right_handing.png") no-repeat;
			width: 30px;
			height: 20px;
			position: absolute;
			top: -21px;
			left: 210px;
		}
		
		</style>
	</head> 
	
	<body>
		<div class="top_div"></div>
		<div style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 200px; text-align: center;">
		<div style="width: 165px; height: 96px; position: absolute;">
		<div class="tou"></div>
		<div class="initial_left_hand" id="left_hand"></div>
		<div class="initial_right_hand" id="right_hand"></div></div>
		<P style="padding: 30px 0px 10px; position: relative;"><SPAN 
		class="u_logo"></SPAN>         <INPUT class="ipt" type="text" placeholder="请输入用户名或邮箱" value=""> 
		    </P>
		<P style="position: relative;"><SPAN class="p_logo"></SPAN>         
		<INPUT class="ipt" id="password" type="password" placeholder="请输入密码" value="">   
		  </P>
		<div style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
		<P style="margin: 0px 35px 20px 45px;">
		           <SPAN style="float: center;">
		              <A style="background: rgb(0, 142, 173); padding: 7px 100px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;" 
		href="#">登录</A> 
		           </SPAN>         </P></div></div>
				   <div style="text-align:center;">
		</div>
		
		
		<script type="text/javascript" src="<%=path%>/assets/jquery-2.0.3.min.js"></script>
		<script type="text/javascript">
			$(function(){
				//得到焦点
				$("#password").focus(function(){
					$("#left_hand").animate({
						left: "150",
						top: " -38"
					},{step: function(){
						if(parseInt($("#left_hand").css("left"))>140){
							$("#left_hand").attr("class","left_hand");
						}
					}}, 2000);
					$("#right_hand").animate({
						right: "-64",
						top: "-38px"
					},{step: function(){
						if(parseInt($("#right_hand").css("right"))> -70){
							$("#right_hand").attr("class","right_hand");
						}
					}}, 2000);
				});
				//失去焦点
				$("#password").blur(function(){
					$("#left_hand").attr("class","initial_left_hand");
					$("#left_hand").attr("style","left:100px;top:-12px;");
					$("#right_hand").attr("class","initial_right_hand");
					$("#right_hand").attr("style","right:-112px;top:-12px");
				});
			});
		</script>
	</body>
</html>
