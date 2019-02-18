<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>找回密码</title>
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
            <div class="center-box ">

                <div class="box-hd box-hd-tabs">
                    <a href="../javascript:;" class="item">手机找回密码</a>
                    <a href="../javascript:;" class="item">邮箱找回密码</a>
                </div>
                <div class="tab-con">
                    <form action="" method="">
                        <label class="txtin-box">
                            <input class="txtin" type="text" name="" placeholder="手机" />
                        </label>
                        <label class="txtin-box txtin-box-code">
                            <input class="txtin" type="text" name="" placeholder="短信验证码" />
                            <a href="../" class="get-yzm">获取验证码</a>
                        </label>
                        <label class="txtin-box txtin-box-code">
                            <input class="txtin" type="text" name="" placeholder="验证码" />
                            <img class="yzm" src="" alt="" />
                        </label>
                        <a class="tj" href="../reset.pwd.html">完&ensp;成</a>
                        <!-- <input class="tj" type="submit" value="完&ensp;成" /> -->
                    </form>
                </div>
                <div class="tab-con">
                    <form action="" method="">
                        <label class="txtin-box">
                            <input class="txtin" type="text" name="" placeholder="手机" />
                        </label>
                        <label class="txtin-box txtin-box-code">
                            <input class="txtin" type="text" name="" placeholder="验证码" />
                            <img class="yzm" src="" alt="" />
                        </label>
                        <input class="tj" type="submit" value="完&ensp;成" />
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="login-footer">
        安徽智迈科技股份有限公司 版权所有 Copyright © 2009-2016 法律顾问：吕海波律师  备案号：皖ICP备06001897
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
     $(function () {
        $('.center-box').zTab({
            tabnav:'.box-hd-tabs',
            trigger:'click'
        });
     });
</script>
</html>