package hotel.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import hotel.pojo.HotelProduct;

public interface HotelProductService {

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
	public HotelProduct findByHidPid(String hotelId,String hProductId);
	/**
	 * 插入商品信息
	 * @param hotelProduct
	 */
	public void insert(HotelProduct hotelProduct,MultipartFile[] pictures);
	/**
	 * 添加酒店的商品信息
	 * @param hotelProduct
	 * @param hotelId
	 */
	public void insert(HotelProduct hotelProduct,String hotelId);
	/**
	 * 修改商品信息
	 * @param hotelProduct
	 */
	public void update(HotelProduct hotelProduct,MultipartFile[] pictures);
	/**
	 * 修改酒店的商品信息
	 * @param hotelProduct
	 */
	public void update(HotelProduct hotelProduct,String hotelId);
	/**
	 * 删除酒店和商品的关联信息
	 * @param hotelId
	 * @param hProductId
	 */
	public void delete(String hotelId,String[] hotelProductIds);
	/**
	 * 删除商品信息
	 * @param hProductId
	 */
	public void delete(String hProductId);
	
	//根据酒店id查询酒店商品详情
	public List<HotelProduct> findHotelByHotelProduct(String hotelId);
}
