<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>注册</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="../css/common.css" rel="stylesheet"/>
    <link href="../css/login.css" rel="stylesheet"/>
</head>
<body>
<!--头部-->
    <div class="login-header">
        <div class="wrapper">
            <a href="../" class="logo">
                <img src="../img/logo.jpg" alt="" />
            </a>
            <div class="zp">
                <span class="ico"></span>
                <div>正品保障</div>
            </div>
        </div>
    </div>
    <div class="main-wrap">
        <div class="wrapper">
            <div class="center-box">
                    <div class="box-hd">
                        <span class="tit">用户注册</span>
                        <a href="${pageContext.request.contextPath}/loginReg/login">账号登陆</a>
                    </div>
                    <label class="txtin-box">
                        <input id="userName" class="txtin" type="text" name="" placeholder="用户名" />
                        <div id="errorAccount1" style="color:red;display:inline;"></div>
                    </label>
                    <label class="txtin-box">
                        <input id="phone1" class="txtin" type="text" name="" placeholder="手机" />
                        <div id="errorAccount2" style="color:red;display:inline;"></div>
                    </label>
                    <label class="txtin-box txtin-box-code">
                        <input id="phone2" class="txtin" type="text" name="" placeholder="手机" />
                        <a href="../" class="get-yzm">获取验证码</a>
                    </label>
                    <label class="txtin-box">
                        <input id="password1" class="txtin" type="password" name="" placeholder="输入密码" />
                        <div id="errorAccount3" style="color:red;display:inline;"></div>
                    </label>
                    <label class="txtin-box">
                        <input id="password2" class="txtin" type="password" name="" placeholder="确认密码" />
                        <div id="errorAccount4" style="color:red;display:inline;"></div>
                    </label>
                    <div class="clearfix tool">
                        <label class="check"><input type="checkbox" name="" id="" />我已阅读并同意智迈科技《<a href="../">服务协议</a>》</label>
                    </div>
                    <input class="tj" type="submit" onclick="register()" value="注&ensp;册" />
                    <div class="other-way clearfix">
                        <a class="item first" href="../">
                            <img src="../img/login/weixin.jpg" alt="" class="ico" />
                            <span class="label">微信</span>
                        </a>
                        <a class="item" href="../">
                            <img src="../img/login/qq.jpg" alt="" class="ico" />
                            <span class="label">QQ</span>
                        </a>
                        <a class="item" href="../">
                            <img src="../img/login/sina.jpg" alt="" class="ico" />
                            <span class="label">微博</span>
                        </a>
                    </div>
            </div>
        </div>
    </div>
    <div class="login-footer">
        安徽XXX网络科技有限公司 版权所有 Copyright © 2016-2018   备案号：皖ICP备123456789
        <div class="authentication">
            <a href="../"><img src="../uploads/35.jpg" alt="" /></a>
            <a href="../"><img src="../uploads/36.jpg" alt="" /></a>
            <a href="../"><img src="../uploads/37.jpg" alt="" /></a>
            <a href="../"><img src="../uploads/38.jpg" alt="" /></a>
        </div>
    </div>
</body>
<script src="../js/jquery.js"></script>
<link rel="stylesheet" href="../js/icheck/style.css"/>
<script src="../js/icheck/icheck.min.js"></script>
<script src="../js/global.js"></script>
<script>

	function register(){
		var userName = $("#userName").val();
		var phone1 = $("#phone1").val();
		var password1 = $("#password1").val();
		var password2 = $("#password2").val();
		if(userName==""||userName==null){
			$("#errorAccount1").html("<font color='red'>用户名不能为空!</font>");
		}
		if(phone1==""||phone1==null){
			$("#errorAccount2").html("<font color='red'>手机号码不能为空!</font>");
		}
		if(password1==""||password1==null){
			$("#errorAccount3").html("<font color='red'>密码不能为空!</font>");
		}
		if(password2==""||password2==null){
			$("#errorAccount4").html("<font color='red'>确认密码不能为空!</font>");
		}
		if(!(userName==""&&phone1==""&&password1==""&&password2=="")){
			 $.ajax({
               url:"${pageContext.request.contextPath}/user/doRegister",
               type:"post",
               contentType: "application/x-www-form-urlencoded; charset=utf-8",
               data:{userName:userName,phone:phone1,password:password1},
               dataType:'json', 
               success:function(data){
                  window.location="${pageContext.request.contextPath}/index";
               }  
            });  
		}
	}
	
	$(document).ready(function(){
         //给账号文本框绑定失去焦点的事件
         $("#userName").blur(function(){
             $.ajax({
                url:"http://sso.7mall.com/user/check/"+$(this).val()+"/1?r=" + Math.random(),
                dataType:'jsonp', 
                success:function(data){
                    $("#errorAccount1").html(data.mes);
                }  
             });  
         });
     });
	
	$(document).ready(function(){
	   $("#phone1").blur(function(){
             $.ajax({
            	 url:"http://sso.7mall.com/user/check/"+$(this).val()+"/2?r=" + Math.random(),
                 dataType:'jsonp', 
                 success:function(data){
                     $("#errorAccount1").html(data.mes);
                 }  
                /* url:"${pageContext.request.contextPath}/loginReg/phoneCheck",
                type:"post",
                data:{phone:$(this).val()},
                dataType:'json', 
                success:function(data){
                	if(data.mes=="yes"){
                		$("#errorAccount2").empty();
                	}else{
                		 $("#errorAccount2").html(data.mes);
                	}
                } */
             });    
         });
	});
	
	$(document).ready(function(){
	   $("#password1").blur(function(){
		   if($(this).val()==""||$(this).val()==null){
			   $("#errorAccount3").html("<font color='red'>密码不能为空!</font>");
		   }else{
			   $("#errorAccount3").empty();
		   }
	   });
	});
	
	$(document).ready(function(){
		   $("#password2").blur(function(){
			   var v = $("#password1").val();
			   if($(this).val()==""||$(this).val()==null){
				   $("#errorAccount4").html("<font color='red'>确认密码不能为空!</font>");
			   }else if($(this).val()!==v){
				   $("#errorAccount4").html("<font color='red'>两次密码不一致!</font>");
			   }else{
				   $("#errorAccount4").empty();
			   }
		   });
		});
	
    $('.check input').iCheck({
           checkboxClass: 'sty1-checkbox'
       });
</script>
</html>