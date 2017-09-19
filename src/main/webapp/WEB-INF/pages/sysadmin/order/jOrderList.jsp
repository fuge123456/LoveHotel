<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
							<li id="update"><a href="#"
								onclick="formSubmit('toOrderUpdate','_self');this.blur();">修改</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="textbox-title">
			<img src="../../staticfile/skin/default/images/icon/currency_yen.png" />
			订单列表
		</div>

		<div>


			<div class="eXtremeTable">
				<table id="ec_table" class="tableRegion" width="98%">
					<thead>
						<tr>
							<td class="tableHeader"><input type="checkbox" name="selid"
								onclick="checkAll('orderId',this)"></td>
							<td class="tableHeader">序号</td>
							<td class="tableHeader">酒店Id</td>
							<td class="tableHeader">创建时间</td>
							<td class="tableHeader">订单状态</td>
							<td class="tableHeader">订单总价</td>
						</tr>
					</thead>
					<tbody class="tableBody">

						<c:forEach items="${orderList}" var="o" varStatus="status">
							<tr class="odd" onmouseover="this.className='highlight'"
								onmouseout="this.className='odd'">
								<td><input type="checkbox" name="orderId"
									value="${o.orderId}" /></td>
								<td>${status.index+1}</td>
								<td>${order.hotelId}</td>
								<td>${o.createTime}</td>
								<td>${o.orderState}</td>
								<td>${o.orderPrice}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>


	</form>
	<form name="icform" method="post">
		<table>
			<tr>
				<td class="tableHeader">酒店名称</td>
				<td class="tableHeader">创建时间</td>
				<td class="tableHeader">创建时间</td>
				<td class="tableHeader">订单状态</td>
				<td class="tableHeader">最低价</td>
				<td class="tableHeader">最高价</td>
			</tr>
			<tr>
				<td class="tableHeader"><select name="hotelId">
				<option value="">请选择</option>
						<c:forEach items="${hotelList}" var="h">
							<option value="${h.hotelId }">${h.hotelName }</option>
						</c:forEach>
				</select></td>
				<td class="tableHeader"><input type="text" style="width: 90px;"
					name="minTime"
					onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" />
				</td>
				<td class="tableHeader"><input type="text" style="width: 90px;"
					name="maxTime"
					onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" />
				</td>
				<td class="tableHeader"><select name="state">
						<option value="0">未完成</option>
						<option value="1">已完成</option>
						<option value="2">取消</option>
				</select></td>
				<td class="tableHeader"><input type="text" name="minPrive" /></td>
				<td class="tableHeader"><input type="text" name="minPrive" /></td>
			</tr>
		</table>
		<li id="update"><a href="#"
			onclick="formSubmit('toSelectOrder','_self');this.blur();">查询</a></li>
	</form>
</body>
</html>

