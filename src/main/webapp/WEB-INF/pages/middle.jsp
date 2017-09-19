<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>酒店列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />




<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />


<!-- 下拉选 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">
<!-- <link href='https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700italic,900,700,900italic' rel='stylesheet' type='text/css'> -->

<!-- Stylesheets -->
<!-- Dropdown Menu -->
<link rel="stylesheet" href="${app }/middle/css/superfish.css">
<!-- Owl Slider -->
<!-- <link rel="stylesheet" href="css/owl.carousel.css"> -->
<!-- <link rel="stylesheet" href="css/owl.theme.default.min.css"> -->
<!-- Date Picker -->
<link rel="stylesheet"
	href="${app }/middle/css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="${app }/middle/css/cs-select.css">
<link rel="stylesheet" href="${app }/middle/css/cs-skin-border.css">

<!-- Themify Icons -->
<link rel="stylesheet" href="${app }/middle/css/themify-icons.css">
<!-- Flat Icon -->
<link rel="stylesheet" href="${app }/middle/css/flaticon.css">
<!-- Icomoon -->
<link rel="stylesheet" href="${app }/middle/css/icomoon.css">
<!-- Flexslider  -->
<link rel="stylesheet" href="${app }/middle/css/flexslider.css">

<!-- Style -->
<link rel="stylesheet" href="${app }/middle/css/style.css">

<!-- Modernizr JS -->
<script src="${app }/middle/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->



<!-- 下拉选 -->
<link rel="stylesheet" href="${app }/middle/css/example.css"
	type="text/css">
<link rel="stylesheet" href="${app }/middle/css/dropkick.css"
	type="text/css">
<link rel="stylesheet" href="${app }/middle/css/blank_theme.css"
	type="text/css">
<script src="${app }/middle/js/jquery.min.js"></script>
<script src="${app }/middle/js/jquery.dropkick-min.js"></script>
<script type="text/javascript" charset="utf-8">
	document.createElement("gist");

	$.fn.ready(function() {
		$('.default').dropkick();

		$('.black').dropkick({
			theme : 'black'
		});

		$('.custom_theme').dropkick({
			theme : 'black',
			change : function(value, label) {
				$(this).dropkick('theme', value);
			}
		});

	});
</script>
<style>
#xlx1, #xlx2, #xlx3, #xlx4 {
	margin-left: 66px;
	margin-right: 66px;
}

.a-col {
	text-align: center;
}
</style>


<script language="JavaScript" type="text/javascript">
	//定义了城市的二维数组，里面的顺序跟省份的顺序是相同的。通过selectedIndex获得省份的下标值来得到相应的城市数组
	var areaName = [ [ "中心区", "上城区", "西城区", "拱墅区", "江干区", "滨江区", "西湖区" ],
			[ "中心区", "东城区", "丰台区", "朝阳区", "海定区", "西城区" ], [], [], [] ];

	function getAreaName() {
		//获得省份下拉框的对象
		var sltProvince = document.form1.province;
		//获得城市下拉框的对象
		var sltAreaName = document.form1.areaName;
		//得到对应省份的城市数组
		var provinceAreaName = areaName[sltProvince.selectedIndex - 1];

		//清空城市下拉框，仅留提示选项
		sltAreaName.length = 1;

		//将城市数组中的值填充到城市下拉框中
		for (var i = 0; i < provinceAreaName.length; i++) {
			sltAreaName[i + 1] = new Option(provinceAreaName[i],
					provinceAreaName[i]);
		}
	}
</script>




</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<div id="fh5co-header">
				<header id="fh5co-header-section">
					<div class="container">
						<div class="nav-header">
							<!--<h1 id="fh5co-logo"><a href="index.html">Luxe</a></h1>-->
							<nav id="fh5co-menu-wrap" role="navigation" style="color: #000;">
								<div class="pull-right">
   								<c:if test="${!empty user}">
   <strong>欢迎您：${user.userName}</strong>|&nbsp;&nbsp;<a class="btn danger small" href="/logout"><strong>注销</strong></ a>
   </c:if>
   <c:if test="${empty user}">
      <a class="btn" href="/login.action"><strong>登陆</strong></ a>|&nbsp;&nbsp;&nbsp;&nbsp;<a class="reg" href="/sysadmin/user/toRegist.action"><strong>注册</strong></ a>
   </c:if>
</div>
							</nav>
						</div>
					</div>
				</header>

			</div>
			<!-- end:fh5co-header -->
			<%-- <aside id="fh5co-hero" class="js-fullheight">
		<div class="flexslider js-fullheight">
			<ul class="slides">
		   	<li style="background-image: url(${app }/middle/images/slider1.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="col-md-12 col-md-offset-0 text-center slider-text">
		   				<div class="slider-text-inner js-fullheight">
		   					<div class="desc">
		   						<!--<p><span>Bora Hotel</span></p>
		   						<h2>Reserve Room for Family Vacation</h2>
			   					<p>
			   						<a href="#" class="btn btn-primary btn-lg">Book Now</a>
			   					</p>-->
		   					</div>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(${app }/middle/images/slider2.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="col-md-12 col-md-offset-0 text-center slider-text">
		   				<div class="slider-text-inner js-fullheight">
		   					<div class="desc">
		   						<!--<p><span>Deluxe Hotel</span></p>
		   						<h2>Make Your Vacation Comfortable</h2>
			   					<p>
			   						<a href="#" class="btn btn-primary btn-lg">Book Now</a>
			   					</p>-->
		   					</div>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		   	<li style="background-image: url(${app }/middle/images/slider3.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="col-md-12 col-md-offset-0 text-center slider-text">
		   				<div class="slider-text-inner js-fullheight">
		   					<div class="desc">
		   						<!--<p><span>Luxe Hotel</span></p>
		   						<h2>A Best Place To Enjoy Your Life</h2>
			   					<p>
			   						<a href="#" class="btn btn-primary btn-lg">Book Now</a>
			   					</p>-->
		   					</div>
		   				</div>
		   			</div>
		   		</div>
		   	</li>
		   	
		  	</ul>
	  	</div>
	</aside> --%>
			<!-- <div class="wrap">
		<div class="container">
			<div class="row">
				<div id="availability">
					<form action="#">-->

			<!-- <div class="a-col" style="color:#000;">
							<section style="color:#000;">
								<select class="cs-select cs-skin-border" style="color:#000;">
									<option value="" disabled selected>请选择排序方式</option>
									<option value="email">按价格排序</option>
									<option value="twitter">按评级排序</option>
									<option value="linkedin">按评分排序</option>
								</select>
							</section>
						</div> -->
			<!--<div class="a-col alternate">
							<div class="input-field">
								<label for="date-start">入住日期</label>
								<input type="text" class="form-control" id="date-start" />
							</div>
						</div>
						<div class="a-col alternate">
							<div class="input-field">
								<label for="date-end">退房日期</label>
								<input type="text" class="form-control" id="date-end" />
							</div>
						</div>
						<div class="a-col action">
							<a href="#">
								<span>Check</span>
								Availability
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div> -->

			<div id="fh5co-counter-section" class="fh5co-counters"
				style="height: auto">
				<!-- <div style="border: 1px solid red;
            width: 800px;
            height: auto;
            position: absolute;
            left: 600px;
            top: 800px;">
			<span>筛选</span>
			<br/>
			<span>一星</span>
			<span>二星</span>
			<span>三星</span>
			<span>四星</span>
			<br/>
			<span>一星</span>
			<span>二星</span>
			<span>三星</span>
			<span>四星</span>
			<br/>
			<span>一星</span>
			<span>二星</span>
			<span>三星</span>
			<span>四星</span> -->
			</div>


			<!-- <div class="container">
			<div class="row">
				<div class="col-md-3 text-center">
					<span class="fh5co-counter js-counter" data-from="0" data-to="20356" data-speed="5000" data-refresh-interval="50"></span>
					
				</div>
				<div class="col-md-3 text-center">
					<span class="fh5co-counter js-counter" data-from="0" data-to="15501" data-speed="5000" data-refresh-interval="50"></span>
					
				</div>
				<div class="col-md-3 text-center">
					<span class="fh5co-counter js-counter" data-from="0" data-to="8200" data-speed="5000" data-refresh-interval="50"></span>
					
				</div>
				<div class="col-md-3 text-center">
					<span class="fh5co-counter js-counter" data-from="0" data-to="8763" data-speed="5000" data-refresh-interval="50"></span>
					
				</div>
			</div>
		</div> -->
		</div>



		<div id="featured-hotel" class="fh5co-bg-color">
			<div class="container">

				<div class="content">
					<div id="search_div">

						<FORM METHOD="POST" ACTION="/sysadmin/hotel/search" name="form1"
							style="height: 100px; color: #000; font-size: 15px; font-weight: bold">
							<SELECT NAME="province" onChange="getAreaName()">
								<OPTION VALUE="0">请选择所在城市</OPTION>
								<OPTION VALUE="杭州">杭州</OPTION>
								<OPTION VALUE="北京">北京</OPTION>
								<OPTION VALUE="上海">上海</OPTION>
								<OPTION VALUE="广州">广州</OPTION>
								<OPTION VALUE="深圳">深圳</OPTION>
							</SELECT> <SELECT NAME="areaName">
								<OPTION VALUE="0">请选择所在区域</OPTION>
							</SELECT> <span class="input_span">酒店名称：<input type="text"
								name="hotelName" style="height: 30px" /></span> <span
								class="label_span">酒店星级：
								<td><label><input name="hotelGrade" type="checkbox"
										value="1" />一星 </label> <label><input name="hotelGrade"
										type="checkbox" value="2" />二星 </label> <label><input
										name="hotelGrade" type="checkbox" value="3" />三星 </label> <label><input
										name="hotelGrade" type="checkbox" value="4" />四星 </label> <label><input
										name="hotelGrade" type="checkbox" value="5" />五星 </label></td>
							</span> <span class="input_span">价格区间：<input type="text"
								name="minprice" style="height: 30px; width: 80px" /> - <input
								type="text" name="maxprice" style="height: 30px; width: 80px" /></span>
							<input type="submit" value="查询">
						</form>
					</div>
					<%-- <form action="#" method="post" accept-charset="utf-8" class="examples part">
				      <fieldset class="example" style="height:20px ;color:#000;font-size : 15px;font-weight:bold" >
				       
				        <!--   <select name="theme" class="custom_theme" tabindex="10" id="xlx1" >
				            <option value="">请选择排序方式</option>
				            <option value="default">按价格排序</option>
				            <option value="black" >按评级排序</option>
				            <option value="orange">按评分排序</option>
				          </select>
				        	 -->

						  <tr class="odd">
							  <td>酒店名称:</td>
							  <td><input  type="text" name="hotelName" style="width: 200px"/></td>
						  </tr>

						  <tr>
						  <td>
							  <label><input name="hotelGrade" type="checkbox" value="1" />一星 </label>
							  <label><input name="hotelGrade" type="checkbox" value="2" />二星 </label>
							  <label><input name="hotelGrade" type="checkbox" value="3" />三星 </label>
							  <label><input name="hotelGrade" type="checkbox" value="4" />四星 </label>
							  <label><input name="hotelGrade" type="checkbox" value="5" />五星 </label>
						  </td>
						  </tr>



						  <tr>
						  <td>价格区间:</td>
						  <td>
							  <input  id="minP" type="text" name="minPrice" style="width: 100px"/>
							  ~
							  <input  id="maxP" type="text" name="maxPrice" style="width: 100px"/>
						  </td>
						  </tr>



						  <select name="theme" class="custom_theme" tabindex="10" id="xlx4">
							  <option value="">请选择排序方式</option>
							  <option value="default">按价格排序</option>
							  <option value="black" >按星级排序</option>
							  <option value="orange">按评分排序</option>
						  </select>

						  <ul>
							  <li id="save"><a href="#" onclick="formSubmit('save','_self');this.blur();">保存</a></li>
						  </ul>
				      </fieldset>
				    </form>--%>
				</div>











				<!--<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Featured Hotels</h2>
					</div>
				</div>
			</div>-->

				<div class="row">
					<c:forEach items="${hotelList}" var="h">
						<div class="feature-full-1col">
							<div class="image"
								style="background-image: url(/${h.pictureList[0]});">
								<div class="descrip text-center">
									<p>
										<small>低至</small><span>￥${h.minPrice }/晚</span>
									</p>
								</div>
							</div>
							<div class="desc">
								<h3>${h.hotelName}</h3>
								<p>${h.introduce}</p>
								<p>
									<a href="/toJump.action?hotelId=${h.hotelId }" class="btn btn-primary btn-luxe-primary">查看详情 <i
										class="ti-angle-right"></i></a>
								</p>
							</div>
						</div>
					</c:forEach>


					
							
						
					
						
					</div>
				</div>

			</div>
		</div>

		<!--<div id="hotel-facilities">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Hotel Facilities</h2>
					</div>
				</div>
			</div>

			<div id="tabs">
				<nav class="tabs-nav">
					<a href="#" class="active" data-tab="tab1">
						<i class="flaticon-restaurant icon"></i>
						<span>Restaurant</span>
					</a>
					<a href="#" data-tab="tab2">
						<i class="flaticon-cup icon"></i>
						<span>Bar</span>
					</a>
					<a href="#" data-tab="tab3">
					
						<i class="flaticon-car icon"></i>
						<span>Pick-up</span>
					</a>
					<a href="#" data-tab="tab4">
						
						<i class="flaticon-swimming icon"></i>
						<span>Swimming Pool</span>
					</a>
					<a href="#" data-tab="tab5">
						
						<i class="flaticon-massage icon"></i>
						<span>Spa</span>
					</a>
					<a href="#" data-tab="tab6">
						
						<i class="flaticon-bicycle icon"></i>
						<span>Gym</span>
					</a>
				</nav>
				<div class="tab-content-container">
					<div class="tab-content active show" data-tab-content="tab1">
						<div class="container">
							<div class="row">
								<div class="col-md-6">
									<img src="images/tab_img_1.jpg" class="img-responsive" alt="Image">
								</div>
								<div class="col-md-6">
									<span class="super-heading-sm">World Class</span>
									<h3 class="heading">Restaurant</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
									<p class="service-hour">
										<span>Service Hours</span>
										<strong>7:30 AM - 8:00 PM</strong>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-content" data-tab-content="tab2">
						<div class="container">
							<div class="row">
								<div class="col-md-6">
									<img src="images/tab_img_2.jpg" class="img-responsive" alt="Image">
								</div>
								<div class="col-md-6">
									<span class="super-heading-sm">World Class</span>
									<h3 class="heading">Bars</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
									<p class="service-hour">
										<span>Service Hours</span>
										<strong>7:30 AM - 8:00 PM</strong>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-content" data-tab-content="tab3">
						<div class="container">
							<div class="row">
								<div class="col-md-6">
									<img src="images/tab_img_3.jpg" class="img-responsive" alt="Image">
								</div>
								<div class="col-md-6">
									<span class="super-heading-sm">World Class</span>
									<h3 class="heading">Pick Up</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
									<p class="service-hour">
										<span>Service Hours</span>
										<strong>7:30 AM - 8:00 PM</strong>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-content" data-tab-content="tab4">
						<div class="container">
							<div class="row">
								<div class="col-md-6">
									<img src="images/tab_img_4.jpg" class="img-responsive" alt="Image">
								</div>
								<div class="col-md-6">
									<span class="super-heading-sm">World Class</span>
									<h3 class="heading">Swimming Pool</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
									<p class="service-hour">
										<span>Service Hours</span>
										<strong>7:30 AM - 8:00 PM</strong>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-content" data-tab-content="tab5">
						<div class="container">
							<div class="row">
								<div class="col-md-6">
									<img src="images/tab_img_5.jpg" class="img-responsive" alt="Image">
								</div>
								<div class="col-md-6">
									<span class="super-heading-sm">World Class</span>
									<h3 class="heading">Spa</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
									<p class="service-hour">
										<span>Service Hours</span>
										<strong>7:30 AM - 8:00 PM</strong>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-content" data-tab-content="tab6">
						<div class="container">
							<div class="row">
								<div class="col-md-6">
									<img src="images/tab_img_6.jpg" class="img-responsive" alt="Image">
								</div>
								<div class="col-md-6">
									<span class="super-heading-sm">World Class</span>
									<h3 class="heading">Gym</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
									<p class="service-hour">
										<span>Service Hours</span>
										<strong>7:30 AM - 8:00 PM</strong>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>-->

		<!--<div id="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Happy Customer Says...</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="testimony">
						<blockquote>
							&ldquo;If you’re looking for a top quality hotel look no further. We were upgraded free of charge to the Premium Suite, thanks so much&rdquo;
						</blockquote>
						<p class="author"><cite>John Doe</cite></p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="testimony">
						<blockquote>
							&ldquo;Me and my wife had a delightful weekend get away here, the staff were so friendly and attentive. Highly Recommended&rdquo;
						</blockquote>
						<p class="author"><cite>Rob Smith</cite></p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="testimony">
						<blockquote>
							&ldquo;If you’re looking for a top quality hotel look no further. We were upgraded free of charge to the Premium Suite, thanks so much&rdquo;
						</blockquote>
						<p class="author"><cite>Jane Doe</cite></p>
					</div>
				</div>
			</div>
		</div>
	</div>-->


		<div id="fh5co-blog-section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title text-center">
							<h2>旅行的意义</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="blog-grid"
							style="background-image: url(${app }/middle/images/image-1.jpg);">
							<!--<div class="date text-center">
							<span>09</span>
							<small>Aug</small>
						</div>-->
						</div>
						<div class="desc">
							<h3>
								<a href="#">Travel can cultivate people's endurance.</a>
							</h3>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-grid"
							style="background-image: url(${app }/middle/images/image-2.jpg);">
							<!--<div class="date text-center">
							<span>09</span>
							<small>Aug</small>
						</div>-->
						</div>
						<div class="desc">
							<h3>
								<a href="#">Travel teaches people tolerant of virtue.</a>
							</h3>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-grid"
							style="background-image: url(${app }/middle/images/image-3.jpg);">
							<!--<div class="date text-center">
							<span>09</span>
							<small>Aug</small>
						</div>-->
						</div>
						<div class="desc">
							<h3>
								<a href="#">Travel is a great source of real knowledge.</a>
							</h3>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--<footer id="footer" class="fh5co-bg-color">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="copyright">
						<p><small>&copy; 2016 Free HTML5 Template. <br> All Rights Reserved. <br>
						More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> <br> Demo Images: <a href="#" target="_blank">Unsplash</a></small></p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-3">
							<h3>Company</h3>
							<ul class="link">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Hotels</a></li>
								<li><a href="#">Customer Care</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
						<div class="col-md-3">
							<h3>Our Facilities</h3>
							<ul class="link">
								<li><a href="#">Resturant</a></li>
								<li><a href="#">Bars</a></li>
								<li><a href="#">Pick-up</a></li>
								<li><a href="#">Swimming Pool</a></li>
								<li><a href="#">Spa</a></li>
								<li><a href="#">Gym</a></li>
							</ul>
						</div>
						<div class="col-md-6">
							<h3>Subscribe</h3>
							<p>Sed cursus ut nibh in semper. Mauris varius et magna in fermentum. </p>
							<form action="#" id="form-subscribe">
								<div class="form-field">
									<input type="email" placeholder="Email Address" id="email">
									<input type="submit" id="submit" value="Send">
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<ul class="social-icons">
						<li>
							<a href="#"><i class="icon-twitter-with-circle"></i></a>
							<a href="#"><i class="icon-facebook-with-circle"></i></a>
							<a href="#"><i class="icon-instagram-with-circle"></i></a>
							<a href="#"><i class="icon-linkedin-with-circle"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</footer>-->

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- Javascripts -->
	<script src="${app }/middle/js/jquery-2.1.4.min.js"></script>
	<!-- Dropdown Menu -->
	<script src="${app }/middle/js/hoverIntent.js"></script>
	<script src="${app }/middle/js/superfish.js"></script>
	<!-- Bootstrap -->
	<script src="${app }/middle/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="${app }/middle/js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script src="${app }/middle/js/jquery.countTo.js"></script>
	<!-- Stellar Parallax -->
	<script src="${app }/middle/js/jquery.stellar.min.js"></script>
	<!-- Owl Slider -->
	<!-- // <script src="js/owl.carousel.min.js"></script> -->
	<!-- Date Picker -->
	<script src="${app }/middle/js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="${app }/middle/js/classie.js"></script>
	<script src="${app }/middle/js/selectFx.js"></script>
	<!-- Flexslider -->
	<script src="${app }/middle/js/jquery.flexslider-min.js"></script>

	<script src="${app }/middle/js/custom.js"></script>

</body>
</html>