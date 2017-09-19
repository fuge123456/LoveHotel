package hotel.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import hotel.pojo.OrderH;

public interface OrderService {

	/**
	 * 查询所有订单
	 * @return
	 */
	public List<OrderH> findAll();
	/**
	 *  按支付状态以及订单状态查询订单
	 * @param pay
	 * @param state
	 * @return
	 */
	public List<OrderH> findPayAndState(int pay,int state);
	/**
	 * 按最小创建时间查询订单
	 * @param createTime 最小创建时间
	 * @return
	 */
	public List<OrderH> findByTime(Date min,Date max);
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
	public List<OrderH> findByHotelId(String hotelId);
	/**
	 * 查询所有总价大于price的顶大
	 * @param price
	 * @return
	 */
	@Select("")
	public List<OrderH> findPrice(double price);
	/**
	 * 插入订单
	 * @param orderH
	 */
	@Insert("")
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
	public List<OrderH> orderSelect(String hotelId,Date minTime,Date maxTime,String minPrice,String maxPrice);
}
