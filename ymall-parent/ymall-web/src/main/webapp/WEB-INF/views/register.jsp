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
                        <a href="${pageContext.request.contextPath}/user/login">账号登陆</a>
                    </div>
                    <label class="txtin-box">
                        <input id="userName" class="txtin" type="text" name="" placeholder="您的帐户名和登陆名" />
                        <div id="errorAccount1" style="color:red;display:inline;"></div>
                    </label>
                    <label class="txtin-box">
                        <input id="phone1" class="txtin" type="text" name="" placeholder="建议使用常用手机" />
                        <div id="errorAccount2" style="color:red;display:inline;"></div>
                    </label>
                    <label class="txtin-box txtin-box-code">
                        <input  name="htmlCode" id="htmlCode" type="text" class="txtin" size="36" />
						<input  class="get-yzm" type="button" value="获取短信验证码" onclick="getVerify(this)"/>
						<div id="errorAccount5" style="color:red;display:inline;"></div>
                    </label>
                    <label class="txtin-box">
                        <input id="password1" class="txtin" type="password" name="" placeholder="设置密码建议至少两种字符组合" />
                        <div id="errorAccount3" style="color:red;display:inline;"></div>
                    </label>
                    <label class="txtin-box">
                        <input id="password2" class="txtin" type="password" name="" placeholder="请再次输入密码" />
                        <div id="errorAccount4" style="color:red;display:inline;"></div>
                    </label>
                    <div class="clearfix tool">
                        <label class="check"><input type="checkbox" name="" id="" />7MALL用户注册协议和隐私政策《<a href="../">服务协议</a>》</label>
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
	var verify;
	function Post(url,userName){
	 	  var f=document.createElement("form");
	 	  f.action=url;
	 	  f.method="post";//指定为post
	 	  f.innerHTML="<input type='hidden' name='userName' value='"+userName+"'/>";
	 	  document.body.appendChild(f); 
	 	  f.submit();
 	}
	
	function register(){
		var userName = $("#userName").val();
		var phone1 = $("#phone1").val();
		var htmlCode =$("#htmlCode").val();
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
		if(htmlCode==""||htmlCode==null){
			$("#errorAccount4").html("验证码不能为空");
		}
		if(!(userName==""&&phone1==""&&password1==""&&password2=="")){
			 $.ajax({
               url:"${pageContext.request.contextPath}/user/doRegister",
               type:"POST",
               data:{username:userName,phone:phone1,password:password1},  
               dataType:'json', 
               success:function(data){
            	  Post('${pageContext.request.contextPath}/index',userName);    
               },
               error:function(data){
            	   $("#errorAccount4").html(data.msg).show().attr({ "class": "error" });
               }  
            });  
		}
	}
	
	function isNameAvailable(str) {  
        var myreg=/^[a-zA-Z]\w{2,8}$/;  
        if (!myreg.test(str)) {  
            return false;  
        } else {  
            return true;  
        }  
    }  
	
	$(document).ready(function(){
         //给账号文本框绑定失去焦点的事件
         $("#userName").blur(function(){
        	 if(!($(this).val()==""||$(this).val()==null)){
        		 if(!isNameAvailable($(this).val())){
            		 $("#errorAccount1").html("用户名格式不正确!");   
            	 }else{
    	             $.ajax({
    	            	type: "POST",
    	                url:"http://sso.7mall.com/user/check/"+$(this).val()+"/1?r=" + Math.random(),
    	                dataType:'jsonp', 
    	                jsonp: "callback",
    	    			jsonpCallback:"MusicHandler",
    	                success:function(result){
    	                	 if (result) {
    	                         var obj = eval(result);
    	                         if (obj.data == true) { 
    	                        	 $("#errorAccount1").html("该用户名已存在!");   
    	                         }else{
    	                        	 $("#errorAccount1").html("<font color='green'>恭喜,该用户名可以使用!</font>"); 
    	                         }
    	                	 }
    	                }
    	             });  
            	 }
        	 }
         });
     });
	
	function isPoneAvailable(str) {  
        var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;  
        if (!myreg.test(str)) {  
            return false;  
        } else {  
            return true;  
        }  
    }  
	
	$(document).ready(function(){
		  $("#phone1").blur(function(){
			  if(!($(this).val()==""||$(this).val()==null)){
				  if(!isPoneAvailable($(this).val())){
						$("#errorAccount2").html("手机号码格式不正确!");
					}else{
						$.ajax({
			           	 	url:"http://sso.7mall.com/user/check/"+$(this).val()+"/2?r=" + Math.random(),
			                dataType:'jsonp', 
			                success:function(result){
			               	 if (result) {
			                        var obj = eval(result);
			                        if (obj.data == true) {  
			                       	 $("#errorAccount2").html("该手机号已经被注册");   
			                        }else{
			                       	 $("#errorAccount2").empty();
			                        }
			               	 }
			                }  
			            });    
					}
			  }
	        });
	});
	
	$(document).ready(function(){
	   $("#password1").blur(function(){
		   if(!($(this).val()==""||$(this).val()==null)){
			   if($(this).val().length>20 || $(this).val().length<6){
				   $("#errorAccount3").html("<font color='red'>长度只能在6-20个字符之间</font>");
			   }else{
				   $("#errorAccount3").empty();
			   }
		   }
	   });
	});
	
	$(document).ready(function(){
		   $("#htmlCode").blur(function(){
			   if(!($(this).val()==""||$(this).val()==null)){
				   if($(this).val()==verify){
					   $("#errorAccount5").empty();
				   }else{
					   $("#errorAccount5").html("验证码输入错误");
				   }
			   }
		   });
		});
	
	$(document).ready(function(){
		   $("#password2").blur(function(){
			   var v = $("#password1").val();
			   if($(this).val()!==v){
				   $("#errorAccount4").html("<font color='red'>两次密码不一致!</font>");
			   }else{
				   $("#errorAccount4").empty();
			   }
		   });
		});
	
    $('.check input').iCheck({
           checkboxClass: 'sty1-checkbox'
       });
    
    //获取验证码开始
    var nums = 60;
    var clock = '';
    var btn;
    function getVerify(thisBtn){
        var mobile = $("#phone1").val();
        if(mobile==""){
            alert("请输入手机号码！");
            document.all.item_consult_phone.focus();
            return false;
        }
        if(mobile!=""){
            var reg = /^([0-9]{11})?$/;
            var flag = reg.test(mobile);
            if(!flag){
                alert("请输入正确的手机号码格式！");
                document.all.item_consult_phone.focus();
                return false;
            }else{
                var flag = true;
                $.ajax({
                    async: false,
                    type: "POST",
                    cache: false,
                    url: "/user/sendSecurityCode",
                    data: {
                        mobile:mobile
                    },
                    dataType:"json",
                    success: function(data){
                        if(data.result == "1"){
                            alert("短信验证码已成功发送至您的手机，请将其填写在输入框!");
                            verify = data.verify;
                        }else{
                            flag = false;
                            alert("短信验证码发送失败！");
                        }
                    }
            });
            btn = thisBtn;
            btn.disabled = true; //将按钮置为不可点击
            btn.value = nums+'秒后可重新获取';
            clock = setInterval(doLoop, 1000); //一秒执行一次

            return flag;
        }
    }
}

function doLoop()  {
    nums--; 
    if(nums > 0){
        btn.value = nums+'秒后可重新获取';  
        }else{ 
            clearInterval(clock); //清除js定时器  
            btn.disabled = false;   
            btn.value = '点击发送验证码';  
            nums = 60; //重置时间  
            }  
    }
</script>
</html>