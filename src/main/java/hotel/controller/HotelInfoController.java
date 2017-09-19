package hotel.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import hotel.poi.ExcelUtil;
import hotel.pojo.Hotel;
import hotel.pojo.HotelProduct;
import hotel.pojo.SalesData;
import hotel.service.HotelProductService;
import hotel.service.HotelService;
import hotel.tool.DateVo;
import hotel.tool.TimeTools;



@Controller
public class HotelInfoController {
	
	@Autowired
	private HotelService hotelService;
	@Autowired
	private HotelProductService HotelProductService;
	
	

	@RequestMapping("/toJump")
	public String toJump(String hotelId,Model model){
		Hotel hotel = hotelService.findById(hotelId);
		List<HotelProduct> productList = HotelProductService.findByHotelId(hotelId);
		model.addAttribute("hotel", hotel);
		model.addAttribute("productList", productList);
		return "hotelInfo";
	}
	
	@RequestMapping("/_queryMap")
	public String goMap(String hotelAddress, Model model){
		model.addAttribute("hotelAddress", hotelAddress);
		return "BusCarQuery";
	}
	/**
	 * POI打印
	 * @throws FileNotFoundException 
	 * @throws IOException 
	 */
	@RequestMapping("/sysadmin/sale/toDownload")
	@ResponseBody
	public String toPOI(DateVo sales, HttpServletRequest request, HttpServletResponse response
			) throws FileNotFoundException{
		 String path = request.getServletContext().getRealPath("excel");
		//根据需要将数据已集合的形式查询出来
		 List<SalesData> list = sales.getDataList();
        Map<String, String> map = new HashMap<String, String>();
        map.put("title", "销售榜单"); //此处为excel标题
        map.put("total", list.size()+" 条"); //数据量(条)
        map.put("date", TimeTools.getDate());
        ExcelUtil.getInstance().exportObj2ExcelByTemplate(map, "web-info-template.xls", new FileOutputStream(path+"/out.xls"),
                list, SalesData.class, true);
        try {
			File file=new File(path+"/out.xls");
			if(file.exists()){
				response.addHeader("Content-Disposition","attachment;filename=销售榜单.xls");
				OutputStream output=response.getOutputStream();
				FileInputStream input=new FileInputStream(file);
				byte[] b=new byte[1024];
				int i=0;
				while((i=input.read(b))>0){
					output.write(b);
				}
				input.close();
				output.flush();
				output.close();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	
}
