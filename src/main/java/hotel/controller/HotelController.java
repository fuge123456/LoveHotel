package hotel.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import hotel.pojo.Area;
import hotel.pojo.Hotel;
import hotel.pojo.HotelProduct;
import hotel.pojo.OrderH;
import hotel.service.AreaService;
import hotel.service.HotelProductService;
import hotel.service.HotelService;
import hotel.service.OrderService;
/**
 * 酒店管理的controller
 * 这对酒店商品的所有操作都不会影响到
 * hotel_product表中的数据
 * 只会对关联表中的数据进行操作
 * @author BIG
 *
 */
@Controller
@RequestMapping("/sysadmin/hotel")
public class HotelController {
	@Autowired
	private HotelService hotelService;
	@Autowired
	private HotelProductService hotelProductService;
	@Autowired
	private OrderService orderService;
	
	private String redirect = "redirect:/sysadmin/hotel/list";
	private String prefix = "sysadmin/hotel/";
	
	@Autowired
	private AreaService areaService;
	/*
	 * 以下为酒店的主映射
	 * 
	 * 
	 * 
	 */
	@RequestMapping("/list")
	public String toList(Model model){
		List<Hotel> hotelList = hotelService.findAll();
		model.addAttribute("hotelList", hotelList);
		return prefix+"jHotelList";
	}
	
	@RequestMapping("toInsert")
	public String toInsert(Model model){
		List<Area> areaList = areaService.findAll();
		model.addAttribute("areaList", areaList);
		return prefix+"jHotelInsert";
	}
	
	@RequestMapping("insertHotel")
	public String insert(Hotel hotel,@RequestParam("pic")MultipartFile[] pictures){
		hotelService.insert(hotel, pictures);
		
		return redirect;
		
	}
	
	@RequestMapping("toUpdate")
	public String toUpdate(String hotelId,Model model,HttpServletRequest request){
		Hotel hotel = hotelService.findById(hotelId);
		model.addAttribute("hotel", hotel);
		List<Area> areaList = areaService.findAll();
		model.addAttribute("areaList", areaList);
		model.addAttribute("picPath", "/"+request.getContextPath());
		return prefix+"jHotelUpdate";
		
	}
	
	@RequestMapping("update")
	public String update(Hotel hotel,MultipartFile[] pictures){
		hotelService.update(hotel,pictures);
		return redirect;
	}
	
	@RequestMapping("delete")
	public String delete(@RequestParam("hotelId")String[] hotelIds){
		hotelService.delete(hotelIds);
		return redirect;
	} 
	
	/*
	 * 以下为酒店商品的映射
	 * 
	 * 
	 * 
	 */
	
	@RequestMapping("toHotelProduct")
	public String toHotelProduct(String hotelId,Model model){
		List<HotelProduct> hotelProductList = hotelProductService.findByHotelId(hotelId);
		model.addAttribute("hotelProductList", hotelProductList);
		Hotel hotel = hotelService.findById(hotelId);
		model.addAttribute("hotel", hotel);
		return prefix+"jHotelProductList";
	}
	
	@RequestMapping("toInsertProduct")
	public String toInsertProduct(String hotelId,Model model){
		List<HotelProduct> hotelProductList = hotelProductService.findAll();
		model.addAttribute("hotelProductList", hotelProductList);
		model.addAttribute("hotelId", hotelId);
		return prefix+"jHotelInsertProduct";
	}
	
	@RequestMapping("insertProduct")
	public String insertProduct(String hotelId,HotelProduct hotelProduct){
		hotelProductService.insert(hotelProduct, hotelId);
		return redirect;
	}
	
	
	
	@RequestMapping("deleteProduct")
	public String deleteProduct(String hotelId,@RequestParam("productId")String[] productIds){
		hotelProductService.delete(hotelId, productIds);
		return redirect;
	}
	
	@RequestMapping("toUpdateProduct")
	public String toUpdateProduct(String hotelId,String productId,Model model){
		HotelProduct hotelProduct = hotelProductService.findByHidPid(hotelId, productId);
		model.addAttribute("hotelProduct", hotelProduct);
		model.addAttribute("hotelId", hotelId);
		return prefix+"jHotelUpdateProduct";
	}
	
	@RequestMapping("updateProduct")
	public String updateProduct(String hotelId,HotelProduct hotelProduct){
		hotelProductService.update(hotelProduct, hotelId);
		return redirect;
	}
	
	/*
	 * 以下为酒店订单的映射
	 * 
	 * 
	 * 
	 */
	@RequestMapping("toHotelOrder")
	public String toHotelOrder(String hotelId,Model model){
		List<OrderH> orderList = orderService.findByHotelId(hotelId);
		Hotel hotel = hotelService.findById(hotelId);
		model.addAttribute("orderList",orderList );
		model.addAttribute("hotel",hotel );
		return prefix+"jHotelOrderList";
	}
	
	@RequestMapping("toHotelOrderUpdate")
	public String toHotelOrderUpdate(String orderId,Model model){
		OrderH order = orderService.findById(orderId);
		Hotel hotel = hotelService.findById(order.getHotelId());
		model.addAttribute("order",order );
		model.addAttribute("hotel",hotel );
		model.addAttribute("product", order.getProduct());
		return prefix+"jHotelOrderUpdate";
	}
	
	@RequestMapping("updateHotelOrder")
	public String updateHotelOrder(OrderH order){
		orderService.update(order);
		return redirect;
	}
	/*
	 * 陈佳峰
	 */
	 @RequestMapping("/search")
     public String Search(
             String areaName,
             @RequestParam(value="hotelGrade",required = false) String[] hotelGrades,
             Double minPrice,
             Double maxPrice,
             String hotelName,Model model){

         List<Hotel> hotelList = hotelService.findHotels(
                 areaName,
                 hotelGrades,
                 minPrice,
                 maxPrice,
                 hotelName);
         System.out.println(areaName);
         model.addAttribute("hotelList",hotelList);
         for (Hotel hotel : hotelList) {
             System.out.println(hotel.toString());
         }
         
         return "middle";
     }
}











