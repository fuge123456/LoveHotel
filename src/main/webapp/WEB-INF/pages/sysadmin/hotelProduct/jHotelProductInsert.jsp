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
	<li id="save"><a href="#" onclick="formSubmit('insert','_self');this.blur();">保存</a></li>
	<li id="back"><a href="#" onclick="window.history.go(-1)">返回</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
    酒店商品新增
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<tr class="odd">
		<td>商品名称</td>
		<td><input type="text" name="productName" /></td>
	</tr>
	<tr class="odd">
		<td>商品描述</td>
		<td colspan="3">
			<textarea style="height:80px;width:100%" name="productRemark"></textarea>
		</td>
 	</tr>
	<tr class="odd">
		<td>是否提供早餐</td>
		<td><input type="text" name="breakfast" /></td>
 	</tr>
 	<tr class="odd">
		<td>是否提供WIFI</td>
		<td><input type="text" name="wifi" /></td>
 	</tr>
 	<tr class="odd">
		<td>是否提供停车场</td>
		<td><input type="text" name="park" /></td>
 	</tr>
 	<tr>
		<td>上传酒店图片</td>
		<td><input type="file" name="pic" /></td>
	</tr>
	<tr>
		<td>上传酒店图片</td>
		<td><input type="file" name="pic" /></td>
	</tr>
	<tr>
		<td>上传酒店图片</td>
		<td><input type="file" name="pic" /></td>
	</tr>
	<tr>
		<td>上传酒店图片</td>
		<td><input type="file" name="pic" /></td>
	</tr>
	<tr>
		<td>上传酒店图片</td>
		<td><input type="file" name="pic" /></td>
	</tr>
	<tr>
		<td>上传酒店图片</td>
		<td><input type="file" name="pic" /></td>
	</tr>
	<tr>
		<td>上传酒店图片</td>
		<td><input type="file" name="pic" /></td>
	</tr>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

