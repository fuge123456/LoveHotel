package hotel.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

public interface PictureMapper {
	@Insert("insert into hotel_picture values(#{hotelId},#{url},#{picId})")
	public void insertHotelPictures(@Param("url")String url,@Param("picId")String picId,@Param("hotelId")String hotelId);
	@Insert("insert into product_picture values(#{productId},#{url},#{picId})")
	public void insertProductPictures(@Param("url")String url,@Param("picId")String picId,@Param("productId")String productId);
}
