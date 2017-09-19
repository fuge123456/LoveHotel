<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>部门列表</title>
</head>
<script type="text/javascript" src="${ctx}/staticfile/js/datepicker/jquery-1.6.2.js" >
	function deletePicture(obj) {
		window.document.getElementById(obj).removeChild();
	}
</script>
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
		<td>酒店区域：</td>
		<td>
			<select name="area.areaId"  style="width: 122px">
				<option value="${hotel.area.areaId}">${hotel.area.areaName}</option>
				<c:forEach items="${areaList}" var="a">
					<option value="${a.areaId}">${a.areaName }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr class="odd">
		<td>酒店名称：</td>
		<td><input type="text" name="hotelName" value="${hotel.hotelName }" /></td>
	</tr>
	<tr class="odd">
		<td>酒店评级：</td>
		<td><input type="text" name="hotelGrade" value="${hotel.hotelGrade }" /></td>
	</tr>
	<tr class="odd">
		<td>酒店地址：</td>
		<td colspan="3">
			<textarea style="height:80px;width:100%" name="hotelAddress">${hotel.hotelAddress }</textarea>
		</td>
	</tr>
	<tr class="odd">
		<td>酒店介绍：</td>
		<td colspan="3">
			<textarea style="height:80px;width:100%" name="introduce">${hotel.introduce }</textarea>
		</td>
	</tr>
	<c:forEach items="${hotel.pictureList }" var="pic" varStatus="status">
		<tr id="${status.index}" class="odd">
		<td>酒店图片</td>
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
	<input type="text" name="hotelId" value="${hotel.hotelId }" hidden="true"/>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

