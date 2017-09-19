package hotel.service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import hotel.mapper.HotelMapper;
import hotel.mapper.HotelProductMapper;
import hotel.mapper.PictureMapper;
import hotel.pojo.Hotel;

@Service("hotelService")
public class HotelServiceImpl implements HotelService {
	@Autowired
	private HotelMapper hotelMapper;
	
	@Autowired
	private PictureService pictureService;

	@Override
	public List<Hotel> findAll() {
		List<Hotel> hotelList = hotelMapper.findAll();
		for(Hotel h:hotelList){
			List<String> pictureList = hotelMapper.findPicture(h.getHotelId());
			h.setPictureList(pictureList);
		}
		
		return hotelList;
	}

	@Override
	public Hotel findById(String hotelId) {
		Hotel hotel = hotelMapper.findById(hotelId);
		List<String> pictureList = hotelMapper.findPicture(hotel.getHotelId());
		hotel.setPictureList(pictureList);
		return hotel;
	}

	@Override
	public void insert(Hotel hotel,MultipartFile[] pictures) {
		String hotelId = UUID.randomUUID().toString();
		hotel.setHotelId(hotelId);
		hotelMapper.insert(hotel);
		//插入图片
		pictureService.insertHotelPictures(pictures, hotelId);
	}

	@Override
	public void update(Hotel hotel,MultipartFile[] pictures) {
		hotelMapper.update(hotel);
		String hotelId = hotel.getHotelId();
		pictureService.insertHotelPictures(pictures, hotelId);
	}

	@Override
	public void delete(String[] hotelIds) {
		for(String hotelId:hotelIds){
			hotelMapper.delete(hotelId);
			hotelMapper.deletePicture(hotelId);
			hotelMapper.deleteProduct(hotelId);
		}
	}
	/*
	 * 陈佳峰
	 */
	@Override
    public List<Hotel> findHotels(String areaName, String[] hotelGrades, Double minPri, Double maxPri, String hotelName) {
        List<Hotel> hotelList =new ArrayList<>();
        hotelList = hotelMapper.findHotels(areaName, hotelGrades,minPri,maxPri,hotelName);
        for(Hotel h:hotelList){
        	List<String> pictureList = hotelMapper.findPicture(h.getHotelId());
        	h.setPictureList(pictureList);
        	double minPrice = hotelMapper.findMinPrice(h.getHotelId())==null?0:hotelMapper.findMinPrice(h.getHotelId());
        	h.setMinPrice(minPrice);
        }
		return hotelList;
    }
	
	
	@Override
	public Hotel findHotelByHotelId(String hotelId) {
		return hotelMapper.findHotelByHotelId(hotelId);
	}

}
