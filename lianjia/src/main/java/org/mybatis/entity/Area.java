package org.mybatis.entity;
/**
 * 区县实体类对象
 * @author zDUKE
 *	2016-11-2
 */
public class Area {
	private int id;
	private String areaID;
	private String area;
	private String cityID;
	
	//市
	private City city;
		
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAreaID() {
		return areaID;
	}
	public void setAreaID(String areaID) {
		this.areaID = areaID;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getCityID() {
		return cityID;
	}
	public void setCityID(String cityID) {
		this.cityID = cityID;
	}
	
}
