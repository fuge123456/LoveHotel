package hotel.pojo;

import hotel.poi.ExcelResources;

public class SalesData {
	
	@ExcelResources(title="酒店名称",order=1)private String hotelName;//酒店名称
	@ExcelResources(title="酒店ID",order=2)private String hotelId;//酒店Id
	@ExcelResources(title="商品名称",order=3)private String productName;//商品名称
	@ExcelResources(title="商品价格",order=4)private String productPrice;//商品价格
	@ExcelResources(title="销售数量",order=5)private Integer productSales;//销售数量
	@ExcelResources(title="订单数量",order=6)private Integer orderCount;//订单数量
	@ExcelResources(title="销售总金额",order=7)private Double salesAmount;//销售总金额
	
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelId() {
		return hotelId;
	}
	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getProductSales() {
		return productSales;
	}
	public void setProductSales(Integer productSales) {
		this.productSales = productSales;
	}
	public Integer getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(Integer orderCount) {
		this.orderCount = orderCount;
	}
	public Double getSalesAmount() {
		return salesAmount;
	}
	public void setSalesAmount(Double salesAmount) {
		this.salesAmount = salesAmount;
	}
	
}
