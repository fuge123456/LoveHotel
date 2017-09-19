package hotel.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hotel.mapper.SalesDataMapper;
import hotel.pojo.SalesData;

@Service("salesDataService")
public class SalesDataServiceImpl implements SalesDataService {
	@Autowired
	private SalesDataMapper salesDataMapper;
	@Override
	public List<SalesData> findSalesDates(String hotelId, String productId, Date minDate, Date maxDate,
			String orderState) {
		int sta = Integer.parseInt(orderState);
		
		return salesDataMapper.findSalesDates(hotelId, productId, minDate, maxDate, sta);
	}

}
