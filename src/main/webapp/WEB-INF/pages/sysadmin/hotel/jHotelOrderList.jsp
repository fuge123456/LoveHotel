<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>“${hotel.hotelName }”酒店订单列表</title>
</head>

<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	<li id="back"><a href="#" onclick="window.history.go(-1)">返回</a></li>
	<li id="update"><a href="#" onclick="formSubmit('toHotelOrderUpdate','_self');this.blur();">修改</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
    “${hotel.hotelName }”酒店订单列表列表
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
		<td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('hotelId',this)"></td>
		<td class="tableHeader">序号</td>
		<td class="tableHeader">酒店名称</td>
		<td class="tableHeader">创建时间</td>
		<td class="tableHeader">订单状态</td>
		<td class="tableHeader">订单总价</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	
	<c:forEach items="${orderList}" var="o" varStatus="status">
	<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
		<td><input type="checkbox" name="orderId" value="${o.orderId}"/></td>
		<td>${status.index+1}</td>
		<td><a href="/sysadmin/hotel/${o.orderId}/toOrderView.action">${hotel.hotelName}</a></td>
		<td>
			${o.createTime}
		</td>
		<td>
			${o.orderState}
		</td>
		<td>
			${o.orderPrice}
		</td>
	</tr>
	</c:forEach>
	</tbody>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

