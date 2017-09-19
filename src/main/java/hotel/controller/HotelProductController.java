package hotel.controller;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import hotel.pojo.HotelProduct;
import hotel.service.HotelProductService;

@Controller
@RequestMapping("sysadmin/hotelProduct/")
public class HotelProductController {
	private String redirect = "redirect:/sysadmin/hotelProduct/list";
	private String prefix = "sysadmin/hotelProduct/";
	@Autowired
	HotelProductService hotelProductService;
	
	@RequestMapping("list")
	public String toList(Model model){
		List<HotelProduct> hotelProductList = hotelProductService.findAll();
		model.addAttribute("hotelProductList", hotelProductList);
		return prefix+"jHotelProductList";
	}
	
	@RequestMapping("toInsertProduct")
	public String toInsert(){
		return prefix+"jHotelProductInsert";
	}
	
	@RequestMapping("insert")
	public String insert(HotelProduct hotelProduct,@RequestParam("pic")MultipartFile[] pictures){
		hotelProduct.setHotelId(UUID.randomUUID().toString());
		hotelProductService.insert(hotelProduct,pictures);
		return redirect;
	}
	
	@RequestMapping("toUpdateProduct")
	public String toUpdate(String productId,Model model,HttpServletRequest request){
		HotelProduct hotelProduct = hotelProductService.findById(productId);
		model.addAttribute("hotelProduct", hotelProduct);
		model.addAttribute("picPath", "/"+request.getContextPath());
		return prefix+"jHotelProduceUpdate";
	}
	
	@RequestMapping("update")
	public String update(HotelProduct hotelProduct,MultipartFile[] pictures){
		hotelProductService.update(hotelProduct,pictures);
		return redirect;
	}
	
	@RequestMapping("deleteProduct")
	public String update(String productId){
		hotelProductService.delete(productId);
		return redirect;
	}
	
	
	
}






















