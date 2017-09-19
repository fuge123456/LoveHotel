package hotel.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import hotel.pojo.OrderH;

public interface OrderHMapper {
	/**
	 * 查询所有订单
	 * @return
	 */
	@Select("select * from order_h")
	public List<OrderH> findAll();
	/**
	 *  按支付状态以及订单状态查询订单
	 * @param pay
	 * @param state
	 * @return
	 */
	public List<OrderH> findPayAndState(@Param("pay")int pay,@Param("state")int state);
	/**
	 * 按时间范围查询订单
	 * @param min 起始时间
	 * @param max 截止时间
	 * @return
	 */
	public List<OrderH> findByTime(@Param("min")Date min,@Param("max")Date max);
	/**
	 * 根据订单id查询订单
	 * @param orderId
	 * @return
	 */
	public OrderH findById(String orderId);
	/**
	 * 根据酒店Id查询订单
	 * @param hotelId
	 * @return
	 */
	@Select("select * from order_h where hotel_id = #{hotelId}")
	public List<OrderH> findByHotelId(String hotelId);
	/**
	 * 查询所有总价大于price的顶大
	 * @param price
	 * @return
	 */
	@Select("select * from order_h where order_price = #{price}")
	public List<OrderH> findPrice(double price);
	/**
	 * 插入订单
	 * @param orderH
	 */
	public void insert(OrderH orderH);
	/**
	 * 修改订单
	 * @param orderH
	 */
	public void update(OrderH orderH);
	/**
	 * 根据条件查询订单
	 * @param hotelId
	 * @param minTime
	 * @param maxTime
	 * @param minPrice
	 * @param maxPrice
	 * @return
	 */
	public List<OrderH> orderSelect(@Param("hotelId")String hotelId,@Param("minTime")Date minTime,
									@Param("maxTime")Date maxTime,@Param("minPrice")double minPrice,
									@Param("maxPrice")double maxPrice);
}
