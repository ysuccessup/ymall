<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>切换城</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="../css/common.css" rel="stylesheet"/>
    <link href="../css/home.css" rel="stylesheet"/>
    <style type="text/css">
  	    .logout:hover{ color:red; cursor:pointer;}
    	span:hover { text-decoration: underline; cursor:pointer;}
    </style>
</head>
<body>
    <!--头部-->
    <jsp:include page="/WEB-INF/views/header.jsp">
	    <jsp:param name="city" value="${city}"/>  
	</jsp:include> 
    <!--头部-->
    <div class="city-chose-bar">
        <div class="wrapper">
            <div class="label">按省份选择：</div>
            <select name="" id="" class="ui-txtin mr5" style="min-width:100px" onchange="chinaChange(this,document.getElementById('city'));">
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
			<select name="city" id="city" class="ui-txtin mr5" style="min-width:100px">
				<option value ="请选择区">请选择区</option>
			</select>      
            <button type="button" class="ui-btn-theme mr5" onclick="submitCity()">确定</button>
            <div class="label ml25">直接搜索：</div>
            <input type="text" class="ui-txtin" placeholder="请输入城中文或拼音"  style="width:350px" />
        </div>
    </div>
    <div class="city-chose-quick">
        <div class="wrapper mb15">
            <div class="tit">常用城市：</div>
            <div class="list">
                <a href="../">上海</a><a href="../">北京</a><a href="../">天津</a><a href="../">合肥</a><a href="../">芜湖</a><a href="../">深圳</a><a href="../">上海</a><a href="../">上海</a><a href="../">上海</a><a href="../">上海</a>
            </div>
        </div>
        <div class="wrapper">
            <div class="tit">最近访问：</div>
            <div class="list">
                <a href="../">上海</a><a href="../">北京</a><a href="../">天津</a><a href="../">合肥</a><a href="../">芜湖</a><a href="../">深圳</a><a href="../">上海</a><a href="../">上海</a><a href="../">上海</a><a href="../">上海</a>
            </div>
        </div>
    </div>
    <div class="city-chose-main">
        <div class="wrapper">
            <div class="chose-tip">按拼音首字母选择</div>
            <div class="city-chose-list" style="overflow:yes"> 
                <div class="item clearfix">
                   <span class="label">A</span> <a href="../">鞍山</a><a href="../">阿拉善盟</a><a href="../">安庆</a><a href="../">安阳</a><a href="../">安顺</a>
                </div>
                <div class="item clearfix">
                   <span class="label">B</span> <a href="../">鞍山</a><a href="../">阿拉善盟</a><a href="../">安庆</a><a href="../">安阳</a><a href="../">安顺</a>
                </div>
                <div class="item clearfix">
                   <span class="label">C</span> <a href="../">鞍山</a><a href="../">阿拉善盟</a><a href="../">安庆</a><a href="../">安阳</a><a href="../">安顺</a>
                </div>
                <div class="item clearfix">
                   <span class="label">D</span> <a href="../">鞍山</a><a href="../">阿拉善盟</a><a href="../">安庆</a><a href="../">安阳</a><a href="../">安顺</a>
                </div>
            </div>
        </div>
    </div>
     <!--脚部-->
     <%@ include file="/WEB-INF/views/foot.jsp" %>
    <!--脚部-->
</body>
<script src="../js/jquery.js"></script>
<link rel="stylesheet" href="../js/slick/slick.css"/>
<script src="../js/slick/slick.min.js"></script>
<script src="../js/global.js"></script>
<script type="text/javascript">
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
	
	function submitCity(){
		var cityV = $("#city option:checked").text();
		window.location="${pageContext.request.contextPath}/page/index?city="+cityV;  
	}
	
	function logout(){
		window.location="${pageContext.request.contextPath}/loginReg/login"; 
	}
</script>
</html>