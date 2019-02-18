<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>商城详情页</title>
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
                        <li><a href="../uc-footprint.html">浏览历史</a></li>
                    </ul>
                    <div class="tit">客户服务</div>
                    <ul class="sublist">
                        <li><a href="../">取消订单记录</a></li>
                        <li><a href="../uc-refund.html">退款/退货</a></li>
                    </ul>
                    <div class="tit">账户中心</div>
                    <ul class="sublist">
                        <li><a href="../uc-account.html">账户信息</a></li>
                        <li><a href="../uc-safe.html">账户安全</a></li>
                        <li><a href="../">消费记录</a></li>
                        <li><a href="../uc-address.html">收货地址</a></li>
                    </ul>
                    <div class="tit">消息中心</div>
                    <ul class="sublist">
                        <li><a href="../uc-evaluate.html">商品评价</a></li>
                        <li><a href="../uc-msg.html">站内消息</a></li>
                    </ul>
                </div>
            </div>
            <div class="uc-content">
                <div class="uc-panel account-panel">
                    <div class="user-info">
                        <a href="../"><img class="headpic" src="../uploads/4.jpg" alt="头像" /></a>
                        <div class="info">
                            <div><span class="name">007小柚子</span><span class="wel">下午好</span></div>
                            <a href="../" class="label">普通会员</a>
                            <a href="../" class="edit">修改个人信息></a>
                        </div>
                    </div>
                    <div class="quick-menu">
                        <div class="item">
                            <a href="../"><img class="ico" src="../img/ico/uc-aq.png"/>账户安全：较高</a>
                        </div>
                        <div class="item">
                            <a href="../"><img class="ico" src="../img/ico/uc-phone.png"/>绑定手机：136********66</a>
                        </div>
                        <div class="item">
                            <a href="../"><img class="ico" src="../img/ico/uc-dizhi.png"/>我的收货地址</a>
                        </div>
                        <div class="item">
                            <a href="../"><img class="ico" src="../img/ico/uc-qianbao.png"/>我的钱包</a>
                        </div>
                    </div>
                </div>

                <div class="uc-panel home-order">
                    <div class="col">
                        <img src="../img/ico/uc-order1.png" class="ico" />
                        <div class="bd">
                            <div class="tit">待支付的订单：<span class="num">1</span></div>
                            <a class="more" href="../">查看待支付订单></a>
                        </div>
                    </div>
                    <div class="col">
                        <img src="../img/ico/uc-order2.png" class="ico" />
                        <div class="bd">
                            <div class="tit">待发货的订单：<span class="num">1</span></div>
                            <a class="more" href="../">查看待支付订单></a>
                        </div>
                    </div>
                    <div class="col">
                        <img src="../img/ico/uc-order3.png" class="ico" />
                        <div class="bd">
                            <div class="tit">待收货的订单：<span class="num">1</span></div>
                            <a class="more" href="../">查看待支付订单></a>
                        </div>
                    </div>
                    <div class="col">
                        <img src="../img/ico/uc-order4.png" class="ico" />
                        <div class="bd">
                            <div class="tit">待评价的订单：<span class="num">1</span></div>
                            <a class="more" href="../">查看待支付订单></a>
                        </div>
                    </div>
                </div>

                <div class="uc-panel home-wuliu">
                    <div class="home-wuliu-hd">
                        我的物流
                    </div>
                    <div class="home-wuliu-bd">
                        <div class="item">
                            <a href="../" class="confirm ui-btn-theme uc-btn-md">确认收货</a>
                            <div class="cont">
                                <img src="../uploads/3.jpg" alt="" class="figure" />
                                <div class="info">
                                    <div class="status">快件已签收，感谢您使用中通快递！</div>
                                    <div>
                                        <span class="time">2016-05-20  16:04:28</span>
                                        <a href="../">查看物流明细</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <a href="../" class="confirm ui-btn-theme uc-btn-md">确认收货</a>
                            <div class="cont">
                                <img src="../uploads/3.jpg" alt="" class="figure" />
                                <div class="info">
                                    <div class="status">快件已签收，感谢您使用中通快递！</div>
                                    <div>
                                        <span class="time">2016-05-20  16:04:28</span>
                                        <a href="../">查看物流明细</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <a href="../" class="confirm ui-btn-theme uc-btn-md">确认收货</a>
                            <div class="cont">
                                <img src="../uploads/3.jpg" alt="" class="figure" />
                                <div class="info">
                                    <div class="status">快件已签收，感谢您使用中通快递！</div>
                                    <div>
                                        <span class="time">2016-05-20  16:04:28</span>
                                        <a href="../">查看物流明细</a>
                                    </div>
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