<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../baselist.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/skin/default/css/left.css" media="all"/>
</head>
 
<body id="left_frame">
<div class="PositionFrame_black" id="PositionFrame"></div>
 
 
<!-- begin1  -->
<div id="sidebar" class="sidebar">
	<div class="sidebar_t">
		<div class="sidebar_t_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_t_r"></div>
	</div>
        <div class="panel">
        <div class="panel_icon"><img src="${ctx}/staticfile/skin/default/images/icon/user1_lock.png"/></div>
        <div class="panel-header">
        <div class="panel-title">权限管理</div>
        <div class="panel-content">
			<ul>
					<li><a href="${ctx}/sysadmin/hotel/list" onclick="linkHighlighted(this)" target="main" id="aa_1">酒店管理</a></li>
					<li><a href="${ctx}/sysadmin/user/list" onclick="linkHighlighted(this)" target="main" id="aa_1">用户管理</a></li>
					<li><a href="${ctx}/sysadmin/hotelProduct/list" onclick="linkHighlighted(this)" target="main" id="aa_1">商品管理</a></li>
					<li><a href="${ctx}/sysadmin/order/list" onclick="linkHighlighted(this)" target="main" id="aa_1">订单管理</a></li>
					<li><a href="${ctx}/sysadmin/sale/list" onclick="linkHighlighted(this)" target="main" id="aa_1">销售数据</a></li>
			</ul>
        </div>
        </div>
    </div>
    <div class="sidebar_t">
		<div class="sidebar_b_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_b_r"></div>
	</div>  
</div>	


</body>
</html>
