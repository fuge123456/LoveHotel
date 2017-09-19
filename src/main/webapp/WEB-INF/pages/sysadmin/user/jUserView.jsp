<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>用户列表</title>
</head>

<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	
	<li id="back"><a href="#" onclick="window.history.go(-1);">返回</a></li>
	
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
    用户查看
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<tr class="odd" hidden="hidden">
		<td><input type="text" name="userId" value="${user.userId}"/></td>
	</tr>
	<tr class="odd">
		<td>用户名:</td>
		<td>${user.userName }</td>
	</tr>
	<tr class="odd">
		<td>密码:</td>
		<td><input type="text" name="password" value="${user.password }"/></td>
	</tr>
	<tr class="odd">
		<td>性别:</td>
		<td><input type="text" name="sex" value="${user.sex }"/></td>
	</tr>
	<tr class="odd">
		<td>昵称:</td>
		<td><input type="text" name="nickName" value="${user.nickName }"/></td>
	</tr>
	<tr class="odd">
		<td>真实姓名:</td>
		<td><input type="text" name="realName" value="${user.realName }"/></td>
	</tr>
	<tr class="odd">
		<td>电话号:</td>
		<td><input type="text" name="telephone" value="${user.telephone }"/></td>
	</tr>
	<tr class="odd">
		<td>邮箱:</td>
		<td><input type="text" name="email" value="${user.email }"/></td>
	</tr>
	<tr class="odd">
		<td>角色ID:</td>
		<td><input type="text" name="roleId" value="${user.role.roleId }"/></td>
	</tr>

	
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

