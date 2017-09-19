<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../baselist.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>销售数据</title>
</head>

<body>
<form name="icform" method="post">
		<table>
			<tr>
				<td class="tableHeader">酒店名称</td>
				<td class="tableHeader">商品类型</td>
				<td class="tableHeader">下单时间</td>
				<td class="tableHeader">下单时间</td>
				<td class="tableHeader">订单状态</td>
			</tr>
			<tr>
				<td class="tableHeader"><select name="hotelId">
				<option value="" selected="selected">全部</option>
						<c:forEach items="${hotelList}" var="h">
							<option value="${h.hotelId }">${h.hotelName }</option>
						</c:forEach>
				</select></td>
				<td class="tableHeader"><select name="productId">
				<option value="" selected="selected">全部</option>
					<c:forEach items="${hotelProductList }" var="pro">
						<option value="${pro.productId }" >${pro.productName}</option>
					</c:forEach>
				</select></td>
				<td class="tableHeader"><input type="text" style="width: 90px;"
					name="minDate"
					onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" />
				</td>
				<td class="tableHeader"><input type="text" style="width: 90px;"
					name="maxDate"
					onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" />
				</td>
				<td class="tableHeader"><select name="orderState">
						<option value="-1" selected="selected">全部</option>
						<option value="0">未完成</option>
						<option value="1">已完成</option>
						<option value="2">取消</option>
				</select></td>
			</tr>
		</table>
		<li id="update"><a href="#"
			onclick="formSubmit('toSelect','_self');this.blur();">查询</a></li>
</form>
<form name="icform" method="post">
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
  <div id="navMenubar">
<ul>
	<li id="update"><a href="#" onclick="formSubmit('toDownload','_self');this.blur();">下载</a></li>
</ul>
  </div>
</div>
</div>
</div>
   
  <div class="textbox-title">
	<img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
  销售数据
  </div> 
  
<div>


<div class="eXtremeTable" >
<table id="ec_table" class="tableRegion" width="98%" >
	<thead>
	<tr>
		<td class="tableHeader">序号</td>
		<td class="tableHeader">酒店名称</td>
		<td class="tableHeader">酒店id</td>
		<td class="tableHeader">商品名称</td>
		<td class="tableHeader">商品价格</td>
		<td class="tableHeader">商品销量</td>
		<td class="tableHeader">订单数量</td>
		<td class="tableHeader">销售金额</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	
	<c:forEach items="${salesDatesList}" var="sal" varStatus="s">
	<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
		<td>${status.index+1}</td>
		<td class="tableHeader"><input type="text" readonly="readonly" name="dataList[${s.index}].hotelName" value="${sal.hotelName }"/></td>
		<td class="tableHeader"><input type="text" readonly="readonly" name="dataList[${s.index}].hotelId" value="${sal.hotelId }"/></td>
		<td class="tableHeader"><input type="text" readonly="readonly" name="dataList[${s.index}].productName" value="${sal.productName }"/></td>
		<td class="tableHeader"><input type="text" readonly="readonly" name="dataList[${s.index}].productPrice" value="${sal.productPrice }"/></td>
		<td class="tableHeader"><input type="text" readonly="readonly" name="dataList[${s.index}].productSales" value="${sal.productSales }"/></td>
		<td class="tableHeader"><input type="text" readonly="readonly" name="dataList[${s.index}].orderCount" value="${sal.orderCount }"/></td>
		<td class="tableHeader"><input type="text" readonly="readonly" name="dataList[${s.index}].salesAmount" value="${sal.salesAmount }"/></td>
	</tr>                              
	</c:forEach>                       
	</tbody>
</table>
</form>
</div>
</div>
</body>
</html>

