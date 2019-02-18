<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>商品详情页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="../css/common.css" rel="stylesheet"/>
    <link href="../css/goods-detail.css" rel="stylesheet"/>
    <script src="../js/jquery.js"></script>
	<link rel="stylesheet" href="../js/slick/slick.css"/>
	<script src="../js/slick/slick.min.js"></script>
	<script src="../js/global.js"></script>
    <style type="text/css">
    	.logout:hover{ color:red; cursor:pointer;}
    	span:hover {cursor:pointer;}
    </style>
</head>
<body>
    <!--头部-->
    <jsp:include page="/WEB-INF/views/header.jsp">
	    <jsp:param name="city" value="${city}"/>  
	</jsp:include> 
	<div class="header-wrap">
        <div class="header wrapper">
            <div class="header-schbox">
                <div class="inner clearfix">
                <form action="" method="">
                    <div class="search-switch">
                        <i class="arrow"></i>
                        <div class="item">商品</div>
                        <div class="item active">店铺</div>
                    </div>
                    <input class="search-txt" placeholder="搜流行宝贝">
                    <button class="search-btn"></button>
                    <div class="suggest-box">
                        <div class="item" data-title="上衣 短款 短袖">上衣 短款 短袖<div class="tags"><span>雪纺</span><span>蕾丝</span><span>一字领</span></div></div>
                    </div>
                </form>
                </div>
                <div class="hot-words">
                    <a href="">太平鸟</a><a href="">手机 </a><a href="">内衣</a><a href="">周大福</a><a href="">太平鸟</a>
                </div>
            </div>
            <div class="contact">
                <div class="item">
                    <span class="ico iconfont">&#xe61b;</span>
                    <span class="tel">400-000-0000</span>
                </div>
                <div class="item">
                     <span class="ico iconfont">&#xe61d;</span><a class="kefu">在线客服</a>
                </div>
            </div>
        </div>
    </div>
    <div class="nav-box">
        <div class="nav wrapper">
            <div class="slogan"></div>
            <ul class="nav-ul">
                <li><a href="">首页</a></li>
                <li><a href="">服装城</a></li>
                <li><a href="">美妆馆</a></li>
                <li><a href="">新品首发</a></li>
                <li><a href="">低价抢购</a></li>
            </ul>
            <div class="nav-ad"><a class="ad" href=""><img src="../uploads/nav-ad.jpg" alt="" /></a></div>
        </div>
    </div>
    <!--头部-->

    <div class="wrapper">
        <div class="detail-top clearfix">
            <div class="detail-goods">
                <div class="detail-show">
                    <div class="origin-show">
                        <div class="zoomup"></div>
                        <img class="big-pic" src="" alt="${item.title}" />
                    </div>
                    <div class="thumb-show">
                   	  	<c:forEach items="${images}" var="ims" varStatus="status">
	                        <span class="item"><img class="s-pic" src="${ims }" bsrc="${ims}" /></span>
                        </c:forEach>
                    </div>
                    <div class="zoom-show">
                        <img src="" alt="" />
                    </div>
                </div>
                <div class="detail-info">
                    <div class="item-title">${item.title}</div>
                    <div class="item-price">
                        <span class="now">${item.price}</span><span class="dft">${item.price * 2 - item.price*0.5}</span>
                    </div>
                    <ul class="item-data clearfix">
                        <li class="col-6" style="color: red;">卖点<span class="txt-theme ml10">${item.sellPoint }</span></li>
                    </ul>
                    <div class="sku-info">
                        <div class="prop">
                            <div style="display: table-cell; vertical-align: top; padding: 5px 5px 5px 0; width: 70px;">选择颜色：</div>
                            <div class="dd">
                                <ul class="chose-img">
                                	<c:forEach items="${BigImages}" var="Bimages" varStatus="status">
                                    	<li><a class="active"><img src="${Bimages }" alt="" /></a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <div class="prop">
                            <div style="display: table-cell; vertical-align: top; padding: 5px 5px 5px 0; width: 70px;">选择版本：</div>
                            <div class="dd">
                                <ul class="chose-common">
                                    <li><a id="oa">全网通(4G+64G)高配版</a></li>
                                    <li><a id="oa">全网通(4G+128G)顶配版</a></li>
                                    <li><a id="oa">全网通(4G+128G)移动版</a></li>
                                    <li><a id="oa">全网通(4G+32G)标配版</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="prop">
                            <div style="display: table-cell; vertical-align: top; padding: 5px 5px 5px 0; width: 70px;">购买数量：</div>
                            <div class="dd">
                                <div class="mod-numbox chose-num" data-max="30">
                                    <span class="count-minus"></span>
                                    <input class="count-input" value="1"  type="text" name="num" />
                                    <span class="count-plus"></span>
                                </div>
                                <span>（限购30件）</span>
                                <div class="stock">(库存${item.num}件)</div>
                            </div>
                        </div>
                    </div>
                    <div class="item-action">
                        <span onclick="buyNow()" class="buy-now">立即购买</span>
                        <span onclick="addCart()" class="add-cart">加入购物车</span>
                    </div>
                </div>
            </div>
            <div class="detail-shop">
                <div class="clearfix">
                    <a class="shop-brand" href="../">
                        <img src="../uploads/1.png" alt="" />
                    </a>
                    <div class="shop-intro">
                        <div class="shop-name">女神屋</div>
                        <!-- <a class="shop-follow-btn" href="../javascript:;"><i class="iconfont icon-jiaguanzhu"></i>关注</a> -->
                        <a class="shop-follow-btn active" href="../javascript:;"><span class="showtxt"><i class="iconfont icon-check01"></i>已关注</span><span class="hidetxt">取消关注</span></a>
                        <div class="shop-follow-count"><strong>268</strong>粉丝</div>
                    </div>
                </div>
                <div class="shop-assess clearfix">
                    <div class="col col-3">
                        <div class="tit">描&ensp;述</div>
                        <div class="point">
                            <span class="num">4.8</span><i class="iconfont">--</i>
                        </div>
                    </div>
                    <div class="col col-3">
                        <div class="tit">质&ensp;量</div>
                        <div class="point up">
                            <span class="num">4.9</span><i class="iconfont">--</i>
                        </div>
                    </div>
                    <div class="col col-3">
                        <div class="tit">服&ensp;务</div>
                        <div class="point down">
                            <span class="num">4.7</span><i class="iconfont">--</i>
                        </div>
                    </div>
                    <div class="col col-3">
                        <div class="tit">发&ensp;货</div>
                        <div class="point">
                            <span class="num">4.8</span><i class="iconfont">--</i>
                        </div>
                    </div>
                </div>
                <ul class="shop-info">
                    <li>所在地区：广东广州</li>
                    <li>商品数量：518</li>
                    <li>销售数量：60285</li>
                    <li>店铺资质：<img class="ico" src="../img/ico/approve.png" alt="" /></li>
                </ul>
                <a class="detail-shop-enter">
                    <i class="iconfont icon-dianpu"></i>进入店铺
                </a>
            </div>
        </div>
        <div class="detail-bottom clearfix">
             <div class="detail-main">
                <div class="detail-tabs">
                    <a class="item" href="../javascript:;">详情描述</a>
                    <a class="item" href="../javascript:;">规格参数</a>
                    <a class="item" href="../javascript:;">商品评价</a>
                </div>
                <div class="tab-con">
                    <div class="mod-type-cont">
                       ${itemDesc.itemDesc }
                    </div>
                </div>
                <div class="tab-con">
                    ${itemParam.paramData}
                </div>   
                <div class="tab-con">
                    <div class="detail-pj">
                        <div class="detail-pj-nav list clearfix">
                            <div class="col col1">评价心得</div>
                            <div class="col col2">满意度</div>
                            <div class="col col3">商品信息</div>
                            <div class="col col4">评价用户</div>
                        </div>
                        <div class="detail-pj-cont">
                        	 <c:forEach items="${itemComment}" var="comment">
				            	 <div class="reply list clearfix">
                                	<div class="col col1">${comment.content }<span class="time">${comment.time }</span></div>
	                                <div class="col col2">${comment.isatisfy }</div>
	                                <div class="col col3"></div>
                                	<div class="col col4"><img class="hdpic" width="40" height="40" src=""><div>${comment.userId }</div></div>
                               	</div>
			            	</c:forEach>
			            	<!--未添加分页 -->   
                        </div>   
                    </div>
                </div>
            </div>
            <div class="detail-aside">
                <div class="detail-aside-box mb15">
                    <div class="big-tit">商品分类</div>
                    <div class="detail-menu">
                        <div class="item">
                            <div class="type" data-action="shopd-type"><span class="iconfont"></span><a href="../">男鞋</a></div>
                            <ul class="c-type">
                                <li><a href="../">圆头鞋</a></li>
                                <li><a href="../">马丁靴</a></li>
                                <li><a href="../">豆豆鞋</a></li>
                                <li><a href="../">帆布鞋</a></li>
                                <li><a href="../">单鞋</a></li>
                            </ul>
                        </div>
                        <div class="item">
                            <div class="type" data-action="shopd-type"><span class="iconfont"></span><a href="../">女鞋</a></div>
                            <ul class="c-type">
                                <li><a href="../">圆头鞋</a></li>
                                <li><a href="../">马丁靴</a></li>
                                <li><a href="../">豆豆鞋</a></li>
                                <li><a href="../">帆布鞋</a></li>
                                <li><a href="../">单鞋</a></li>
                            </ul>
                        </div>
                        <div class="item">
                            <div class="type" data-action="shopd-type"><span class="iconfont"></span><a href="../">童鞋</a></div>
                            <ul class="c-type">
                                <li><a href="../">圆头鞋</a></li>
                                <li><a href="../">马丁靴</a></li>
                                <li><a href="../">豆豆鞋</a></li>
                                <li><a href="../">帆布鞋</a></li>
                                <li><a href="../">单鞋</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
    <!--脚部-->
    <div class="fatfooter">
    </div>
    <!--脚部-->
</body>
<script>
	
	var Bimageurl = '${ims}'.substring(0,42);
	var id = '${item.id}';
	
	function addCart(){
		var num = $(".count-input").val();
		window.location="${pageContext.request.contextPath}/cart/add/"+id+"/"+num;
	}
	
	function buyNow(){
		var num = $(".count-input").val();
		window.location="${pageContext.request.contextPath}/order/buyNow?checkval="+id+"&num="+num;
	}
	
	$(document).ready(function(){
	  $("li a").click(function(){
		  if($(this).hasClass("active")){
			 $(this).removeClass("active");
		  }else{
			 $("li a").removeClass("active");
		     $(this).addClass("active");
		  }
	  });
	});
	
    /*商品数量操作*/
    function goodsCount(o){
            if(!(o instanceof Object)) var o={};
            var inputCell = o.inputCell || ".count-input",
                minusCell = o.minusCell || ".count-minus",
                plusCell = o.plusCell || ".count-plus",
                disClass = o.disClass || "disabled";
            return this.each(function(){
                var $wrap = $(this),
                    $input = $(inputCell,$wrap),
                    $minus = $(minusCell,$wrap),
                    $plus = $(plusCell,$wrap),
                    maxnum=parseInt($wrap.attr('data-max')) || false,
                    minnum=$wrap.attr('data-min') || 1,
                    initnum=$input.val() || minnum;
                /*初始*/
                $input.val(initnum);
                checkIlegal();
                function checkIlegal(){
                    var value =parseInt($input.val());

                    //
                     if (maxnum&&value>maxnum) {
                        $input.val(maxnum);
                    }
                    else if (value<minnum) {
                        $input.val(minnum);
                    }
                    if(value<=minnum){
                        $minus.addClass(disClass);
                    }else{
                        $minus.removeClass(disClass);
                    }
                    if (value>=maxnum) {
                        $plus.addClass(disClass);
                    }else {
                        $plus.removeClass(disClass);
                    }

                }
                function checknull() {
                    var value =$input.val();
                    if(value === "" || value === "0"){
                        $input.val(minnum);
                    }
                }
                $input.keyup(function(evt){
                    var value = $(this).val();
                    var newvalue = value.replace(/[^\d]/g,"");
                    $(this).val(newvalue);
                    checknull();
                });
                $input.blur(function(){
                    checknull();
                    checkIlegal();
                })

                $minus.click(function(){
                    minus();
                     checkIlegal();
                });

                $plus.click(function(){
                    add();
                    checkIlegal();
                });

                function add () {
                    var value = $input.val();
                    var plus = parseInt(value)+1;
                    $input.val(plus);
                }
                function minus () {
                    var value = parseInt($input.val());
                    var minus = value-1;
                    $input.val(minus);
                }
            });
        }
        $.fn.goodsCount = goodsCount;
</script>

<script >
    $(function () {

        +function () {
            var index=0,
            bsrc='',
            timer=null,
            box=$('.detail-show'),
            origin=$('.origin-show'),
            bigimg=box.find('.big-pic'),
            tumb=box.find('.thumb-show'),
            tumbItem=tumb.find('.item'),
            zoomup=box.find('.zoomup'),
            zoomshow=box.find('.zoom-show');

            /*图片切换*/
            tumbItem.on('mouseenter',function () {
                index=$(this).index();
                clearTimeout(timer);
                timer=setTimeout(function (){
                    update(index);
                }, 300)

            });

            function update (index) {
                bsrc=tumbItem.eq(index).find('.s-pic').attr('bsrc');
                bigimg.attr('src', bsrc);
                tumbItem.find('.s-pic').removeClass('active').end().eq(index).find('.s-pic').addClass('active');
            }

            update(index);

            if ($('.detail-show .thumb-show .item').length>5) {
                $('.detail-show .thumb-show').slick({
                    slidesToShow: 5,
                    infinite:false
                });
            }

            /*放大镜*/
            origin.on('mouseover mouseout',function (e) {
                if (e.type=="mouseover") {
                    var oX=$(this).offset().left,
                    oY=$(this).offset().top,
                    zX=e.pageX,
                    zY=e.pageY,
                    pW=$(this).outerWidth(),
                    pH=$(this).outerHeight(),
                    zW=zoomup.outerWidth(),
                    zH=zoomup.outerHeight(),
                    scale=pW/zW,
                    zsW=zoomshow.width()*scale,//放大后的宽度
                    factor=zsW/pW

                    zoomshow.find('img').attr('src',bigimg.attr('src')).width(zsW);

                    $(document).on('mousemove.zoom',function (e) {
                        zX=e.pageX-oX- zW/2;
                        zY=e.pageY-oY- zH/2;
                        move();
                    });

                    function move () {
                        zX=zX<=0?0:zX;
                        zX=zX>=pW-zW?pW-zW:zX;
                        zY=zY<=0?0:zY;
                        zY=zY>=pH-zH?pH-zH:zY;
                        zoomup.show().css({top:zY,left:zX});
                        zoomshow.show().find('img').css({top:-zY*factor,left:-zX*factor});
                    }
                }
                else {
                    $(document).off('mousemove.zoom');
                     zoomup.hide()
                     zoomshow.hide();
                }
            });
        }();

        $('.mod-numbox').goodsCount(); //数量加减

        $('.detail-main').zTab({
            tabnav:'.detail-tabs',
            trigger:'click'
        });
    });
</script>
</html>