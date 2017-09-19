package hotel.pojo;

import java.util.List;

/**
 * Created by BIG on 2017/9/13.
 */
public class Hotel {
    /**
     * 酒店ID
     */
    private String hotelId;
    /**
     * 区域ID
     */
    private Area area;
    /**
     * 酒店名字
     */
    private String hotelName;
    /**
     * 酒店星级
     */
    private String hotelGrade;
    /**
     * 酒店地址
     */
    private String hotelAddress;
    /**
     * 酒店介绍
     */
    private String introduce;

    private List<String> pictureList;//图片地址
    
    private List<HotelProduct> hotelProduct;//酒店的所有商品
    
    private Double minPrice;//最低价
    
    
	public Double getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(Double minPrice) {
		this.minPrice = minPrice;
	}

	public List<HotelProduct> getHotelProduct() {
		return hotelProduct;
	}

	public void setHotelProduct(List<HotelProduct> hotelProduct) {
		this.hotelProduct = hotelProduct;
	}

	public String getHotelId() {
        return hotelId;
    }

    public void setHotelId(String hotelId) {
        this.hotelId = hotelId;
    }

    public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public String getHotelGrade() {
        return hotelGrade;
    }

    public void setHotelGrade(String hotelGrade) {
        this.hotelGrade = hotelGrade;
    }

    public String getHotelAddress() {
        return hotelAddress;
    }

    public void setHotelAddress(String hotelAddress) {
        this.hotelAddress = hotelAddress;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public List<String> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<String> pictureList) {
        this.pictureList = pictureList;
    }

}
