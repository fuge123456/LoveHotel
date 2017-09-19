package hotel.mapper;

import java.util.List;

import hotel.pojo.Area;

public interface AreaMapper {
	/**
	 * 查询所有区域
	 * @return
	 */
	public List<Area> findAll();
}
