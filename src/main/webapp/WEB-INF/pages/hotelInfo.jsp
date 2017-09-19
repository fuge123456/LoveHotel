<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>酒店详情</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- media ：支持类型-->
<link href="${app}/staticfile/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--slider-->
<link href="${app}/staticfile/css/camera.css" rel="stylesheet" type="text/css" media="all" />
<link href="${app}/staticfile/css/jquery.ligbhtbox.css" type="text/css" media="all"/>

    <script type='text/javascript' src='${app}/staticfile/js/jquery.min.js'></script>
    <script type='text/javascript' src='${app}/staticfile/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='${app}/staticfile/js/jquery.easing.1.3.js'></script>
    <script type='text/javascript' src='${app}/staticfile/js/camera.min.js'></script>
    <script>
		jQuery(function(){
			
			jQuery('#camera_wrap_1').camera({
				thumbnails: true
			});

			jQuery('#camera_wrap_2').camera({
				height: '400px',
				loader: 'bar',
				pagination: false,
				thumbnails: true
			});
		});
	</script>
<!--start lightbox -->
<link rel="stylesheet" type="text/css" href="${app}/staticfile/css/jquery.lightbox.css">
<script src="${app }/staticfile/js/jquery.lightbox.js"></script>
<script>
  // Initiate Lightbox
  $(function() {
    $('.gallery a').lightbox(); 
  });
</script>
</head>
<body>
<div class="wrapper">
<div class="wrap">
<div class="wrap_inner">
	<div class="cssmenu">
			<ul>
			   <li class="active"><a href="hotelInfo.jsp"><span id="hotelName">${hotel.hotelName }</span></a></li>
			   <li><a href="javascript:;" id="_queryMap"><span>线路查询</span></a></li>
			   <li><a href="product.html"><span>工具</span></a></li>
			   <li class="has-sub"><a href="service.html"><span>服务</span></a></li>
			   <li class="last"><a href="contact.html"><span>连接</span></a></li>
			 	<div class="clear"></div>
			 </ul>
	</div>
	<script type="text/javascript">
		$("#_queryMap").click(function(){
			var hotelName = $("#hotelName").text();
			var url = "http://localhost:8090/_queryMap?hotelAddress=";
			url = url + hotelName;
			window.location = url;
		});
	</script>
	<div class="logo">
			<!-- <h1><a href="hotelInfo.jsp"><img src="images/logo.png" alt=""></a></h1> -->
	</div>
	<!-- #camera_wrap_1  z照片的轮番展示页面 -->
	<div class="fluid_container">
        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
        <c:forEach items="${hotel.pictureList }" var="picture">
            <div data-thumb="/staticfile/images/thumbs/slider1.jpg" data-src="/${picture }">
            </div>
               </c:forEach> 
             </div><!-- #camera_wrap_1 -->
         <div class="clear"></div>
	</div>
<form action="#" method="get" name="_pay">
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="酒店详情">酒店详情</a></div>
	<!-- end #camera_wrap_1 -->
			<div class="grids_1_of_3">
			
			<c:forEach items="${productList }" var="p" varStatus="status">

				<div class="grid_1_of_3 images_1_of_3 bg${status.index+1}">
					 <h3><input type="radio" name="${p.productName}" value="${p.productId }"> ${p.productName}/${p.productPrice[0]}</h3>
					<div class="gallery">
					<a href="images/pic${status.index+1}.jpg"><img src="/${p.pictureList[0] }" title="image-name"></a>
					</div>
					  <p>${p.productRemark }</p>
					<div class="plus_btn">
						<span></span>
					</div>
				</div>
			</c:forEach>
			
					<div class="clear"></div>
			</div>
			<div class="content_btm">
				<div class="col_1_of_3 span_1_of_3">
					<h2>酒店星级</h2>
					<div class="text1-nav">
					<c:if test="${hotel.hotelGrade == 1 }"><img src="${app }/staticfile/images/1.png"></c:if>
					<c:if test="${hotel.hotelGrade == 2 }"><img src="${app }/staticfile/images/2.png"></c:if>
					<c:if test="${hotel.hotelGrade == 3 }"><img src="${app }/staticfile/images/3.png"></c:if>
					<c:if test="${hotel.hotelGrade == 4 }"><img src="${app }/staticfile/images/4.png"></c:if>
					<c:if test="${hotel.hotelGrade == 5 }"><img src="${app }/staticfile/images/5.png"></c:if>
					
					</div>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<h2>酒店地址</h2>
					<h4>${hotel.hotelAddress }</h4>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<h2>酒店介绍</h2>
					<h4>${hotel.introduce }</h4>
				</div>
				<div class="clear"></div>
			</div>
		<!--end content_btm-->
	<div class="grids_btm">
		<div class="grids">
			<div class="images_1_of_1">
				<p>15</p>
			</div>
			<div class="grid_1_of_1">
				  	<h3>特色</h3>
					<p>在酒店装修设计中灯光设计具有技术性，在照明技术的选择上，应当尽量结合酒店装修设计的需要，在酒店装修设计中照明应当有侧重点，对艺术品、壁画等装饰应当进行特别的照明设计。</p>	   
 			</div>
		</div>
			<div class="grids">
			<div class="images_1_of_1">
				<p>$</p>
			</div>
				<div class="grid_1_of_1">
				  	<h3><input type="submit" value="支付"> </h3>
					<p></p>   
 				</div>
			</div>
	</div>
</form>
	<div class="clear"></div>
	<div class="footer1">
		<p class="w3-link" trance-key="fchina-footer-top">
				<a href="" title="在线反馈">在线反馈</a>
				<a/><a/><a/><a/><a/><a/>
				<a href="" title="在线反馈">常见问题</a>
				<a/><a/><a/><a/><a/><a/>
				<a href="" title="在线反馈">职业机会</a>
				<a/><a/><a/><a/><a/><a/>
				<a href="" title="在线反馈">关于我们</a>
				<a/><a/><a/><a/><a/><a/>
				<a href="" title="在线反馈">联系我们</a>
				<a/><a/><a/><a/><a/><a/>
				<a href="" title="在线反馈">法律声明</a>
			</p>	
	</div>
</div>
</div>
</div>

</body>
</html>