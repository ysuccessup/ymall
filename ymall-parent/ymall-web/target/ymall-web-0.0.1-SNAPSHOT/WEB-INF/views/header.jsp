<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
		.name:hover { text-decoration: underline; cursor:pointer;}
    	.myorder:hover { color:red; cursor:pointer;}
    	.mycart:hover { color:red; cursor:pointer;}
    	.myfav:hover { color:red; cursor:pointer;}
    	.myhelp:hover { color:red; cursor:pointer;}
    	.toggle:hover {cursor:pointer;}
</style>
</head>
<body>
<div class="topper">
        <div class="wrapper">
            <div class="left-bar">
                <div class="back-home divider">
                    <em></em><a href="${pageContext.request.contextPath}/index">商城首页</a> 
                </div>
                <div class="item" id="afte"><a href="">商家中心</a></div>
                <div class="item" id="dele1"><a href="/user/login">您好，请登陆</a></div>
                <div class="item" id="dele2"><a href="/user/register">免费注册</a></div>   
            </div>
            <div class="right-bar">
                <div class="cart"><em></em><span onclick="myCart()" class="mycart">我的购物车</span></div>
                <div class="order"><em></em><span onclick="myOrder()" class="myorder">我的订单</span></div>
                <div class="fav"><em></em><span onclick="myFav()" class="myfav">我的收藏</span></div>
                <div class="help"><em></em><span onclick="myHelp()" class="myhelp">帮助中心</span></div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
	var userName= '${userName}';
	
	function getcookie(objname){//获取指定名称的cookie的值
		var arrstr = document.cookie.split("; ");
		for(var i = 0;i < arrstr.length;i ++){
			var temp = arrstr[i].split("=");
			if(temp[0] == objname) return unescape(temp[1]);
		}
	}
	
	function checkLogin(){
		var _ticket = getcookie("ymall_TICKET");
		$.ajax({
			type: "POST",
			url : "http://sso.7mall.com/user/query/" + _ticket,   
			dataType:'jsonp', 
            jsonp: "callback",
			jsonpCallback:"MusicHandler",
			success : function(result){
				 if (result) {
                     var obj = eval(result);
					 $("#dele1").remove();
			    	 $("#dele2").remove();
			    	 $("#afte").after("<div class=\"item\" id=\"new1\">Hi,<a>"+obj.username+"</a></div>");
			    	 $("#new1").after("<div class=\"item\" id=\"new2\" onclick=\"logout()\"><a>退出</a></div>");
            	 }
			}
		});
	}   

	
	window.onload=function(){
		// 查看是否已经登录，如果已经登录查询登录信息
		checkLogin();
	}

	function logout(){
		window.location="${pageContext.request.contextPath}/user/logout";
	}
	
	function goodsDetail(){
		standardPost ('${pageContext.request.contextPath}/page/goodsDetail',args);
	}
	
	function myOrder(){
		window.location="${pageContext.request.contextPath}/order/myorder";
	}
	
	function myCart(){
		window.location="${pageContext.request.contextPath}/cart/show";
	}
	
	function standardPost (url,args){  
	    var form = $("<form method='post'></form>");  
	    form.attr({"action":url});  
	    for (arg in args)  
	    {  
	        var input = $("<input type='hidden'>");  
	        input.attr({"name":arg});  
	        input.val(args[arg]);  
	        form.append(input);  
	    }  
	    $("html").append(form);  
	    form.submit();  
	}  
</script>
</html>