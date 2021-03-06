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
	<li id="save"><a href="#" onclick="formSubmit('insertHotel','_self');this.blur();">保存</a></li>
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
		<td>酒店区域：</td>
		<td>
			<select name="area.areaId"  style="width: 122px">
				<option value="0">请选择</option>
				<!-- 准备上级部门列表信息 -->
				<c:forEach items="${areaList}" var="a">
					<option value="${a.areaId}">${a.areaName }${a.areaId}</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr class="odd">
		<td>酒店名称：</td>
		<td><input type="text" name="hotelName" style="border: 1px solid rgb(54, 158, 146)" /></td>
	</tr>
	<tr class="odd">
		<td>酒店评级：</td>
		<td><input type="text" name="hotelGrade" style="border: 1px solid rgb(54, 158, 146)" /></td>
	</tr>
	<tr class="odd">
		<td>酒店地址：</td>
		<td colspan="3">
			<textarea style="height:80px;width:100%" name="hotelAddress"></textarea>
		</td>
	</tr>
	<tr class="odd">
		<td>酒店介绍：</td>
		<td colspan="3">
			<textarea style="height:80px;width:100%" name="introduce"></textarea>
		</td>
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

