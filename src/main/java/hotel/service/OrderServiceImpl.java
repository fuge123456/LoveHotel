package hotel.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hotel.mapper.OrderHMapper;
import hotel.pojo.OrderH;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderHMapper orderHMapper;
	
	@Override
	public List<OrderH> findAll() {
		
		return orderHMapper.findAll();
	}

	@Override
	public List<OrderH> findPayAndState(int pay, int state) {
		return orderHMapper.findPayAndState(pay, state);
	}

	@Override
	public List<OrderH> findByTime(Date min,Date max){
		return orderHMapper.findByTime(min, max);
	}

	@Override
	public OrderH findById(String orderId) {
		return orderHMapper.findById(orderId);
	}

	@Override
	public List<OrderH> findByHotelId(String hotelId) {
		return orderHMapper.findByHotelId(hotelId);
	}
	
	@Override
	public List<OrderH> findPrice(double price) {
		return orderHMapper.findPrice(price);
	}
	
	@Override
	public void insert(OrderH orderH) {
		orderHMapper.insert(orderH);
		
	}
	
	@Override
	public void update(OrderH orderH) {
		orderHMapper.update(orderH);
	}

	@Override
	public List<OrderH> orderSelect(String hotelId, Date minTime, Date maxTime, String minPrice, String maxPrice) {
		double min=-1.0;
		try {
			min=Double.parseDouble(minPrice);
		} catch (Exception e) {
		}
		double max=Double.MAX_VALUE;
		try {
			max=Double.parseDouble(minPrice);
		} catch (Exception e) {
		}
		return orderHMapper.orderSelect(hotelId, minTime, maxTime, min, max);
	}
}
