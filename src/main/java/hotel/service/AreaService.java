package hotel.service;

import java.util.List;

import hotel.pojo.Area;

public interface AreaService {
	/**
	 * 查询所有区域
	 * @return
	 */
	public List<Area> findAll();
}
