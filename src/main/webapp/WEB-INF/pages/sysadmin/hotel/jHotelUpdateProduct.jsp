<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>酒店商品修改</title>
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
    “${hotelName }”酒店“${hotelProduct.productName }”修改
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<tr class="odd">
		<td>商品价格</td>
		<td><input type="text" name="productPrice" value="${hotelProduct.productPrice}" /></td>
	</tr>
	<tr class="odd">
		<td>商品库存</td>
		<td><input type="text" name="productStock" value="${hotelProduct.productStock }" /></td>
		<input type="text" name="hotelId" value="${hotelId }" hidden="true"/>
		<input type="text" name="productId" value="${hotelProduct.productId }" hidden="true"/>
 	</tr>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

