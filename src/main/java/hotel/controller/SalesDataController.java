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
import hotel.pojo.HotelProduct;
import hotel.pojo.SalesData;
import hotel.service.HotelProductService;
import hotel.service.HotelService;
import hotel.service.SalesDataService;

@Controller
@RequestMapping("/sysadmin/sale/")
public class SalesDataController {
	
	@Autowired
	private SalesDataService salesDataService;
	@Autowired
	private HotelProductService hotelProductService;
	@Autowired
	private HotelService hotelService;
	
	@RequestMapping("list")
	public String list(Model model){
		List<HotelProduct> hotelProductList = hotelProductService.findAll();
		List<Hotel> hotelList = hotelService.findAll();
		model.addAttribute("hotelProductList",hotelProductList );
		model.addAttribute("hotelList",hotelList );
		return "sysadmin/sale/jSalesDate";
	}
	
	@RequestMapping("toSelect")
	public String toSelect(Model model,String hotelId, String productId, Date minDate,
			Date maxDate,String orderState){
		List<SalesData> salesDatesList = salesDataService.findSalesDates(hotelId, productId, minDate, maxDate, orderState);
		model.addAttribute("salesDatesList", salesDatesList);
		return list(model);
	}
	
	@InitBinder
	//此方法用于日期的转换，如果未加，当页面日期格式转换错误，将报400错误，实际是因为此方法
	public void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
}
