<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>购物车</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="../css/common.css" rel="stylesheet"/>
    <link href="../css/cart.css" rel="stylesheet"/>
</head>
<body class="graybg-theme">
    <!--头部-->
   <jsp:include page="/WEB-INF/views/header.jsp">
	    <jsp:param name="userName" value="${userName}"/>  
	</jsp:include>
        <div class="cart-header wrapper">
            <div class="step-box">
                <div class="row">
                    <div class="step first active col-3">
                        <span class="num">1</span><span class="line"></span><span class="label">我的购物车</span>
                    </div>
                    <div class="step col-3">
                        <span class="num">2</span><span class="line"></span><span class="label">确认订单信息</span>
                    </div>
                    <div class="step col-3">
                        <span class="num">3</span><span class="line"></span><span class="label">选择支付方式</span>
                    </div>
                    <div class="step last col-3">
                        <span class="num">4</span><span class="line"></span><span class="label">完成付款</span>
                    </div>
                </div>
            </div>
        </div>
    <!--头部-->
        <div class="bd-t"></div>
        <div class="wrapper">
            <div class="ui-page-notice cartempty">
                <div class="section">
                    <i class="ico iconfont icon-cartempty"></i>
                    <div class="cont">
                        <div class="tit">购物车空空的哦~，去看看心仪的商品吧~</div>
                        <div>
                            <a href="${pageConext.reqeust.contextPath}/index" class="ui-btn-theme">去逛逛</a>
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
</html>
