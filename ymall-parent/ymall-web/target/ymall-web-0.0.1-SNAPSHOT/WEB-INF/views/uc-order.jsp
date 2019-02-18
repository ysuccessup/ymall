<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>订单</title>
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
                        <li><a class="active" href="../">我的订单</a></li>
                        <li><a href="../">我的收藏</a></li>
                        <li><a href="../">浏览历史</a></li>
                    </ul>
                    <div class="tit">客户服务</div>
                    <ul class="sublist">
                        <li><a href="../">取消订单记录</a></li>
                        <li><a href="../">退款/退货</a></li>
                    </ul>
                    <div class="tit">账户中心</div>
                    <ul class="sublist">
                        <li><a href="../">账户信息</a></li>
                        <li><a href="../">账户安全</a></li>
                        <li><a href="../">消费记录</a></li>
                        <li><a href="../">收货地址</a></li>
                    </ul>
                    <div class="tit">消息中心</div>
                    <ul class="sublist">
                        <li><a href="../">商品评价</a></li>
                        <li><a href="../">站内消息</a></li>
                    </ul>
                </div>
            </div>
            <div class="uc-content">
                <div class="uc-panel">
                    <div class="uc-bigtit">我的订单</div>
                    <div class="uc-panel-bd">
                        <div class="uc-sort">
                            <div class="uc-tabs">
                                <a class="item active" href="../">所有订单</a>
                                <a class="item" href="../">代付款（1）</a>
                                <a class="item" href="../">待发货</a>
                                <a class="item" href="../">待收货</a>
                                <a class="item" href="../">待评价</a>
                            </div>
                            <div class="uc-search">
                                <form action="">
                                    <input type="text" class="sch-input" placeholder="输入商品名称,订单号，商品编号" />
                                    <button class="sch-btn"><i class="iconfont icon-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <table class="uc-table">
                            <thead>
                                <td></th>
                                <th></th>
                                <th></th>
                                <th width="120"></th>
                            </thead>
                            <tr class="hd order-meta">
                                <td colspan="4">
                                    <div class="left">2016-05-29   订单号: 1947584672162364</div>
                                    <div class="right">店铺：<a href="../">小米旗舰店</a> <span class="del iconfont icon-shanchu"></span></div>
                                </td>
                            </tr>
                            <tr class="order-goods">
                                <td>
                                    <div class="goods-info">
                                        <img class="figure" src="" alt="" />
                                         <a class="text-info refund" href="../uc-apply-refund.html">申请退货</a>
                                        <div class="info">
                                            <div>小米短袖T恤 五彩换 黑色 S</div>
                                            <div>499元×1</div>
                                        </div>
                                    </div>
                                    <div class="goods-info">
                                        <img class="figure" src="" alt="" />
                                        <a class="text-info refund" href="../uc-apply-refund.html">申请退货</a>
                                        <div class="info">
                                            <div>小米短袖T恤 五彩换 黑色 S</div>
                                            <div>499元×1</div>
                                        </div>
                                    </div>
                                    <div class="goods-info">
                                        <img class="figure" src="" alt="" />
                                        <a class="text-info refund" href="../uc-apply-refund.html">申请退货</a>
                                        <div class="info">
                                            <div>小米短袖T恤 五彩换 黑色 S</div>
                                            <div>499元×1</div>
                                        </div>
                                    </div>
                                    <div class="goods-info">
                                        <img class="figure" src="" alt="" />
                                        <a class="text-info refund" href="../uc-apply-refund.html">申请退货</a>
                                        <div class="info">
                                            <div>小米短袖T恤 五彩换 黑色 S</div>
                                            <div>499元×1</div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    金额：<span class="text-theme fwb">298.00元</span>
                                </td>
                                <td>
                                    <span class="status">快件已签收</span><br />
                                    <a class="text-info" href="../uc-order-detail.html">订单详情</a><br />
                                    <a class="text-info" href="../">查看物流</a>
                                </td>
                                <td>
                                    <a href="../" class="ui-btn-theme uc-btn-md">追加评论</a>
                                </td>
                            </tr>

                            <tr class="hd order-meta">
                                <td colspan="4">
                                    <div class="left">2016-05-29   订单号: 1947584672162364</div>
                                    <div class="right">店铺：<a href="../">小米旗舰店</a> <span class="del iconfont icon-shanchu"></span></div>
                                </td>
                            </tr>
                            <tr class="order-goods">
                                <td>
                                    <div class="goods-info">
                                        <img class="figure" src="" alt="" />
                                        <a class="text-info refund" href="../uc-apply-refund.html">申请退货</a>
                                        <div class="info">
                                            <div>小米短袖T恤 五彩换 黑色 S</div>
                                            <div>499元×1</div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    金额：<span class="text-theme fwb">298.00元</span>
                                </td>
                                <td>
                                    <span class="status">快件已签收</span><br />
                                    <a class="text-info" href="../uc-order-detail.html">订单详情</a><br />
                                    <a class="text-info" href="../">查看物流</a>
                                </td>
                                <td>
                                    <a href="../" class="ui-btn-theme uc-btn-md">去付款</a>
                                    <a href="../" class="ui-btn-low ui-btn-hollow uc-btn-md mt10">取消订单</a>
                                </td>
                            </tr>

                            <tr class="hd order-meta">
                                <td colspan="4">
                                    <div class="left">2016-05-29   订单号: 1947584672162364</div>
                                    <div class="right">店铺：<a href="../">小米旗舰店</a> <span class="del iconfont icon-shanchu"></span></div>
                                </td>
                            </tr>
                            <tr class="order-goods">
                                <td>
                                    <div class="goods-info">
                                        <img class="figure" src="" alt="" />
                                        <a class="text-info refund" href="../uc-apply-refund.html">申请退货</a>
                                        <div class="info">
                                            <div>小米短袖T恤 五彩换 黑色 S</div>
                                            <div>499元×1</div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    金额：<span class="text-theme fwb">298.00元</span>
                                </td>
                                <td>
                                    <span class="status">快件已签收</span><br />
                                    <a class="text-info" href="../uc-order-detail.html">订单详情</a><br />
                                    <a class="text-info" href="../">查看物流</a>
                                </td>
                                <td>
                                    <div class="time-left"><i class="iconfont icon-shijian"></i>还剩2天8时</div>
                                    <a href="../" class="ui-btn-theme uc-btn-md">确认收货</a>
                                </td>
                            </tr>
                        </table>
                       <!--  <div class="pages">
                            <a class="page prev" href="../">上一页</a>
                            <a class="page" href="../">1</a>
                            <span class="cur-page">2</span>
                            <a class="page" href="../">3</a>
                            <a class="page" href="../">4</a>
                            <i class="page-split">...</i>
                            <a class="page" href="../">71</a>
                            <a class="page next" href="../">下一页</a>
                        </div> -->

                        <div class="ta-c">
                            <ul class="pagination">
                                <li class="disabled"><a href="../#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                <li class="active"><a href="../#">1 <span class="sr-only">(current)</span></a></li>
                                <li><a href="../#">2</a></li>
                                <li><a href="../#">3</a></li>
                                <li><a href="../#">4</a></li>
                                <li><a href="../#">5</a></li>
                                <li><a href="../#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                             </ul>
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
<script src="../js/global.js"></script>
<script>

</script>
</html>