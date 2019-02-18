<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>确认订单</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="../css/common.css" rel="stylesheet"/>
    <link href="../css/cart.css" rel="stylesheet"/>
    <style type="text/css">
    	.activel
		{
		 background: url(../img/address-select.png) no-repeat right bottom;
		}
    </style>
</head>
<body class="graybg-theme">
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

    <div class="wrapper confirm-wrap">
        <div class="confirm-tit">
            <span class="tit">选择收货地址 :</span>
        </div>
        <div class="confirm-address clearfix">
            <c:forEach items="${orderShips}" var="ordership">
	            <div class="col col-4">
	                <div class="item">
	                	<input type="hidden" value="${ordership.receiverState},${ordership.receiverCity} ,${ordership.receiverName},${ordership.receiverAddress},${ordership.receiverMobile},${ordership.receiverZip}"/>
	                    <div class="action">
	                        <a class="label">修改</a>
	                    </div>
	                    <div class="info">
	                        <div class="ellipsis" id="e1"><img src="../img/ico/user.jpg" alt="" />${ordership.receiverState},${ordership.receiverCity} (${ordership.receiverName} 收)</div>
	                        <div class="ellipsis" id="e2"><img src="../img/ico/dizhi.jpg" alt="" />${ordership.receiverAddress}</div>
	                        <div class="ellipsis" id="e3"><img src="../img/ico/tel.jpg" alt="" />${ordership.receiverMobile}</div>
	                    </div>
	                </div>
	            </div>
            </c:forEach>
            <div class="col col-4">
                <a class="item va-m-box ta-c add">
                    <div class="add-new">
                        <span class="ico"><i class="iconfont icon-tianjia"></i></span>
                        <div class="label">添加收货地址</div>
                    </div>
                </a>
            </div>
        </div>
        <div class="confirm-address-bar"  style="display: none;">
            <a href="../javascript:;" class="drop" data-action="drop">显示全部地址</a>
        </div>
        <div class="confirm-tit">
           <span class="tit">确认商品信息:</span><div class="right"><a class="back" href="/cart/show">返回购物车></a></div>
        </div>
        <c:forEach items="${carts}" var="cart">
       		<c:set var="totalPrice"  value="${ totalPrice + (cart.itemPrice * cart.num)}"/>
       		<div class="confirm-goods">
	            <div class="confirm-goods-hd clearfix">
	                <div class="col col1">商品名称</div>
	                <div class="col col2">单价（元）</div>
	                <div class="col col3">数量</div>
	                <div class="col col4">金额（元）</div>
	            </div>
	            <div class="confirm-goods-bd">
	                <div class="goods clearfix">
	                    <div class="col col1">
	                    	<input class="itemid" type="hidden" value="${cart.itemId}"/>
	                        <img class="itemIm" src="${cart.itemImage}" alt="">
	                        <div class="info">
	                            <div class="name">${cart.itemTitle}</div>
	                        </div>
	                    </div>
	                    <div class="col col2"><div class="onlnum2">${cart.itemPrice}</div></div>
	                    <div class="col col3"><div class="onlnum1">${cart.num} </div></div>
	                    <div class="col col4">${cart.itemPrice * cart.num }</div>
	                </div>
	            </div>
        	</div>
       	 </c:forEach>
         <div class="confirm-total">
            <div class="box">
                <div class="item">应付总额：<strong>${totalPrice}</strong></div>
                <a class="ui-btn-theme go-charge" onclick="goSpend()">去结算</a>
            </div>
        </div>
    </div>
    <div id="addressform" style="display:none" class="layer-address">
            <div class="control-group">
                <div class="hd">
                    收货人姓名：
                </div>
                <div class="bd">
                    <input class="ui-txtin ui-txtin-thin" style="width: 200px;" type="text" name="myname" id="">
                </div>
            </div>
            <div class="control-group">
                <div class="hd">
                    联系电话：
                </div>
                <div class="bd">
                    <input class="ui-txtin ui-txtin-thin" style="width: 200px;" type="text" name="mymobile" id="">
                </div>
            </div>
            <div class="control-group">
                <div class="hd vat">
                    所在地区：
                </div>
                <div class="bd">
                    <select id="select1" class="ui-txtin ui-txtin-thin" style="width: 180px;" name="mystate" onchange="chinaChange(this,document.getElementById('city'));">
                        	<option value ="请选择区">请选择省份</option>
							<option value ="北京">北京市 </option>
							<option value ="天津">天津市 </option>
							<option value ="上海">上海市</option>
							<option value ="重庆">重庆市</option>
							<option value ="河北省">河北省 </option>
							<option value ="山西省">山西省 </option>
							<option value ="辽宁省">辽宁省 </option>
							<option value ="吉林省">吉林省 </option>
							<option value ="黑龙江省">黑龙江省</option>
							<option value ="江苏省"> 江苏省 </option>
							<option value ="浙江省">浙江省 </option>
							<option value ="安徽省">安徽省 </option>
							<option value ="福建省">福建省 </option>
							<option value ="江西省">江西省 </option>
							<option value ="山东省">山东省 </option>
							<option value ="河南省">河南省 </option>
							<option value ="湖北省">湖北省 </option>
							<option value ="湖南省">湖南省 </option>
							<option value ="广东省">广东省 </option>
							<option value ="海南省">海南省 </option>
							<option value ="四川省">四川省 </option>
							<option value ="贵州省">贵州省 </option>
							<option value ="云南省">云南省 </option>
							<option value ="陕西省">陕西省 </option>
							<option value ="甘肃省">甘肃省 </option>
							<option value ="青海省">青海省 </option>
							<option value ="台湾省">台湾省 </option>
							<option value ="广西壮族自治区">广西壮族自治区</option>
							<option value ="内蒙古自治区"> 内蒙古自治区</option>
							<option value ="西藏自治区"> 西藏自治区</option>
							<option value ="宁夏回族自治区"> 宁夏回族自治区 </option>
							<option value ="新疆维吾尔自治区">新疆维吾尔自治区</option>
							<option value ="香港特别行政区">香港特别行政区</option>
							<option value ="澳门特别行政区">澳门特别行政区</option>
                    </select>
                    <select name="mycity" id="city" class="ui-txtin ui-txtin-thin" style="min-width:100px">
						<option value ="请选择区">请选择区</option>
					</select> 
                    <div class="mt10">
                        <input class="ui-txtin ui-txtin-thin" style="width: 560px;" type="text" name="myaddress" id="" placeholder="请填写具体地址，不需要重复填写省/市/区">
                    </div>
                </div>
            </div>
            <div class="control-group">
                <div class="hd vat">
                    邮政编码：
                </div>
                <div class="bd">
                    <input class="ui-txtin ui-txtin-thin" style="width: 200px;" type="text" name="myzip" id="">
                </div>
            </div>
            <div class="control-bottom clearfix">
                <a onclick="addAddress()" class="fl btn ui-btn-theme">保存</a><a href="../" class="fr btn ui-btn cancle">取消</a>
            </div>
    </div>
</body>
<script src="../js/jquery.js"></script>
<link rel="stylesheet" href="../js/icheck/style.css"/>
<script src="../js/icheck/icheck.min.js"></script>
<script src="../js/layer/layer.js"></script>
<script src="../js/global.js"></script>
<script>

function addAddress(){
	$.ajax({
		type:'POST',
		url:"${pageContext.request.contextPath}/order/addAddress",
		data:{myname:$("input[name='myname']").val(),mymobile:$("input[name='mymobile']").val(),'mystate':$("#select1").val(),'mycity':$("#city").val(),myaddress:$("input[name='myaddress']").val(),myzip:$("input[name='myzip']").val() },
		dataType:"json",
		success:function(data){
			window.location.reload();
		},error:function (data){
			window.location.reload();
		}
	})
}

var carts = '${carts}';

jQuery(".item").click(function(){ 
	if(jQuery(this).attr("class").indexOf("activel")>0){ 
		jQuery(this).removeClass("activel") 
	}else{ 
		 $('.item').removeClass('activel');
		jQuery(this).addClass("activel") 
	} 
}); 

function goSpend(){
	var address = $(".activel").children().first().val();
	
	var title = new Array();
	$(".name").each(function() {
		title.push($(this).text());
	});
	
	var num = new Array();
	$(".onlnum1").each(function() {
		num.push($(this).text());
	});
	
	var picPath = new Array();
	$(".itemIm").each(function() {
		picPath.push($(this).attr("src"));
	});
	
	var price = new Array();
	$(".onlnum2").each(function() {
		price.push($(this).text());
	});
	
	var itemId = new Array();
	$(".itemid").each(function() {
		itemId.push($(this).val());
	});
	var urlo = "title="+title;
	urlo=encodeURI(encodeURI(urlo));
	var urlt = "&address="+address;
	urlt=encodeURI(encodeURI(urlt));
	if(address == "" || address == null || address == undefined){
		alert("请先选择收货地址");
	}else{
		window.location="${pageContext.request.contextPath}/order/submit?"+urlo+urlt+"&num="+num+"&money="+${totalPrice}+"&picPath="+picPath+"&price="+price+"&itemId="+itemId;
	}
	//window.location="${pageContext.request.contextPath}/order/submit?carts="+carts+"&address="+address+"&money="+${totalPrice};
}  

//这里不使用自带按钮，因为设计按钮较特殊，不准备作为通用样式
$('.confirm-address .edit,.confirm-address .add').on('click',function () {
    layer.open({
        type: 1,
        skin: 'layui-layer-seaing',
        title: '标题',
        area: ['720px', 'auto'],
        content: $('#addressform')
        //btn: ['按钮一', '按钮二']
    });
});
$(document.body).on('click','.layer-address .cancle',function () {
    layer.closeAll();
    return false;
})

//
function juggeAddressNum () {
    var col=$('.confirm-address .col'),
    cH=col.height();
    $('.confirm-address').height(cH)
    if (col.length>3) {
        $('.confirm-address-bar').show();
    }
    else {
        $('.confirm-address-bar').hide();
    }
}
juggeAddressNum();
zAction.add({
    'drop':function () {
        $('.confirm-address').height('auto')
        var h=$('.confirm-address').height()
        juggeAddressNum();
        $('.confirm-address').animate({height: h}, 300);
        $(this).parent().remove();
    }
});

var china=new Object();
china['北京']=new Array('北京区','北京辖区');
china['上海']=new Array('上海区','上海辖区');
china['天津']=new Array('天津区','天津辖区');
china['重庆']=new Array('重庆区','重庆辖区');
china['河北省'] = new Array('石家庄', '唐山', '邯郸', '秦皇岛', '保定', '张家口', '承德', '廊坊', '沧州', '衡水', '邢台');
china['山西省']=new Array('太原','大同','阳泉','长治','晋城','朔州','晋中','运城','忻州','临汾','吕梁');
china['辽宁省']=new Array('沈阳','大连','鞍山','抚顺','本溪','丹东','锦州','营口','阜新','辽阳','盘锦','铁岭','朝阳','葫芦岛');
china['吉林省']=new Array('长春','吉林','四平','辽源','通化','白山','松原','白城','延边州','长白山管委会');
china['黑龙江省']=new Array('哈尔滨','齐齐哈尔','大庆','佳木斯','牡丹江','七台河','双鸭山','黑河','鸡西','伊春','绥化','鹤岗','加格达奇');
china['江苏省']=new Array('南京','苏州','无锡','常州','南通','扬州','镇江','泰州','盐城','连云港','宿迁','淮安','徐州');
china['浙江省']=new Array('杭州','宁波','温州','嘉兴','湖州','绍兴','金华','衢州','舟山','台州','丽水');
china['安徽省']=new Array('合肥','芜湖','蚌埠','淮南','马鞍山','淮北','铜陵','安庆','黄山','滁州','阜阳','宿州','巢湖','六安','亳州','池州','宣城');
china['福建省']=new Array('福州','厦门','莆田','三明','泉州','漳州','南平','龙岩','宁德');
china['江西省']=new Array('南昌','景德镇','萍乡','九江','新余','鹰潭','赣州','吉安','宜春','抚州','上饶');
china['山东省']=new Array('济南','青岛','淄博','枣庄','东营','烟台','潍坊','济宁','泰安','威海','日照','莱芜','临沂','德州','聊城','滨州','菏泽');
china['河南省']=new Array('郑州','开封','洛阳','平顶山','安阳','鹤壁','新乡','焦作','濮阳','许昌','漯河','三门峡','南阳','商丘','信阳','周口','驻马店');
china['湖北省']=new Array('武汉','黄石','十堰','荆州','宜昌','襄樊','鄂州','荆门','孝感','黄冈','咸宁','随州');
china['湖南省']=new Array('长沙','株洲','湘潭','衡阳','邵阳','岳阳','常德','张家界','益阳','郴州','永州','怀化','娄底');
china['广东省']=new Array('广州','深圳','珠海','汕头','韶关','佛山','江门','湛江','茂名','肇庆','惠州','梅州','汕尾','河源','阳江','清远','东莞','中山','潮州','揭阳','云浮');
china['海南省']=new Array('文昌','琼海','万宁','五指山','东方','儋州');
china['四川省 ']=new Array('成都','自贡','攀枝花','泸州','德阳','绵阳','广元','遂宁','内江','乐山','南充','眉山','宜宾','广安','达州','雅安','巴中','资阳');
china['贵州省']=new Array('贵阳','六盘水','遵义','安顺');
china['云南省']=new Array('昆明','曲靖','玉溪','保山','昭通','丽江','普洱','临沧');
china['陕西省']=new Array('西安','铜川','宝鸡','咸阳','渭南','延安','汉中','榆林','安康','商洛');
china['甘肃省']=new Array('兰州','金昌','白银','天水','嘉峪关','武威','张掖','平凉','酒泉','庆阳','定西','陇南');
china['青海省']=new Array('西宁');
china['台湾省'] = new Array('台北','高雄','基隆','台中','台南','新竹','嘉义');
china['广西壮族自治区']=new Array('南宁','柳州','桂林','梧州','北海','防城港','钦州','贵港','玉林','百色','贺州','河池','来宾','崇左');
china['内蒙古自治区']=new Array('呼和浩特','包头','乌海','赤峰','通辽','鄂尔多斯','呼伦贝尔','巴彦淖尔','乌兰察布'); 
china['西藏自治区']=new Array('拉萨');
china['宁夏回族自治区']=new Array('银川','石嘴山','吴忠','固原','中卫');
china['新疆维吾尔自治区']=new Array('乌鲁木齐','克拉玛依');
china['香港特别行政区']=new Array('台北','高雄','基隆','台中','台南','新竹','嘉义');

function chinaChange(province, city) {
	var pv, cv;
	var i, ii;
	pv = province.value;
	cv = city.value;
	city.length = 1;
	if (pv == '0') return;
	if (typeof (china[pv]) == 'undefined') return;
	
	
	for (i = 0; i < china[pv].length; i++) { 
	ii = i + 1;
	
	city.options[ii] = new Option();
	city.options[ii].text = china[pv][i];
	city.options[ii].value = china[pv][i];
	}
	city.options[0].text = "请选择区";

};
</script>
</html>