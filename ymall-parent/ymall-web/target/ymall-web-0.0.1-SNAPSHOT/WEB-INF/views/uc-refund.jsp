<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>退款/退货</title>
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
                    <div class="uc-bigtit">退款/退货</div>
                    <div class="uc-panel-bd">
                        <div class="uc-sort">
                            <div class="uc-tabs">
                                <a class="item active" href="../">退款申请</a>
                                <a class="item" href="../">退货申请</a>
                            </div>
                            <div class="uc-search">
                                <form action="">
                                    <input type="text" class="sch-input" placeholder="输入商品名称,订单号，商品编号" />
                                    <button class="sch-btn"><i class="iconfont icon-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <table class="refund-returns-list">
                            <tr class="head bd-t">
                                <td width="370" class="first">商品信息</td>
                                <td>退款金额（元）</td>
                                <td>审核状态</td>
                                <td>平台确认</td>
                                <td width="140">操作</td>
                            </tr>
                            <tr class="item-head">
                                <td colspan="5">
                                    <div class="fl">
                                        退款编号: 1947584672162364 <span class="ml15">商家：<a class="sname" href="../">小米旗舰店</a></span>
                                    </div>
                                    <div class="fr">申请时间：2016-05-29 16:02   </div>
                                </td>
                            </tr>
                            <tr class="item">
                                <td class="first">
                                    <div class="good-desc">
                                        <img class="gimg" src="../uploads/9.jpg" alt="" />
                                        <div class="ginfo">
                                            小米短袖T恤 五彩换<br />订单编号：16978514363344786
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-danger">499.00元</span></td>
                                <td>待审核</td>
                                <td>无</td>
                                <td class="last"><a href="../" class="ui-btn-theme uc-btn-md">查看</a></td>
                            </tr>
                            <tr class="blank"></tr>
                            <tr class="item-head">
                                <td colspan="5">
                                    <div class="fl">
                                        退款编号: 1947584672162364 <span class="ml15">商家：<a class="sname" href="../">小米旗舰店</a></span>
                                    </div>
                                    <div class="fr">申请时间：2016-05-29 16:02   </div>
                                </td>
                            </tr>
                            <tr class="item">
                                <td class="first">
                                    <div class="good-desc">
                                        <img class="gimg" src="../uploads/9.jpg" alt="" />
                                        <div class="ginfo">
                                            小米短袖T恤 五彩换<br />订单编号：16978514363344786
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-danger">499.00元</span></td>
                                <td>待审核</td>
                                <td>无</td>
                                <td class="last"><a href="../" class="ui-btn-theme uc-btn-md">查看</a></td>
                            </tr>
                        </table>
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