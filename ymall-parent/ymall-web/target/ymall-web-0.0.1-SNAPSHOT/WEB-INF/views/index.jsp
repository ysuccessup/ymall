<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>7MALL网上商城-综合网购首选（7MALL.COM）-正品低价、品质保障、货到付款、配送及时、放心服务、轻松购物！</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="../css/common.css" rel="stylesheet"/>
    <link href="../css/home.css" rel="stylesheet"/> 
    <script src="../js/jquery.js"></script>
	<link rel="stylesheet" href="../js/slick/slick.css"/>
	<script src="../js/slick/slick.min.js"></script>
	<script src="../js/global.js"></script> 
    <style type="text/css">
    	.inner-text,.logout:hover{ color:red; cursor:pointer;}         
    </style>
</head>
<body>
  <!--头部-->
    <jsp:include page="/WEB-INF/views/header.jsp">
	    <jsp:param name="userName" value="${userName}"/>  
	</jsp:include> 
	<div class="header-wrap">
        <div class="header wrapper">
            <a href="" class="logo">
                <img src="../img/logo3.jpg" alt="" />
            </a>
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

    <div class="side-category" style="display: none;">
        <div class="side-category-tit">全品分类</div>
        <div class="side-category-bd">
            <div class="f-item">
                <div class="f-box">
                    <div class="f-tit">玩转3C</div>
                    <div class="f-list">
                        <a href="">手机</a><a href="">数码</a><a href="">通信</a>
                    </div>
                </div>
                <div class="c-box">
                    <div class="hd">分类</div>
                    <div class="bd">
                        <div class="list-wrap">
                            <a href="">冷却泵</a>
                            <a href="">冷却水管道</a>
                            <a href="">冷凝器</a>
                            <a href="">压缩机</a>
                            <a href="">冷冻水塔</a>
                            <a href="">压缩机</a>
                            <a href="">冷凝器</a>
                            <a href="">压缩机</a>
                            <a href="">冷冻水塔</a>
                        </div>
                    </div>
                    <div class="ft">
                        <a href=""><img class="ad" src="../uploads/10.jpg" /></a>
                    </div>
                </div>
            </div>
            <div class="f-item">
                <div class="f-box">
                    <div class="f-tit">服饰家居</div>
                    <div class="f-list">
                        <a href="">服饰内衣</a><a href="">鞋靴箱包</a>
                    </div>
                </div>
                <div class="c-box">
                </div>
            </div>
            <div class="f-item">
                <div class="f-box">
                    <div class="f-tit">商城超市</div>
                    <div class="f-list">
                        <a href="">服饰内衣</a><a href="">鞋靴箱包</a>
                    </div>
                </div>
                <div class="c-box">
                </div>
            </div>
            <div class="f-item">
                <div class="f-box">
                    <a  class="f-tit" href="index-dq.html">家用电器</a>
                    <div class="f-list">
                        <a href="">服饰内衣</a><a href="">鞋靴箱包</a>
                    </div>
                </div>
                <div class="c-box">
                </div>
            </div>
            <div class="f-item">
                <div class="f-box">
                    <a class="f-tit" href="index-sxtc.html">生鲜特产</a>
                    <div class="f-list">
                        <a href="">食品</a><a href="">生鲜</a><a href="">特产</a><a href="">水果</a>
                    </div>
                </div>
                <div class="c-box">
                </div>
            </div>
        </div>
        <div class="side-category-ft" data-action="category-toggle">
            <span class="label tohide">收起导航</span>
            <span class="label toshow">展开导航</span>
        </div>
    </div>

    <div class="home-full-banner">
        <a href="" class="item"><img data-lazy="../uploads/banner1.jpg" alt="" /></a>
        <a href="" class="item"><img data-lazy="../uploads/banner-dq.jpg" alt="" /></a>
    </div>

    <div class="gray-box">
        <div class="wrapper">
            <!-- 商品促销 -->
            <div class="promo-list clearfix">
                <div class="col">
                    <span class="item" onclick="goodsDetail()"><img src="../uploads/13.jpg" alt="" /></span>
                </div>
                <div class="col">
                    <span class="item" onclick="goodsDetail()"><img src="../uploads/14.jpg" alt="" /></span>
                </div>
                <div class="col">
                    <span class="item" onclick="goodsDetail()"><img src="../uploads/15.jpg" alt="" /></span>
                </div>
                <div class="col">
                    <span class="item" onclick="goodsDetail()"><img src="../uploads/16.jpg" alt="" /></span>
                </div>   
            </div>    

            <!-- 限时抢购 -->
            <div class="flash-sale-section">
                <div class="section-hd">
                    <div class="title">限时抢购</div>
                </div>
                <div class="flash-sale clearfix">
                    <div class="grid grid-b">
                        <a href="goods-detail.html"><img src="../uploads/17.jpg" alt="" /></a>
                    </div>
                    <div class="grid grid-m">
                            <div class="inner-text" onclick="inGoodsdetail()">
                                <div class="tit">Apple/苹果 iPhone 6s Plus</div>
                                <div class="info">购机送礼 国行正品 顺丰包邮</div>
                            </div>
                            <img src="../uploads/ipone6s.jpg" alt="" />
                    </div>
                    <div class="grid grid-s">
                            <div class="inner-text" onclick="inGoodsdetails()">
                                <div class="tit">Beats Studio3 Wireless 头戴式耳机</div>
                                <div class="info">为声音而造 为感情而生</div>
                            </div>
                            <img src="../uploads/beats.jpg" alt="" />
                    </div>
                    <div class="grid grid-s">
                            <div class="inner-text">
                                <div class="tit">靠谱好装备</div>
                                <div class="stit">简约书台柜组合</div>
                            </div>
                            <img src="../uploads/57.jpg" alt="" />
                    </div>
                    <div class="grid grid-s">
                            <div class="inner-text">
                                <div class="tit">无线运动耳麦</div>
                                <div class="stit">大牌钜惠驾到</div>
                            </div>
                            <img src="../uploads/52.jpg" alt="" />
                    </div>
                    <div class="grid grid-s">
                            <div class="inner-text">
                                <div class="tit">靠谱好装备</div>
                                <div class="stit">简约书台柜组合</div>
                            </div>
                            <img src="../uploads/20.jpg" alt="" />
                    </div>
                    <div class="grid grid-s">
                            <div class="inner-text">
                                <div class="tit">无线运动耳麦</div>
                                <div class="stit">大牌钜惠驾到</div>
                            </div>
                            <img src="../uploads/19.jpg" alt="" />
                    </div>
                    <div class="grid grid-s">
                            <div class="inner-text">
                                <div class="tit">靠谱好装备</div>
                                <div class="stit">简约书台柜组合</div>
                            </div>
                            <img src="../uploads/20.jpg" alt="" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="white-box">
        <div class="wrapper">
            <!-- 品牌盛宴 -->
            <div class="brand-feast-section">
                <div class="section-hd">
                    <div class="title">品牌盛宴</div>
                </div>
                <div class="brand-feast clearfix">
                    <div class="ad-box">
                        <a href=""><img src="../uploads/21.jpg" /></a>
                    </div>
                    <div class="brand-feast-list">
                        <div class="item">
                            <div class="logo"><img src="../uploads/23.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/24.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/25.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/26.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/23.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/24.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/25.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/26.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/23.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/24.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/25.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/26.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/23.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/24.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/25.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/26.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/25.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                        <div class="item">
                            <div class="logo"><img src="../uploads/26.jpg" alt="" /></div>
                            <a class="mask" href=""><span class="text">九阳<br />爆款直降低至49元</span></a>
                        </div>
                    </div>
                </div>
                <!-- 广告 -->
                <div style="margin-top:12px;">
                    <a href=""><img src="../uploads/22.jpg" alt="" /></a>
                </div>
            </div>
        </div>
    </div>
    <!-- 脚部-->
    <%@ include file="/WEB-INF/views/foot.jsp" %>
    <!-- 脚部-->
</body>
<script>
	
    $('.home-full-banner').slick({
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: false,
        dots: true,
        fade: true
      });
	
    //加号可以替换成 ~ , * , + , - , ! 等其他一元操作符,作用是 把该函数变成自执行函数
    +function () {
        var bigH=$('.side-category').height();
        $(window).on('scroll resize load',function () {
            var sTop=$(this).scrollTop(),
            valve=$('.home-full-banner').offset().top+$('.home-full-banner').height(),
            wH=$(this).height();

            //控制导航显示
            if (sTop>valve) {
                $('.side-category').show();
            }
            else {
                $('.side-category').hide();
            }
        })
    }();
     zAction.add({
        'category-toggle':function () {
            if ($(this).hasClass('on')) {
                $(this).removeClass('on').prev().slideDown(200);
            }
            else {
                $(this).addClass('on').prev().slideUp(200);
            }
        },

    });
	
     function inGoodsdetail(){
    	 var id="536563";
    	 window.location="${pageContext.request.contextPath}/item/"+id;  
     }
     
     
     function inGoodsdetails(){
    	 var id="562379";
    	 window.location="${pageContext.request.contextPath}/item/"+id;  
     }
     
</script>
</html>