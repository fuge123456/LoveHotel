package hotel.mapper;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import hotel.pojo.Hotel;

public interface HotelMapper {
	/**
	 * 查询所有的酒店信息
	 * @return
	 */
	public List<Hotel> findAll();
	/**
	 * 通过id查询酒店信息
	 * @param hotelId 酒店id
	 * @return
	 */
	public Hotel findById(String hotelId);
	/**
	 * 插入酒店数据
	 * @param hotel
	 */
	public void insert(Hotel hotel);
	/**
	 * 修改酒店数据
	 * @param hotel
	 */
	public void update(Hotel hotel);
	/**
	 * 删除酒店
	 * @param hotelId
	 */
	public void delete(String hotelId);
	/**
	 * 查询所有酒店图片的url
	 * @param hotelId
	 * @return
	 */
	public List<String> findPicture(String hotelId);
	/**
	 * 插入酒店的图片
	 * @param hotelId
	 * @param pictureURL
	 * @param pictureId
	 */
	public void insertPicture(@Param("hotelId")String hotelId,@Param("pictureURL")String pictureURL,@Param("pictureId")String pictureId);
	/**
	 * 删除所有酒店图片
	 * @param hoteId
	 */
	public void deletePicture(String hoteId);
	/**
	 * 删除酒店下所有商品
	 * @param hotelId
	 */
	public void deleteProduct(String hotelId);
	/**
	 * 搜索酒店列表
	 * @param areaName
	 * @param hotelGrades
	 * @param minPri
	 * @param maxPri
	 * @param hotelName
	 * @return
	 * @ 陈佳峰
	 */
	 List<Hotel> findHotels(@Param(value ="areaName") String areaName, @Param(value="hotelGrades") String[] hotelGrades,
             @Param(value = "minPrice") Double minPri, @Param(value = "maxPrice") Double maxPri,
             @Param(value = "hotelName") String hotelName);
	@Select("select min(product_price) from hotel_product_r where hotel_id=#{hotelId}")
	public Double findMinPrice(String hotelId);
	
	
	
	public Hotel findHotelByHotelId(String hotelId);

}
