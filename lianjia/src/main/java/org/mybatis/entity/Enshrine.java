package org.mybatis.entity;

import java.util.Date;



/**
 * 收藏表实体对象
 * @author 666666
 *
 */
public class Enshrine {

	
		private  int enshrineId;
		private  String houseAddress;
		private  int typeId;
		private  String userName;
		private  int hostId;
		private  String areaID;
		private  Double housePrice;
		private  String houseArea;
		private  Date date;
		private  String info;
		private  String imagesLink;
		//用户：多对一
			private User user;
			//房屋类型
			private Type type;
			//区县
			private Area area;
			public int getEnshrineId() {
				return enshrineId;
			}
			public void setEnshrineId(int enshrineId) {
				this.enshrineId = enshrineId;
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
			public String getUserName() {
				return userName;
			}
			public void setUserName(String userName) {
				this.userName = userName;
			}
			public int getHostId() {
				return hostId;
			}
			public void setHostId(int hostId) {
				this.hostId = hostId;
			}
			public String getAreaID() {
				return areaID;
			}
			public void setAreaID(String areaID) {
				this.areaID = areaID;
			}
			public Double getHousePrice() {
				return housePrice;
			}
			public void setHousePrice(Double housePrice) {
				this.housePrice = housePrice;
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
			public User getUser() {
				return user;
			}
			public void setUser(User user) {
				this.user = user;
			}
			public Type getType() {
				return type;
			}
			public void setType(Type type) {
				this.type = type;
			}
			public Area getArea() {
				return area;
			}
			public void setArea(Area area) {
				this.area = area;
			}
			
	
}
