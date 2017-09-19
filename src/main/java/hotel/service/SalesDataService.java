package hotel.service;

import java.util.Date;
import java.util.List;

import hotel.pojo.SalesData;

public interface SalesDataService {
	/**
	 * 根据条件查询销售数据
	 * @param hotelId
	 * @param productId
	 * @param minDate
	 * @param maxDate
	 * @param orderState
	 * @return
	 */
	public List<SalesData> findSalesDates(String hotelId,String productId,Date minDate,Date maxDate,String orderState);
}
