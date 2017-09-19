package hotel.pojo;

/**
 * Created by BIG on 2017/9/13.
 */
public class Area {
    /**
     * 区域Id
     */
    private String areaId;
    /**
     * 区域名字
     */
    private String areaName;
    /**
     * 上级区域id
     */
    private City city;//所在城市

    public String getAreaId() {
        return areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

   
}
