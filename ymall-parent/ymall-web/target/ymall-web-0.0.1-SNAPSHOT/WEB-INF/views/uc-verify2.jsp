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

                        <div class="verify-step mt20">
                            <div class="item item-f">
                                <i></i>1.验证身份
                            </div>
                            <div class="item item-m active">
                                <i></i>2.设置新密码
                            </div>
                            <div class="item item-l">
                                3.完成
                            </div>
                        </div>

                        <div class="verify-panel mt10">
                            <div class="inner-box">

                                <div class="control-group">
                                    <div class="hd">新登录密码：</div>
                                    <div class="bd">
                                        <input style="width: 220px;" class="ui-txtin" type="password" name="" />
                                    </div>
                                </div>
                                <div class="control-group mt30">
                                    <div class="hd">确认新密码：</div>
                                    <div class="bd">
                                        <input style="width: 220px;" class="ui-txtin" type="password" name="" />
                                    </div>
                                </div>
                                <div class="control-group mt30">
                                    <div class="hd">验证码：</div>
                                    <div class="bd">
                                        <input style="width: 80px;" class="ui-txtin" type="text" name="" />
                                        <img class="yzm" src="" alt="" />
                                        <div class="yzm-tip">
                                            看不清？<br /><a href="../">换一张</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="submit-group mt30">
                                    <a href="../uc-verify3.html" class="ui-btn-theme uc-btn-md">下一步</a>
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