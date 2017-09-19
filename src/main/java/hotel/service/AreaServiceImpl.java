package hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hotel.mapper.AreaMapper;
import hotel.pojo.Area;
@Service("AreaService")
public class AreaServiceImpl implements AreaService{

	@Autowired
	AreaMapper areaMapper;
	
	@Override
	public List<Area> findAll() {
		
		return areaMapper.findAll();
	}

}
