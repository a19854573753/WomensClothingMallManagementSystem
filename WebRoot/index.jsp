<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>六只兔子</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
      <link rel="stylesheet" type="text/css" href="css/proList.css"/>
</head>
<body>

<!------------------------------head------------------------------>
<!--加入头部  -->
<%@ include file="header.jsp" %>

<!-------------------------banner--------------------------->
<div class="block_home_slider">
    <div id="home_slider" class="flexslider">
        <ul class="slides">
          
            <li>
                <div class="slide"><img width="1440" height="500" alt="" src="img/bg.png"/></div>
            </li>
            <li>
                <div class="slide"><img width="1440" height="500" alt="" src="img/bg1.png"/></div>
            </li>
            
        </ul>
    </div>
</div>
<!------------------------------thImg------------------------------>
<div class="thImg">
    <div class="clearfix">
	    <a href="#"><img src="img/1.png"/></a>
	    <a href="#"><img src="img/2.png"/></a>
	      <a href="#"><img  src="img/3.png"/></a>
    </div>
</div>
<ul class="proList wrapper clearfix">
    
    	<c:forEach var="p" items="${plist }">
	    <li><a href="selectproductview?id=${p.product_id}&&fid=${p.product_fid}">
	        <dl>
	            <dt><img src="images/product/${p.product_filename}"></dt>
	            <dd>${p.product_name }</dd>       
	        </dl>
	    </a></li>
        </c:forEach>
    
</ul>
<ul class="proList wrapper clearfix"><h1 align="center"  style="color:red">活动通知</h1>
<c:forEach var="n" items="${nlist}">
						<li><h2><a href="newsselect2?id=${n.EN_ID }" target="_blank">${n.EN_TITLE }</a></h3></li>
					</c:forEach>
			</ul>	
<div class="gotop"><a href="showcart">
    <dl>
        <dt><img src="img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
    </dl>

    <p>400-800-8200</p></div><!-------------------login--------------------------><!--footer-->
<div class="footer">
    <div class="top">
        <div class="wrapper">
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot1.png"/></a><span class="fl">7天无理由退货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot2.png"/></a><span class="fl">15天免费换货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot3.png"/></a><span class="fl">满599包邮</span>
            </div>
            
        </div>
    </div>
    </div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.flexslider-min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">$(function () {
    $('#home_slider').flexslider({
        animation: 'slide',
        controlNav: true,
        directionNav: true,
        animationLoop: true,
        slideshow: true,
        slideshowSpeed: 2000,
        useCSS: false
    });
});</script>
</body>
</html>