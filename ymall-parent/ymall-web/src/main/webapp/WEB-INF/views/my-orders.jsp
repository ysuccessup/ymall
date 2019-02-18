<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 	<!-- header start -->
	<jsp:include page="/WEB-INF/views/header.jsp">
	    <jsp:param name="userName" value="${userName}"/>  
	</jsp:include> 
	<!-- header end -->
    <div class="uc-header-bg">
        <div class="uc-header wrapper">
            <a class="logo" href="../index.html"><img src="../img/logo2.png" alt="" /></a>
            <div class="back-home"><a href="../index">返回商城首页</a></div>
            <ul class="uc-nav">
                <li><a >首页</a></li>
                <li class="toggle">
                    <span class="label">账户设置<i class="iconfont"></i></span>
                    <div class="toggle-cont">
                        <a >个人信息</a>
                        <a >安全设置</a>
                        <a >收货地址</a>
                    </div>
                </li>
                <li><a >消息中心</a></li>
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
            <li><a >首页</a></li>
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
                        <li><a class="active" >我的订单</a></li>
                        <li><a >我的收藏</a></li>
                        <li><a >浏览历史</a></li>
                    </ul>
                    <div class="tit">客户服务</div>
                    <ul class="sublist">
                        <li><a >取消订单记录</a></li>
                        <li><a >退款/退货</a></li>
                    </ul>
                    <div class="tit">账户中心</div>
                    <ul class="sublist">
                        <li><a >账户信息</a></li>
                        <li><a >账户安全</a></li>
                        <li><a >消费记录</a></li>
                        <li><a >收货地址</a></li>
                    </ul>
                    <div class="tit">消息中心</div>
                    <ul class="sublist">
                        <li><a >商品评价</a></li>
                        <li><a >站内消息</a></li>
                    </ul>
                </div>
            </div>
            <div class="uc-content">
                <div class="uc-panel">
                    <div class="uc-bigtit">我的订单</div>
                    <div class="uc-panel-bd">
                        <div class="uc-sort">
                            <div class="uc-tabs">
                                <a class="item active" >所有订单</a>
                                <a class="item" >代付款（1）</a>
                                <a class="item" >待发货</a>
                                <a class="item" >待收货</a>
                                <a class="item" >待评价</a>
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
                            </thead>  <c:forEach items="${orderItemList}" var="orderItem" varStatus="status">
	                            <tr class="order-goods">
	                                <td>
	                                    <div class="goods-info">
	                                        <img class="figure" src="" alt="" />
	                                        <a class="text-info refund" href="../uc-apply-refund.html">申请退货</a>
	                                        <div class="info">
	                                         	<img src="${orderItem.picPath}" alt="">
	                                            <div>${orderItem.title} ×${orderItem.num}</div>
	                                        </div>
	                                    </div>
	                                </td>
	                                <td>
	                                    金额：<span class="text-theme fwb">${orderItem.price}元</span>
	                                </td>
	                                <td>
	                               		 <span class="status">快件已签收</span><br />
	                                    <a class="text-info" href="../uc-order-detail.html">订单详情</a><br />
	                                    <a class="text-info" >查看物流</a>
	                                </td>
	                                <td>
	                                    <a  class="ui-btn-theme uc-btn-md">追加评论</a>
	                                </td>
	                            </tr>
                            </c:forEach>
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
<script src="../js/global.js"></script>
<script>

</script>
</html>