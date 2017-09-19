package hotel.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import hotel.pojo.Hotel;

public interface HotelService {
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
	public void insert(Hotel hotel,MultipartFile[] pictures);
	/**
	 * 修改酒店数据
	 * @param hotel
	 */
	public void update(Hotel hotel,MultipartFile[] pictures);
	/**
	 * 删除酒店
	 * @param hotelIds
	 */
	public void delete(String[] hotelIds);
	 /*
	  * 陈佳峰
     */
    List<Hotel> findHotels(String areaName,String[] hotelGrades, Double minPri, Double maxPri,String hotelName);
    
    
	/**
	 * 根据酒店id查询酒店信息
	 * @param hotelId
	 * @return	含有酒店信息的Hotel
	 */
	public Hotel findHotelByHotelId(String hotelId);

}
