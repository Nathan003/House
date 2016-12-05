package org.mybatis.entity;

import java.util.Date;

public class House {
	private int houseId;
	private String houseAddress;
	private int typeId;
	private int userId;
	private String areaID;
	private Double housePrice;
	private String houseArea;
	private Date date;
	private String imagesLink;
	private String info;
	//用户：多对一
	private User user;
	//房屋类型
	private Type type;
	//区县
	private Area area;
	
	
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getImagesLink() {
		return imagesLink;
	}
	public void setImagesLink(String imagesLink) {
		this.imagesLink = imagesLink;
	}
	public Double getHousePrice() {
		return housePrice;
	}
	public void setHousePrice(Double housePrice) {
		this.housePrice = housePrice;
	}
	public Area getArea() {
		return area;
	}
	public void setArea(Area area) {
		this.area = area;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getHouseId() {
		return houseId;
	}
	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}
	public String getHouseAddress() {
		return houseAddress;
	}
	public void setHouseAddress(String houseAddress) {
		this.houseAddress = houseAddress;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAreaID() {
		return areaID;
	}
	public void setAreaID(String areaID) {
		this.areaID = areaID;
	}

	
	public String getHouseArea() {
		return houseArea;
	}
	public void setHouseArea(String houseArea) {
		this.houseArea = houseArea;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
