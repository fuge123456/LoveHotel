package hotel.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import hotel.mapper.HotelProductMapper;
import hotel.pojo.HotelProduct;
@Service("hotelProductService")
public class HotelProductServiceImpl implements HotelProductService {
	
	@Autowired
	HotelProductMapper hotelProductMapper;
	
	@Autowired
	PictureService pictureService;
	/*
	 * 不包括图片
	 */
	@Override
	public List<HotelProduct> findAll() {
		return hotelProductMapper.findAll();
	}
	/*
	 * 包括关联表数据
	 */
	@Override
	public List<HotelProduct> findByHotelId(String hotelId) {
		List<HotelProduct> productList = hotelProductMapper.findByHotelId(hotelId);
		for(HotelProduct p:productList){
			p=hotelProductMapper.findByHidPid(hotelId, p.getHotelId());
		}
		return productList;
	}
	/*
	 * 包括图片
	 */
	@Override
	public HotelProduct findByHidPid(String hotelId, String hotelProductId) {
		HotelProduct hotelProduct = hotelProductMapper.findByHidPid(hotelId, hotelProductId);
		List<String> hotelProductPicture = hotelProductMapper.findPicture(hotelProductId);
		hotelProduct.setPictureList(hotelProductPicture);
		return hotelProduct;
	}
	/*
	 * 插入商品表的数据
	 * 
	 */
	@Override
	public void insert(HotelProduct hotelProduct,MultipartFile[] pictures) {
		String hotelProductId = UUID.randomUUID().toString();
		hotelProduct.setProductId(hotelProductId);
		hotelProductMapper.insertP(hotelProduct);
		pictureService.insertProductPictures(pictures, hotelProductId);
	}
	/*
	 * 插入关联表的数据
	 */
	@Override
	public void insert(HotelProduct hotelProduct, String hotelId) {
		
			hotelProductMapper.insert(hotelProduct, hotelId);
		
		
	}
	/*
	 * 修改商品表的数据
	 */
	@Override
	public void update(HotelProduct hotelProduct,MultipartFile[] pictures) {
		String hotelProductId = hotelProduct.getProductId();
		//修改关联表中的数据
		hotelProductMapper.updateP(hotelProduct);
		//插入图片
		pictureService.insertProductPictures(pictures, hotelProductId);
		
	}
	/*
	 * 修改关联表中数据
	 */
	@Override
	public void update(HotelProduct hotelProduct, String hotelId) {
		hotelProductMapper.update(hotelProduct, hotelId);
	}
	/*
	 * 删除关联表中数据
	 */
	@Override
	public void delete(String hotelId, String[] hotelProductIds) {
		for(String hpId:hotelProductIds){
			hotelProductMapper.delete(hotelId, hpId);
		}
		
	}
	/*
	 * 删除商品表中数据
	 */
	@Override
	public void delete(String hotelProductId) {
		hotelProductMapper.deleteP(hotelProductId);
		hotelProductMapper.deletePicture(hotelProductId);
	}

	@Override
	public HotelProduct findById(String hotelProductId) {
		HotelProduct hotelProduct = hotelProductMapper.findById(hotelProductId);
		List<String> pictureList = hotelProductMapper.findPicture(hotelProductId);
		hotelProduct.setPictureList(pictureList);
		return hotelProduct;
	}
	
	@Override
	public List<HotelProduct> findHotelByHotelProduct(String hotelId) {
		return hotelProductMapper.findHotelByHotelProduct(hotelId);
	}

}
