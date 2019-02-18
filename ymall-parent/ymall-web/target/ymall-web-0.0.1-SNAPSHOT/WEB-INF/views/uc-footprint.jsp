<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>我的足迹</title>
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
                    <div class="uc-bigtit">我的足迹</div>
                    <div class="uc-panel-bd">
                        <div class="uc-bar mt10">
                            <div class="fl">以下是您最近30天的商品浏览记录</div>
                            <div class="fr">
                                <label class="check"><input type="checkbox" name="" id="" /><span class="ml10 mr10">全选</span></label><a href="../" class="del iconfont icon-shanchu"></a>
                            </div>
                        </div>

                        <div class="footprint-box">
                            <div class="footprint-item">
                                <div class="f-info">
                                    <span class="f-date">今天</span><span class="f-time">2016-06-15</span><a class="f-del" href="../">删除</a>
                                </div>
                                <div class="f-goods-list clearfix">
                                    <div class="item">
                                        <a href="../" class="g-del"><i class="iconfont icon-shanchu"></i></a>
                                        <a href="../"><img class="figure" src="../uploads/34.jpg" alt="" /></a>
                                        <div class="cont">
                                            <div class="name"><a href="../">小米4k曲面显示器</a></div>
                                            <div class="price">
                                                <span class="n">￥699</span><span class="s">1998</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="footprint-item">
                                <div class="f-info">
                                    <span class="f-date">昨天</span><span class="f-time">2016-06-14</span><a class="f-del" href="../">删除</a>
                                </div>
                                <div class="f-goods-list clearfix">
                                    <div class="item">
                                        <a href="../" class="g-del"><i class="iconfont icon-shanchu"></i></a>
                                        <a href="../"><img class="figure" src="../uploads/34.jpg" alt="" /></a>
                                        <div class="cont">
                                            <div class="name"><a href="../">小米4k曲面显示器</a></div>
                                            <div class="price">
                                                <span class="n">￥699</span><span class="s">1998</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <a href="../" class="g-del"><i class="iconfont icon-shanchu"></i></a>
                                        <a href="../"><img class="figure" src="../uploads/34.jpg" alt="" /></a>
                                        <div class="cont">
                                            <div class="name"><a href="../">小米4k曲面显示器</a></div>
                                            <div class="price">
                                                <span class="n">￥699</span><span class="s">1998</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <a href="../" class="g-del"><i class="iconfont icon-shanchu"></i></a>
                                        <a href="../"><img class="figure" src="../uploads/34.jpg" alt="" /></a>
                                        <div class="cont">
                                            <div class="name"><a href="../">小米4k曲面显示器</a></div>
                                            <div class="price">
                                                <span class="n">￥699</span><span class="s">1998</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <a href="../" class="g-del"><i class="iconfont icon-shanchu"></i></a>
                                        <a href="../"><img class="figure" src="../uploads/34.jpg" alt="" /></a>
                                        <div class="cont">
                                            <div class="name"><a href="../">小米4k曲面显示器</a></div>
                                            <div class="price">
                                                <span class="n">￥699</span><span class="s">1998</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="footprint-item end">
                                <div class="nomore">没有更多了哦</div>
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
<script>
$('.check input').iCheck({
            checkboxClass: 'sty1-checkbox'
        });
</script>
</html>