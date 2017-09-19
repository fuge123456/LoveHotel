package hotel.pojo;

import java.util.List;

/**
 * Created by BIG on 2017/9/14.
 */
public class HotelProduct {
    /**
     * 酒店ID
     */
    private String hotelId;
    /**
     * 商品ID
     */
    private String productId;
    /**
     * 商品价格
     */
    private Double productPrice;
    /**
     * 商品库存
     */
    
    private String productName;//商品名称
    
    private String productRemark;//商品说明
    
    private Integer productStock;//商品库存
    
    private String breakfast;//是否有早餐
    
    private String wifi;//是否有wifi
    
    private String park;//是否有停车场
    
    
    


	public String getProductRemark() {
		return productRemark;
	}

	public void setProductRemark(String productRemark) {
		this.productRemark = productRemark;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getBreakfast() {
		return breakfast;
	}

	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}

	public String getWifi() {
		return wifi;
	}

	public void setWifi(String wifi) {
		this.wifi = wifi;
	}

	public String getPark() {
		return park;
	}

	public void setPark(String park) {
		this.park = park;
	}

	private List<String> pictureList;//图片地址

    public String getHotelId() {
        return hotelId;
    }

    public void setHotelId(String hotelId) {
        this.hotelId = hotelId;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public Integer getProductStock() {
        return productStock;
    }

    public void setProductStock(Integer productStock) {
        this.productStock = productStock;
    }

    public List<String> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<String> pictureList) {
        this.pictureList = pictureList;
    }
}
