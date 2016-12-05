package org.springmvc.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.jms.Session;
import javax.servlet.http.HttpSession;

import org.mybatis.entity.Area;
import org.mybatis.entity.City;
import org.mybatis.entity.Enshrine;
import org.mybatis.entity.House;
import org.mybatis.entity.Province;
import org.mybatis.entity.TraRecords;
import org.mybatis.entity.Type;
import org.mybatis.entity.User;
import org.mybatis.service.AreaService;
import org.mybatis.service.CityService;
import org.mybatis.service.EnshrineService;
import org.mybatis.service.HouseService;
import org.mybatis.service.ProvinceService;
import org.mybatis.service.TraRecordsService;
import org.mybatis.service.TypeService;
import org.mybatis.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("enshrine")
public class EnshrineController {
	
	private List<Enshrine> enshrineList = new ArrayList<>();
	private List<House> houseList = new ArrayList<>();
	private List<TraRecords> traRecordsList = new ArrayList<>();
	private List<Type> typeList = new ArrayList<>();
	private List<Area> areaList = new ArrayList<>();
	private List<Area> areaLinkageList = new ArrayList<>();
	private List<City> cityList = new ArrayList<>();
	private List<Province> provinceList = new ArrayList<>();
	private List<User> userList = new ArrayList<>();
	
	@Resource
	private EnshrineService enshrineService;
	@Resource
	private HouseService houseService;
	@Resource
	private TraRecordsService traRecordsService;
	@Resource
	private TypeService typeService;
	@Resource
	private AreaService areaService;
	@Resource
	private CityService cityService;
	@Resource
	private ProvinceService provinceService;
	@Resource
	private UserService userService;
	
	
	
	@RequestMapping("/enshrineList")
	public String getListEnshrine(Model model,HttpSession session){
		int totalNumber = houseList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;
		if (session.getAttribute("user")==null) {
			return "redirect:/house/login";
		}
		User user=(User) session.getAttribute("user");
		enshrineList = enshrineService.getHouseList(user.getUserName());
		for (Enshrine enshrine : enshrineList) {
			System.out.println("房屋..." + enshrine.getHouseAddress());
		}
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("enshrineList", enshrineList);
		return "house/user_list";
	}
	
	@RequestMapping(value="add/{houseId}")
	public String addEnshrine(@PathVariable("houseId") Integer houseId,Model model,
			HttpSession session){
		if (session.getAttribute("user")==null) {
			return "redirect:/house/login";
		}
		houseList=houseService.getHouseList();
		houseList.get(1);
		House houseInfo = null;
		for (House house : houseList) {
			System.err.println(house.getHouseAddress());
			if (houseId.equals(house.getHouseId())) {
				houseInfo=house;
				break;
			}
		}
		User user=(User) session.getAttribute("user");
		Enshrine enshrine = new Enshrine();
		enshrine.setHouseAddress(houseInfo.getHouseAddress());
		enshrine.setHouseArea(houseInfo.getHouseArea());
		enshrine.setHostId(houseInfo.getUserId());
		enshrine.setHousePrice(houseInfo.getHousePrice());
		enshrine.setTypeId(houseInfo.getTypeId());
		enshrine.setAreaID(houseInfo.getAreaID());
		enshrine.setUserName(user.getUserName());
		enshrine.setDate(houseInfo.getDate());
		enshrine.setInfo(houseInfo.getInfo());
		enshrine.setImagesLink(houseInfo.getImagesLink());
		System.err.println(enshrine.getHouseAddress());
		
		if (enshrineService.add(enshrine) ==1) {
			enshrineList.add(enshrine);
			System.out.println("1111111111");
		}
		//model.addAttribute("enshrineList", enshrineList);
		return "redirect:/enshrine/enshrineList";
	}
	/**
	 * 取消收藏
	 * @return
	 *  杨振
	 */
	@RequestMapping(value="delete/{enshrineId}")
	public String deleteEnshrine(@PathVariable("enshrineId") Integer enshrineId,Model model ){
		System.err.println(enshrineId);
		Enshrine enshrineInfo = null;
		//enshrineInfo.setEnshrineId(enshrineId);
		for (Enshrine enshrine : enshrineList) {
			if (enshrineId.equals(enshrine.getEnshrineId())) {
				System.out.println(enshrine.getEnshrineId()+enshrine.getHouseAddress());
				enshrineInfo = enshrine;
				break;
			}
		}
		
		System.out.println(enshrineInfo.getHouseAddress());
		if (enshrineService.delete(enshrineInfo)==1) {
			enshrineList.remove(enshrineInfo);
		}
		
		
		return "redirect:/enshrine/enshrineList";
	}
}
