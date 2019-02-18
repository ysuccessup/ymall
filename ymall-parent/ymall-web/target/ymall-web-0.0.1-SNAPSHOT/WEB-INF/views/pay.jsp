<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>支付</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="../css/common.css" rel="stylesheet"/>
    <link href="../css/cart.css" rel="stylesheet"/>
</head>
<body class="graybg-theme">
    <!--头部-->
        <!-- header start -->
		<jsp:include page="/WEB-INF/views/header.jsp">
		    <jsp:param name="userName" value="${userName}"/>  
		</jsp:include> 
		<!-- header end -->
        <div class="cart-header wrapper">
            <div class="step-box">
                <div class="row">
                    <div class="step first active col-3">
                        <span class="num">1</span><span class="line"></span><span class="label">我的购物车</span>
                    </div>
                    <div class="step active col-3">
                        <span class="num">2</span><span class="line"></span><span class="label">确认订单信息</span>
                    </div>
                    <div class="step active col-3">
                        <span class="num">3</span><span class="line"></span><span class="label">选择支付方式</span>
                    </div>
                    <div class="step last col-3">
                        <span class="num">4</span><span class="line"></span><span class="label">完成付款</span>
                    </div>
                </div>
            </div>
        </div>
    <!--头部-->

    <div class="wrapper">
        <div class="pay-wrap">
            <div class="order-result">
                <div class="section clearfix">
                    <img src="../img/ico/order-success.jpg" class="ico" />
                    <div class="titbox">
                        <div class="tit">订单提交成功，应付金额 ${money} 元</div>
                        <div class="stit">订单号：${orderNo}    请您在 1 日 内完成支付，否则订单会被自动取消</div>
                    </div>
                    <div class="mt20">
                        <div class="meta">
                            <div class="hd">商品</div>
                            <c:forEach items="${cartList}" var="cart">
                            	<div class="sfd">${cart.itemTitle}<span class="ddsfa'" style="color:red;">  *${cart.num}</span> </div>   
                            </c:forEach>
                        </div>
                        <div class="meta">
                            <div class="hd">收货地址</div>
                            <div class="bd">${ orderShipping.receiverState} ${ orderShipping.receiverCity} ${ orderShipping.receiverAddress}  (${ orderShipping.receiverName} 收) ${ orderShipping.receiverMobile} <a href="../">[修改]</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pay-wrap-tit">
            在线支付
        </div>
        <div class="pay-wrap">
            <div class="pay-way">
                <div class="row">
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="pd_FrpId" value="ICBC-NET-B2C"/><img src="../img/pay/01gs.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C"/><img src="../img/pay/02zs.jpg" width="130" height="52"/></label>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="pd_FrpId" value="CCB-NET-B2C"/><img class="bd" src="../img/pay/03js.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="pd_FrpId" value="ABC-NET-B2C"/><img class="bd" src="../img/pay/04ny.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="pd_FrpId" value="BOC-NET-B2C"/><img class="bd" src="../img/pay/05zg.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="pd_FrpId" value=""/><img class="bd" src="../img/pay/06jt.jpg" /></label>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom-panel">
            <a class="go-next ui-btn-theme" onclick="pay()">下一步</a>
        </div>
    </div>
</body>
<script src="../js/jquery.js"></script>
<link rel="stylesheet" href="../js/icheck/style.css"/>
<script src="../js/icheck/icheck.min.js"></script>
<script src="../js/global.js"></script>
<script>

	function pay(){
		var pd_FrpId = $("input[type='radio']:checked").val();
		window.location="${pageContext.request.contextPath}/order/payMoney?orderid="+${orderNo}+"&money="+${money}+"&pd_FrpId="+pd_FrpId;
	}
	
    $('.check').iCheck({
            radioClass: 'sty1-radio'
    });
</script>
</html>