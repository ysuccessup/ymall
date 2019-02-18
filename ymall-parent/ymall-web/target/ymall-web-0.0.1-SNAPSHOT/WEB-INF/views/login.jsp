<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>登陆</title>
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
    <div class="login-main-wrap">
        <div class="login-main wrapper">
            <div class="login-box">
                    <div class="box-hd">
                        <span class="tit">用户登录</span>
                        <a href="${pageContext.request.contextPath}/user/register">注册新账号</a>
                    </div>
                    <label class="txtin-box">
                        <span class="ico user"></span>
                        <input id="namePho" class="txtin" type="text" name="" placeholder="用户名/手机" />
                    </label>
                    <label class="txtin-box">
                        <span class="ico pwd"></span>
                        <input id="pass" class="txtin" type="password" name="" placeholder="密码" />
                        <div id="errorAccount" style="color:red;display:inline;"></div>
                    </label>
                    <div class="clearfix tool">
                        <label class="check"><input type="checkbox" id="" />自动登录</label>
                        <a class="find" href="../">忘记密码？</a>
                    </div>
                    <input class="tj" type="submit" onclick="login()" value="登&ensp;录"/>
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
	
    $('.check input').iCheck({
        checkboxClass: 'sty1-checkbox'
    });
    
    function Post(url,userName){
   	  var f=document.createElement("form");
   	  f.action=url;
   	  f.method="post";//指定为post
   	  f.innerHTML="<input type='hidden' name='userName' value='"+userName+"'/>";
   	  document.body.appendChild(f); 
   	  f.submit();
   	}
    
    function login(){
            var _password = $("#pass").val();
    		var _username = $("#namePho").val();
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/user/doLogin?r=" + Math.random(),
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                data: {username:_username,password:_password},
                dataType : "json",
                error: function () {
                    $("#errorAccount").html("网络超时，请稍后再试").show().attr({ "class": "error" });
                },
                success: function (result) {
                    if (result) {
                        var obj = eval(result);
                        if (obj.status == 200) {
                        	var userName = _username;
         			         Post('${pageContext.request.contextPath}/index',userName);      
                        }else{
                          $("#errorAccount").html(result.msg).show().attr({ "class": "error" });
                        }
                    }
                }
            });
    };
</script>
</html>