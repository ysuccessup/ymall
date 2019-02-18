<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>账号安全</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="../css/common.css" rel="stylesheet"/>
    <link href="../css/uc.css" rel="stylesheet"/>
</head>
<body>
    <!--头部-->
    <div class="topper">
        <div class="wrapper">
            <div class="left-bar">
                <div class="back-home divider">
                    <em></em><a href="../index.html">商城首页</a>
                </div>
                <div class="item"><a href="../">商家中心</a></div>
            </div>
            <div class="right-bar">
                <div class="login-user sub-menu">
                    <a class="menu-hd" href="../">txtangxia<em></em></a>
                    <div class="down">
                        <a href="../">内容</a>
                        <a href="../">内容</a>
                        <a href="../">内容</a>
                    </div>
                </div>
                <div class="item"><a href="../">消息（<span class="txt-theme">0</span>）</a></div>
                <div class="logout divider" onclick="logout()">退出</div>
                <span class=""></span>
                <div class="cart"><em></em><a href="../">购物车<span class="txt-theme">2</span>件</a></div>
                <div class="order"><em></em><a href="../">我的订单</a></div>
                <div class="fav"><em></em><a href="../">我的收藏</a></div>
                <div class="help"><em></em><a href="help">帮助中心</a></div>
            </div>
        </div>
    </div>
    <div class="uc-header-bg">
        <div class="uc-header wrapper">
            <a class="logo" href="../index.html"><img src="../img/logo2.png" alt="" /></a>
            <div class="back-home"><a href="../">返回商城首页</a></div>
            <ul class="uc-nav">
                <li><a href="../">首页</a></li>
                <li class="toggle">
                    <span class="label">账户设置<i class="iconfont"></i></span>
                    <div class="toggle-cont">
                        <a href="../">个人信息</a>
                        <a href="../">安全设置</a>
                        <a href="../">收货地址</a>
                    </div>
                </li>
                <li><a href="../">消息中心</a></li>
            </ul>
            <div class="schbox">
                <form action="">
                    <input class="search-txt" type="text" />
                    <button class="search-btn">搜索</button>
                    <div class="suggest-box">
                        <div class="item" data-title="上衣 短款 短袖">上衣 短款 短袖<div class="tags"><span>雪纺</span><span>蕾丝</span><span>一字领</span></div></div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="wrapper uc-router">
        <ul>
            <li><a href="../">首页</a></li>
            <li><span class="divider"></span></li>
            <li><span>个人中心</span></li>
        </ul>
    </div>

    <div class="wrapper">
        <div class="uc-main clearfix">
            <div class="uc-aside">
                <div class="uc-menu">
                    <div class="tit">订单中心</div>
                    <ul class="sublist">
                        <li><a href="../uc-order.html">我的订单</a></li>
                        <li><a href="../uc-fav.html">我的收藏</a></li>
                        <li><a href="../">浏览历史</a></li>
                    </ul>
                    <div class="tit">客户服务</div>
                    <ul class="sublist">
                        <li><a href="../">取消订单记录</a></li>
                        <li><a href="../">退款/退货</a></li>
                    </ul>
                    <div class="tit">账户中心</div>
                    <ul class="sublist">
                        <li><a href="../uc-account.html">账户信息</a></li>
                        <li><a href="../uc-safe.html">账户安全</a></li>
                        <li><a href="../">消费记录</a></li>
                        <li><a href="../">收货地址</a></li>
                    </ul>
                    <div class="tit">消息中心</div>
                    <ul class="sublist">
                        <li><a href="../uc-evaluate.html">商品评价</a></li>
                        <li><a href="../">站内消息</a></li>
                    </ul>
                </div>
            </div>
            <div class="uc-content">
                <div class="uc-panel">
                    <div class="uc-bigtit bd-b">账号安全</div>
                    <div class="uc-panel-bd">

                        <div class="safe-list">
                            <div class="list-item">
                                <a href="../uc-verify.html" class="edit ui-btn-low ui-btn-hollow uc-btn-md">修改</a>
                                <div class="cont">
                                    <img src="../img/uc/pwd.jpg" class="ico" />
                                    <div class="tit">帐号密码</div>
                                    <div class="desc">用于保护帐号信息和登录安全</div>
                                </div>
                            </div>
                            <div class="list-item">
                                <a href="../uc-verify.html" class="edit ui-btn-low ui-btn-hollow uc-btn-md">修改</a>
                                <div class="cont">
                                    <img src="../img/uc/mail.jpg" class="ico" />
                                    <div class="tit">安全邮箱 25******1@q*.com<span class="safe-status"><i class="iconfont icon-yanzheng text-success"></i>已绑定</span></div>
                                    <div class="desc">安全邮箱可以用于登录小米帐号，重置密码或其他安全验证</div>
                                </div>
                            </div>
                            <div class="list-item">
                                <a href="../uc-verify.html" class="edit ui-btn-low ui-btn-hollow uc-btn-md">修改</a>
                                <div class="cont">
                                    <img src="../img/uc/phone.jpg" class="ico" />
                                    <div class="tit">安全手机<span class="safe-status"><i class="iconfont icon-warn text-danger"></i>未绑定</span></div>
                                    <div class="desc">安全手机将可用于登录小米帐号和重置密码，建议立即设置</div>
                                </div>
                            </div>
                            <div class="list-item">
                                <a href="../uc-verify.html" class="edit ui-btn-low ui-btn-hollow uc-btn-md">修改</a>
                                <div class="cont">
                                    <img src="../img/uc/safe.jpg" class="ico" />
                                    <div class="tit">密保问题<span class="safe-status"><i class="iconfont icon-yanzheng text-success"></i>已设置</span></div>
                                    <div class="desc">密保问题用于安全验证，建议立即设置</div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--脚部-->
    <div class="fatfooter">

    </div>
    <!--脚部-->
</body>
<script src="../js/jquery.js"></script>
<link rel="stylesheet" href="../js/icheck/style.css"/>
<script src="../js/icheck/icheck.min.js"></script>
<script src="../js/laydate/laydate.js"></script>
<script src="../js/global.js"></script>
</html>