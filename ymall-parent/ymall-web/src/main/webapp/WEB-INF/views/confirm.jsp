<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>重置密码</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="../css/common.css" rel="stylesheet"/>
    <link href="../css/login.css" rel="stylesheet"/>
</head>
<body>
    <div class="main-wrap">
        <div class="wrapper">
            <div class="center-box">
                <form action="https://www.yeepay.com/app-merchant-proxy/node" method="post">
                    <div class="box-hd">
                        <span class="tit" style="text-align: center">订单确认</span>
                    </div>
                    <label class="txtin-box">
                        <input class="txtin" type="text" name="" value="订单号：${p2_Order}" />
                    </label>
                    <label class="txtin-box">
                        <input class="txtin" type="text" name="" value="金额：${p3_Amt }" />
                    </label>
					<input type="hidden" name="pd_FrpId" value="${pd_FrpId }" />
					<input type="hidden" name="p0_Cmd" value="${p0_Cmd }" />
					<input type="hidden" name="p1_MerId" value="${p1_MerId }" />
					<input type="hidden" name="p2_Order" value="${p2_Order }" />
					<input type="hidden" name="p3_Amt" value="${p3_Amt }" />
					<input type="hidden" name="p4_Cur" value="${p4_Cur }" />
					<input type="hidden" name="p5_Pid" value="${p5_Pid }" />
					<input type="hidden" name="p6_Pcat" value="${p6_Pcat }" />
					<input type="hidden" name="p7_Pdesc" value="${p7_Pdesc }" />
					<input type="hidden" name="p8_Url" value="${p8_Url }" />
					<input type="hidden" name="p9_SAF" value="${p9_SAF }" />
					<input type="hidden" name="pa_MP" value="${pa_MP }" />
					<input type="hidden" name="pr_NeedResponse" value="${pr_NeedResponse }" />
					<input type="hidden" name="hmac" value="${hmac }" />
					<input type="submit" class="tj" value="确认支付" />
                </form>
            </div>
        </div>
    </div>
</body>
<script src="../js/jquery.js"></script>
<script src="../js/global.js"></script>
</html>