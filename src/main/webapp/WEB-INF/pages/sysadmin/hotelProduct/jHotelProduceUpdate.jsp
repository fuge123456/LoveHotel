<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>部门列表</title>
</head>

<body>
<form name="icform" method="post" enctype="multipart/form-data">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	<li id="save"><a href="#" onclick="formSubmit('update','_self');this.blur();">保存</a></li>
	<li id="back"><a href="#" onclick="window.history.go(-1)">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
    酒店新增
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<tr class="odd">
		<td>商品名称</td>
		<td><input type="text" name="productName" value="${hotelProduct.productName}" /></td>
	</tr>
	<tr class="odd">
		<td>商品说明</td>
		<td><input type="text" name="productRemark" value="${hotelProduct.productRemark }" /></td>
 	</tr>
 	<tr class="odd">
		<td>是否有早餐</td>
		<td><input type="text" name="breakfast" value="${hotelProduct.breakfast }" /></td>
 	</tr>
 	<tr class="odd">
		<td>是否有wifi</td>
		<td><input type="text" name="wifi" value="${hotelProduct.wifi }" /></td>
 	</tr>
 	<tr class="odd">
		<td>是否有停车场</td>
		<td><input type="text" name="park" value="${hotelProduct.park }" /></td>
 	</tr>
 	<c:forEach items="${hotelProduct.pictureList }" var="pic" varStatus="status">
		<tr id="${status.index}" class="odd">
		<td>房间图片</td>
		<td>
			<img src="${picPath}${pic}">
		</td>
	</tr>
	</c:forEach>
	<c:forEach begin="0" end="5" varStatus="status">
		<tr id="${status.index}" class="odd">
		<td>添加图片</td>
		<td>
			<input type="file" name="pictures" />
		</td>
	</tr>
	</c:forEach>
 	<input type="text" name="productId" value="${hotelProduct.productId }" hidden="true"/>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

