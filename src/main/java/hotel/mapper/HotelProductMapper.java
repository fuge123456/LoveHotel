package hotel.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import hotel.pojo.HotelProduct;

public interface HotelProductMapper {
	/**
	 * 查询所有商品信息
	 * @return
	 */
	public List<HotelProduct> findAll();
	/**
	 * 根据酒店id查询商品信息
	 * @param hotelId
	 * @return
	 */
	public List<HotelProduct> findByHotelId(String hotelId);
	/**
	 * 通过Id查询商品信息
	 * @param hotelProductId
	 * @return
	 */
	public HotelProduct findById(String hotelProductId);
	/**
	 * 查询酒店的单个商品信息
	 * @param hotelId
	 * @param hProductId
	 * @return
	 */
	public HotelProduct findByHidPid(@Param("hotelId")String hotelId,@Param("hProductId")String hProductId);
	/**
	 * 插入商品信息
	 * @param hotelProduct
	 */
	public void insertP(HotelProduct hotelProduct);
	/**
	 * 添加酒店的商品信息
	 * @param hotelProduct
	 * @param hotelId
	 */
	public void insert(@Param("hp")HotelProduct hotelProduct,@Param("hotelId")String hotelId);
	/**
	 * 修改商品信息
	 * @param hotelProduct
	 */
	public void updateP(HotelProduct hotelProduct);
	/**
	 * 修改酒店的商品信息
	 * @param hotelProduct
	 */
	public void update(@Param("hp")HotelProduct hotelProduct,@Param("hotelId")String hotelId);
	/**
	 * 删除酒店和商品的关联信息
	 * @param hotelId
	 * @param hProductId
	 */
	public void delete(@Param("hotelId")String hotelId,@Param("hProductId")String hProductId);
	/**
	 * 删除商品信息
	 * @param hProductId
	 */
	public void deleteP(String hProductId);
	/**
	 * 查询商品的图片
	 * @param hotelProductId
	 * @return
	 */
	public List<String> findPicture(String hotelProductId);
	/**
	 * 插入商品的图片
	 * @param url
	 * @param hotelProductId
	 * @param string
	 */
	public void insertPicture(@Param("url")String url,@Param("hotelProductId") String hotelProductId,@Param("pictureId") String pictureId);
	/**
	 * 删除所有商品的图片
	 * @param hotelProductId
	 */
	public void deletePicture(String hotelProductId);
	
	
	public List<HotelProduct> findHotelByHotelProduct(String hotelId);
	
}
