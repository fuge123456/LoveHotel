package hotel.pojo;

import java.util.Date;

/**
 * Created by BIG on 2017/9/14.
 */
public class OrderH {
    private String orderId;//订单id
    private String hotelId;//酒店id
    private Date createTime;//订单创建时间
    private Integer payState;//支付状态
    private Integer orderState;//订单状态
    private String userId;//用户id
    private Date checkInTime;//入住时间
    private Date checkOutTime;//离店时间
    private String payType;//支付类型
    private HotelProduct product;//购买的商品
    private Integer productCount;//购买商品数量
    private Double orderPrice;//订单总价
    
    public HotelProduct getProduct() {
        return product;
    }

    public void setProduct(HotelProduct product) {
        this.product = product;
    }

    public Double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Double orderPrice) {
        this.orderPrice = orderPrice;
    }


    public Integer getProductCount() {
		return productCount;
	}

	public void setProductCount(Integer productCount) {
		this.productCount = productCount;
	}

	public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getHotelId() {
        return hotelId;
    }

    public void setHotelId(String hotelId) {
        this.hotelId = hotelId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getPayState() {
        return payState;
    }

    public void setPayState(Integer payState) {
        this.payState = payState;
    }

    public Integer getOrderState() {
        return orderState;
    }

    public void setOrderState(Integer orderState) {
        this.orderState = orderState;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Date getCheckInTime() {
        return checkInTime;
    }

    public void setCheckInTime(Date checkInTime) {
        this.checkInTime = checkInTime;
    }

    public Date getCheckOutTime() {
        return checkOutTime;
    }

    public void setCheckOutTime(Date checkOutTime) {
        this.checkOutTime = checkOutTime;
    }

    public String getPayType() {
        return payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }
}
