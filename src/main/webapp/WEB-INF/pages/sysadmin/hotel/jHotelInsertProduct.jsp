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
	<li id="save"><a href="#" onclick="formSubmit('insertProduct','_self');this.blur();">保存</a></li>
	<li id="back"><a href="#" onclick="window.history.go(-1)">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
    “${hotelName }”酒店商品新增
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<tr class="odd">
		<td>商品类型：</td>
		<td>
			<select name="productId"  style="width: 122px">
				<option value="0">请选择</option>
				<!-- 准备上级部门列表信息 -->
				<c:forEach items="${hotelProductList}" var="h">
					<option value="${h.productId}">${h.productName }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr class="odd">
		<td>商品价格：</td>
		<td><input type="text" name="productPrice" /></td>
	</tr><tr class="odd">
		<td>商品库存：</td>
		<td><input type="text" name="productStock" /></td>
	</tr>
	<input type="text" name="hotelId" value="${hotelId }" hidden="true" />
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

