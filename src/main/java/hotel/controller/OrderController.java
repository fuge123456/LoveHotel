package hotel.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import hotel.pojo.Hotel;
import hotel.pojo.OrderH;
import hotel.service.HotelService;
import hotel.service.OrderService;

@Controller
@RequestMapping("/sysadmin/order/")
public class OrderController {
	@Autowired
	OrderService orderService;
	@Autowired
	HotelService hotelService;
	
	private String prefix="/sysadmin/order/";
	
	@RequestMapping("list")
	public String list(Model model){
		model.addAttribute("orderList", orderService.findAll());
		List<Hotel> hotelList = hotelService.findAll();
		model.addAttribute("hotelList", hotelList);
		return prefix+"jOrderList";
	}
	
	@RequestMapping("toOrderUpdate")
	public String toOrderUpdate(String orderId,Model model){
		OrderH order = orderService.findById(orderId);
		
		Hotel hotel = hotelService.findById(order.getHotelId());
		model.addAttribute("order",order );
		model.addAttribute("hotel",hotel );
		model.addAttribute("product", order.getProduct());
		return prefix+"jOrderUpdate";
	}
	
	@RequestMapping("updateOrder")
	public String updateOrder(OrderH order){
		orderService.update(order);
		return "redirect:/sysadmin/order/list";
	}
	
	@RequestMapping("toSelectOrder")
	public String updateOrder(Model model,String hotelId,Date minTime,Date maxTime,String minPrice,String maxPrice){
		List<OrderH> orderList = orderService.orderSelect(hotelId, minTime, maxTime, minPrice, maxPrice);
		model.addAttribute("orderList", orderList);
		return prefix+"jOrderList";
	}
	
	@InitBinder
	//此方法用于日期的转换，如果未加，当页面日期格式转换错误，将报400错误，实际是因为此方法
	public void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
}
