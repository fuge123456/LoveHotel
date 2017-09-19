package hotel.service;

import org.springframework.web.multipart.MultipartFile;

public interface PictureService {
	public void insertHotelPictures(MultipartFile[] pictures,String hotelId);
	public void insertProductPictures(MultipartFile[] pictures,String productId);
}
