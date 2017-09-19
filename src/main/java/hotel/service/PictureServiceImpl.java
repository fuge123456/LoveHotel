package hotel.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import hotel.mapper.PictureMapper;
import hotel.tool.PathTool;

@Service("pictureService")
public class PictureServiceImpl implements PictureService {
	@Autowired
	private PictureMapper pictureMapper;
	
	@Override
	public void insertHotelPictures(MultipartFile[] pictures,String hotelId) {
		Random ran = new Random();
		for(int i=0;i<pictures.length;i++){
			String name = "";
			for(int j=0;j<4;j++){
				name+=ran.nextInt(100);
			}
			if(pictures[i].isEmpty())continue;
			String storPath = "picture/"+name+pictures[i].getOriginalFilename();
			File f = new File(PathTool.picturePath+storPath);
			try {
				FileOutputStream fos = new FileOutputStream(f);
				InputStream fileIn = pictures[i].getInputStream();
				byte[] bs = new byte[1024];
				int len=-1;
				while((len=fileIn.read(bs))>0){
					fos.write(bs,0,len);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			pictureMapper.insertHotelPictures(storPath, UUID.randomUUID().toString(), hotelId);
		}
		
	}

	@Override
	public void insertProductPictures(MultipartFile[] pictures,String productId) {
		Random ran = new Random();
		for(int i=0;i<pictures.length;i++){
			String name = "";
			for(int j=0;j<4;j++){
				name+=ran.nextInt(100);
			}
			if(pictures[i].isEmpty())continue;
			String storPath = "picture/"+name+pictures[i].getOriginalFilename();
			File f = new File(PathTool.picturePath+storPath);
			try {
				FileOutputStream fos = new FileOutputStream(f);
				InputStream fileIn = pictures[i].getInputStream();
				byte[] bs = new byte[1024];
				int len=-1;
				while((len=fileIn.read(bs))>0){
					fos.write(bs,0,len);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			pictureMapper.insertProductPictures(storPath, UUID.randomUUID().toString(), productId);
		}
		
	}

}
