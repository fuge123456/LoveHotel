<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>部门列表</title>
</head>

<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	<li id="update"><a href="#" onclick="formSubmit('toInsert','_self');this.blur();">新增</a></li>
	<li id="update"><a href="#" onclick="formSubmit('toUpdate','_self');this.blur();">修改</a></li>
	<li id="delete"><a href="#" onclick="formSubmit('delete','_self');this.blur();">删除</a></li>
	<li id="update"><a href="#" onclick="formSubmit('toHotelOrder','_self');this.blur();">订单</a></li>
	<li id="update"><a href="#" onclick="formSubmit('toHotelProduct','_self');this.blur();">商品</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
    部门列表
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
		<td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('hotelId',this)"></td>
		<td class="tableHeader">序号</td>
		<td class="tableHeader">酒店名称</td>
		<td class="tableHeader">酒店评级</td>
		<td class="tableHeader">酒店地址</td>
		<td class="tableHeader">酒店介绍</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	
	<c:forEach items="${hotelList}" var="h" varStatus="status">
	<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
		<td><input type="checkbox" name="hotelId" value="${h.hotelId}"/></td>
		<td>${status.index+1}</td>
		<td><a href="dept/toview?id=${h.hotelId}">${h.hotelName}</a></td>
		<td>
			${h.hotelGrade}
		</td>
		<td>
			${h.hotelAddress}
		</td>
		<td>
			${h.introduce}
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

