package org.mybatis.entity;
/**
 * 组合查询辅助类
 * @author zDUKE
 *
 */
public class SelectTemp {
	private int id;
	private String areaName;
	private Double minPrice;
	private Double maxPrice;
	private Double minHouseArea;
	private Double maxHouseArea;
	private String typeName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public Double getMinPrice() {
		return minPrice;
	}
	public void setMinPrice(Double minPrice) {
		this.minPrice = minPrice;
	}
	public Double getMaxPrice() {
		return maxPrice;
	}
	public void setMaxPrice(Double maxPrice) {
		this.maxPrice = maxPrice;
	}
	public Double getMinHouseArea() {
		return minHouseArea;
	}
	public void setMinHouseArea(Double minHouseArea) {
		this.minHouseArea = minHouseArea;
	}
	public Double getMaxHouseArea() {
		return maxHouseArea;
	}
	public void setMaxHouseArea(Double maxHouseArea) {
		this.maxHouseArea = maxHouseArea;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
}
