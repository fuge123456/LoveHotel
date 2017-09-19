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
	<li id="new"><a href="#" onclick="formSubmit('toInsertProduct','_self');this.blur();">新增</a></li>
	<li id="update"><a href="#" onclick="formSubmit('toUpdateProduct','_self');this.blur();">修改</a></li>
	<li id="delete"><a href="#" onclick="formSubmit('deleteProduct','_self');this.blur();">删除</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
  酒店商品列表
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
		<td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('productId',this)"></td>
		<td class="tableHeader">序号</td>
		<td class="tableHeader">商品名称</td>
		<td class="tableHeader">早餐</td>
		<td class="tableHeader">WIFI</td>
		<td class="tableHeader">停车场</td>
		<td class="tableHeader">价格</td>
		<td class="tableHeader">库存</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	
	<c:forEach items="${hotelProductList}" var="h" varStatus="status">
	<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
		<td><input type="checkbox" name="productId" value="${h.productId}"/></td>
		<td>${status.index+1}</td>
		<td>${h.productName}</td>
		<td>${h.breakfast}</td>
		<td>${h.wifi}</td>
		<td>${h.park}</td>
		<td colspan="2">${h.productRemark}</td>
	</tr>
	</c:forEach>
	</tbody>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

