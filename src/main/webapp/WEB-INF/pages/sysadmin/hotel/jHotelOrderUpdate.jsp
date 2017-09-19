<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>酒店订单详情</title>
</head>

<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	<li id="save"><a href="#" onclick="formSubmit('updateHotelOrder','_self');this.blur();">保存</a></li>
	<li id="back"><a href="#" onclick="window.history.go(-1)">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
    “${hotelName }”酒店订单查看
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<tr class="odd">
		<td>酒店名称：</td>
		<td>${hotel.hotelName }</td>
		<td>订单创建时间：</td>
		<td>${order.createTime }</td>
	</tr>
	<tr class="odd">
		<td>支付状态：</td>
		<td><input type="text" name="payState" value="${order.payState }"/></td>
		<td>订单状态：</td>
		<td><input type="text" name="orderState" value="${order.orderState }"/></td>
	</tr>
	<tr class="odd">
		<td>入住时间：</td>
		<td>${order.checkInTime }</td>
		<td>离店时间：</td>
		<td>${order.checkOutTime }</td>
	</tr>
	<tr class="odd">
		<td>商品名称：</td>
		<td>${order.product.productName }</td>
		<td>商品价格：</td>
		<td>${order.product.productPrice }</td>
	</tr>
	<tr class="odd">
		<td>购买数量：</td>
		<td>${order.productCount }</td>
		<td>支付类型：</td>
		<td>${order.payType }</td>
	</tr>
	<tr class="odd">
		<td>订单总价：</td>
		<td>${order.orderPrice }</td>
		<td>用户id：</td>
		<td>${order.userId }</td>
	</tr>
</table>
</div>
 <input type="text" name="orderId" value="${order.orderId }" hidden="true" />
</div>
 
 
</form>
</body>
</html>

