package hotel.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import hotel.pojo.SalesData;

public interface SalesDataMapper {
	/**
	 * 根据条件查询销售数据
	 * @param hotelId
	 * @param productId
	 * @param minDate
	 * @param maxDate
	 * @param orderState
	 * @return
	 */
	public List<SalesData> findSalesDates(@Param("hotelId")String hotelId,@Param("productId")String productId,
					@Param("minDate")Date minDate,@Param("maxDate")Date maxDate,@Param("orderState")int orderState);
}
