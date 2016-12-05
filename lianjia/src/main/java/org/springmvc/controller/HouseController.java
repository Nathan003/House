package org.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.entity.Area;
import org.mybatis.entity.City;
import org.mybatis.entity.House;
import org.mybatis.entity.Province;
import org.mybatis.entity.SelectTemp;
import org.mybatis.entity.TraRecords;
import org.mybatis.entity.Type;
import org.mybatis.entity.User;
import org.mybatis.service.AreaService;
import org.mybatis.service.CityService;
import org.mybatis.service.HouseService;
import org.mybatis.service.ProvinceService;
import org.mybatis.service.SelectTempService;
import org.mybatis.service.TraRecordsService;
import org.mybatis.service.TypeService;
import org.mybatis.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("house")
public class HouseController {

	private List<House> houseList = new ArrayList<>();
	private List<TraRecords> traRecordsList = new ArrayList<>();
	private List<Type> typeList = new ArrayList<>();
	private List<Area> areaList = new ArrayList<>();
	private List<Area> areaLinkageList = new ArrayList<>();
	private List<City> cityList = new ArrayList<>();
	private List<Province> provinceList = new ArrayList<>();
	private List<User> userList = new ArrayList<>();

	private List<House> selectList = new ArrayList<>();
	
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
	@Resource
	private SelectTempService selectTempService;
	
	private static SelectTemp selectTemp=new SelectTemp();
	
	private House houseSelectByHouseparam=new House();

	/**
	 * 用户登录
	 * 
	 * @author 王刚 2016-11-5
	 */
	/**
	 * 用户登录请求 2016-11-5
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String show(Model model) {

		return "user/index";

	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(String userName, String userPassword,User user,
			HttpSession session) {
		userList = userService.getUserList();
		for (User users : userList) {
			System.err.println(users.getUserName() + users.getUserPassword());
			if (users.getUserName().equals(userName)
					&& users.getUserPassword().equals(userPassword)) {
				// 登录成功返回首页
				session.setAttribute("user", users);
				// 设置session有效时间为500秒
				session.setMaxInactiveInterval(500);
				System.err.println(users.getUserName());
				return new ModelAndView("redirect:/house/houseList");
			} else {
				session.setAttribute("message", "登录失败，请重新输入");
				// 设置session有效时间为2秒
				session.setMaxInactiveInterval(2);
			}
		}
		// 登录失败返回登录页面重新登陆
		return new ModelAndView("user/index");
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(User user,
			HttpSession session) {
		session.invalidate();
		return "redirect:/house/houseList";
	}

	/**
	 * 用戶注冊，数据保存 2016-11-5
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addUser(String userName, String userPassword,
			String userAddress, String userPhone, String userEmail,
			HttpSession session) {
		System.err.println(userName + userPassword);
		// 设置session有效时间为2秒
		session.setMaxInactiveInterval(2);
		session.setMaxInactiveInterval(2);
		if(userName.indexOf(" ") != -1 || userPassword.indexOf(" ") != -1){
			session.setAttribute("message", "用户名和密码不能有空格，请重新注册");
			return new ModelAndView("index");
		}
		User user = new User();
		user.setUserName(userName);
		user.setUserPassword(userPassword);
		user.setUserAddress(userAddress);
		user.setUserPhone(userPhone);
		user.setUserEmail(userEmail);
		userList = userService.getUserList();
		for (User users : userList) {
			System.err.println(users.getUserName());
			if (users.getUserName().equals(userName)) {
				session.setAttribute("message", "用户名已存在，请重新注册");
				session.setAttribute("messagess", userName);
				return new ModelAndView("user/index");
			}
		}
		int num = 0;
		num = userService.insertUser(user);
		if (num == 1) {
			userList.add(user);
		}
		session.setAttribute("message", "注册成功，请登录");
		return new ModelAndView("user/index");
	}
	
	/**
	 * 用户密码重置
	 * 王刚
	 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView retieve(String userName, String userEmail, String userPassword,
			HttpSession session, Model model) {	
		userList = userService.getUserList();	
		for (User user : userList) {
			if (user.getUserName().equals(userName) && user.getUserEmail().equals(userEmail)) {
				user.setUserName(userName);
				user.setUserEmail(userEmail);
				user.setUserPassword(userPassword);
				System.err.println(userPassword);
				int num = userService.updateUser(user);
				System.err.println(userPassword);
				if(num==1){
					System.err.println(userPassword);
					model.addAttribute("user", user);
					session.setAttribute("message", "你的密码"+userPassword);
					return	new ModelAndView("user/index");
				}
				
			}
		}
		
		return new ModelAndView("user/index");
	}

	
	
	
	

	// 无参构造器，初始化typeList，areaList
	public HouseController() {
	}

	// 获得省
	@RequestMapping(value = "/selectProvinceList", method = RequestMethod.GET)
	@ResponseBody
	public List<Province> getProvince() {
		provinceList = provinceService.getProvinceList();
		for (Province province : provinceList) {
			System.out.println(province.getProvince()
					+ province.getProvinceId());
		}
		return provinceList;
	}

	// 由省获得市
	@RequestMapping(value = "/selectCityList/{privinceid}", method = RequestMethod.GET)
	@ResponseBody
	public List<City> getCity(@PathVariable("privinceid") String privinceID) {
		Province pro = new Province();
		pro.setProvinceId(privinceID);
		cityList = cityService.getCityList(pro);
		for (Province province : provinceList) {
			System.out.println(province.getProvince()
					+ province.getProvinceId());
		}
		return cityList;
	}

	// 由市获得区县
	@RequestMapping(value = "/selectAreaList/{cityid}", method = RequestMethod.GET)
	@ResponseBody
	public List<Area> getArea(@PathVariable("cityid") String cityID) {
		City city = new City();
		city.setCityID(cityID);
		areaLinkageList = areaService.getAreaListLinkage(city);
		return areaLinkageList;
	}

	/**
	 * 房屋显示
	 * 
	 * @param model
	 * @return --- 页面跳转到房屋显示页面
	 */
	@RequestMapping("/houseList")
	public String getHouseList(Model model,HttpSession session) {
		houseList = houseService.getHouseList();
		int totalNumber = houseList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;
		for (House house : houseList) {
			System.out.println("房屋..." + house.getHouseAddress());
		}
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("houseList", houseList);
		return "house/list_01";
	}

	/**
	 * 房屋列表页面跳转到更新页面
	 */
	@RequestMapping(value = "/update/{username}", method = RequestMethod.GET)
	public String updateHouse(@PathVariable("username") String userName,
			Model model) {
		// 数据库查找，获得该用户的house对象
		House house = null;
		for (House house1 : houseList) {
			if (house1.getUser().getUserName().equals(userName)) {
				house = house1;
			}
		}
		model.addAttribute("house", house);
		System.out.println("更新" + house.getUser().getUserName()
				+ house.getArea().getArea());
		return "house/update";
	}

	/**
	 * 房屋信息列表删除,并添加到交易记录中 2016-11-4 杨振
	 */
	@RequestMapping(value = "/delete/{houseId}", method = RequestMethod.GET)
	public String deleteHouse(@PathVariable("houseId") Integer houseId,
			Model model,HttpSession session) {
		
		if (session.getAttribute("user")==null) {
			return "redirect:/house/login";
		}
		
		House houseInfo = null;
		for (House house : houseList) {
			if (houseId.equals(house.getHouseId())) {
				houseInfo = house;
				break;
			}
		}
		User user = (User)(session.getAttribute("user"));
		TraRecords traRecords = new TraRecords();
		traRecords.setUserName(user.getUserName());
		traRecords.setHouseAddress(houseInfo.getHouseAddress());
		traRecords.setHousePrice(houseInfo.getHousePrice());
		traRecords.setHouseArea(houseInfo.getHouseArea());
		traRecords.setHostName(houseInfo.getUser().getUserName());
		System.err.println(traRecords.getHostName()
				+ traRecords.getHouseAddress() + traRecords.getHouseArea()
				+ traRecords.getHousePrice());
		// 添加到记录表中
		if (traRecordsService.insertTraRecords(traRecords) == 1) {
			traRecordsList.add(traRecords);
		}
		// 删除发布的信息
		if (houseService.delete(houseInfo) == 1) {
			traRecordsList.remove(houseInfo);

		}
		return "redirect:/house/houseList";
	}

	/**
	 * 更新
	 * 
	 * @return
	 */
	@RequestMapping(value = "/update/{username}", method = RequestMethod.POST)
	public String updateHouse(@PathVariable("username") String userName,
			@Validated House house, BindingResult bindingResult) {
		// 判断spring协同hibernate验证结果是否有错
		if (bindingResult.hasErrors()) {
			return "house/update";
		}
		// 要修改的house对象----删除
		House updateHouse = null;
		// 修改后的house对象----添加
		House realUpdateHouse = new House();
		/**
		 * 根据house中房屋类型的名称获得房屋类型的ID：typeId
		 */
		typeList = typeService.getTypeList();
		for (Type type : typeList) {
			if (type.getTypeName().equals(house.getType().getTypeName())) {
				System.out.println(type.getTypeId());
				realUpdateHouse.setTypeId(type.getTypeId());
			}

		}
		areaList = areaService.getAreaList();
		for (Area area : areaList) {
			if (area.getArea().equals(house.getArea().getArea())) {
				System.out.println(area.getAreaID());
				realUpdateHouse.setAreaID(area.getAreaID());
			}
		}
		for (House subHouse : houseList) {
			if (subHouse.getUser().getUserName().equals(userName)) {
				System.out.println(subHouse.getUser().getUserId());
				realUpdateHouse.setUserId(subHouse.getUser().getUserId());
				realUpdateHouse.setHouseId(subHouse.getHouseId());
			}
		}

		realUpdateHouse.setHouseAddress(house.getHouseAddress());
		realUpdateHouse.setHousePrice(house.getHousePrice());
		realUpdateHouse.setHouseArea(house.getHouseArea());
		realUpdateHouse.setDate(new Date());
		System.out.println(realUpdateHouse.getHouseId()
				+ realUpdateHouse.getHouseAddress()
				+ realUpdateHouse.getTypeId() + realUpdateHouse.getUserId()
				+ realUpdateHouse.getAreaID() + realUpdateHouse.getHousePrice()
				+ realUpdateHouse.getHouseArea() + realUpdateHouse.getDate());
		System.out.println(userName);
		System.out.println("更新房子前。。。。");
		if (houseService.update(realUpdateHouse) == 1) {
			System.out.println("更新房子。。。。");
			for (House subHouse : houseList) {
				if (subHouse.getUser().getUserName().equals(userName)) {
					updateHouse = subHouse;
					break;
				}
			}
			// 更新给前端的人员集合
			houseList.remove(updateHouse);
			houseList.add(realUpdateHouse);
		}

		// 更新完毕后重定向到用户列表页面
		return "redirect:/house/houseList";
	}

	// 添加
	@RequestMapping(value = "/addHouse", method = RequestMethod.GET)
	public String addUser(Model model,Map map,HttpSession session) {
		if (session.getAttribute("user")==null) {
			return "redirect:/house/login";
		}
		typeList=typeService.getTypeList();
		map.put("typeList", typeList);
		model.addAttribute("house", new House());
		System.out.println("添加房屋...........");
		return "house/add_01";
	}

	/**
	 * 有新增用户请求：真正的提交表单保存数据---add.jsp跳转到UserController.java,用post 方法中参数 ：at
	 * Validated---验证 方法参数中新增spring提供的文件上传对象 MultipartFile[]--数组对象
	 * HttpServletRequest--获得服务器真实路径
	 */
	@RequestMapping(value = "/addHouse", method = RequestMethod.POST)
	public String addUser(@Validated House house, BindingResult bindingResult,
			@RequestParam("attachs") MultipartFile[] multipartFiles,
			HttpServletRequest request) {
		
		// 由spring验证器与hibernate验证器规则同时校验User对象的属性值
		// bindingResult对象负责收集校验的出错信息，提供是否有错误方法
		// 当判断hasErrors方法返回true，代表有校验出错信息，返回前端新增用户视图
		if (bindingResult.hasErrors()) {
			return "house/add";
		}

		House realAddHouse = new House();
		
		System.out.println("上传前。。。。。。。。。。。。");
		// spring皮量上传文件
		for (MultipartFile attachs : multipartFiles) {
			// 判断数组对象中的对象是否为空
			if (!attachs.isEmpty()) {
				// 有session对象获得服务器真实路径
				String realPath = request.getSession().getServletContext()
						.getRealPath("/resources");

				// 创建一个file对象,获得上传文件的文件名称
				File file = new File(realPath + "/"
						+ attachs.getOriginalFilename());
				realAddHouse.setImagesLink(attachs.getOriginalFilename());
				// 由spring负责传输文件
				try {
					attachs.transferTo(file);
					System.out.println("上传后。。。。。。。。。。。。");
				} catch (IllegalStateException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				} catch (IOException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
			}
		}

		
		realAddHouse.setInfo(house.getInfo());
		realAddHouse.setHouseAddress(house.getHouseAddress());
		int addTypeId = Integer.valueOf(house.getType().getTypeName());
		realAddHouse.setTypeId(addTypeId);
		realAddHouse.setHousePrice(house.getHousePrice());
		realAddHouse.setHouseArea(house.getHouseArea());
		// 区县
		realAddHouse.setAreaID(house.getArea().getArea());
		/*
		 * areaList=areaService.getAreaList(); for (Area area : areaList) {
		 * if(area.getArea().equals(house.getArea().getArea())){
		 * System.out.println(area.getAreaID());
		 * realAddHouse.setAreaID(area.getAreaID()); } }
		 */
		// 用户Id
		userList = userService.getUserList();
		for (User user : userList) {
			if (user.getUserName().equals(house.getUser().getUserName())) {
				System.out.println(user.getUserId());
				realAddHouse.setUserId(user.getUserId());
			}
		}
		realAddHouse.setDate(new Date());

		System.out.println(house.getHouseAddress()
				+ house.getType().getTypeName() + house.getUser().getUserName()
				+ house.getArea().getArea() + house.getHousePrice()
				+ house.getHouseArea());
		// HouseId为0，是自动生成的
		System.out.println(realAddHouse.getHouseId()
				+ realAddHouse.getHouseAddress() + "房型："
				+ realAddHouse.getTypeId() + realAddHouse.getUserId()
				+ realAddHouse.getAreaID() + realAddHouse.getHousePrice()
				+ realAddHouse.getHouseArea() + realAddHouse.getDate());

		if (houseService.add(realAddHouse) == 1) {
			houseList.add(realAddHouse);
		}

		System.out.println("添加房屋 post....");

		// 返回前端页面:使用重定向到用户列表视图，避免重复提交
		return "redirect:/house/houseList";
	}

	/**
	 * 查询
	 */
	@RequestMapping(value = "/getSelectLike", method = RequestMethod.POST)
	public String getSelectLike(House house, Model model,HttpSession session) {
		System.out.println(house.getHouseAddress());
		int totalNumber = houseList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;
		houseList = houseService.getSelectLike(house.getHouseAddress());

		System.err.println(houseList);
		if (houseList.size() < 1) {
			return "house/empty";
		}

		for (House houses : houseList) {
			System.err.println(houses.getUser().getUserName());
		}
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("houseList", houseList);
		return "house/list_01";
	}

	/**
	 * 根据区域查询
	 */	
	@RequestMapping(value = "/getSelectByArea/{area}", method = RequestMethod.GET)
	public String getSelectByArea(@PathVariable("area")String areaParam, Model model,HttpSession session) {
		System.out.println("区域都比器"+areaParam);
		selectTemp.setId(1);
		int totalNumber = selectList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;
		/*selectTemp.setAreaName(areaParam);
		selectList = houseService.getHouseListByArea(selectTemp);*/		
		if("不限".equals(areaParam)){
			selectTemp.setAreaName(null);
			System.out.println("不限"+selectTemp.getAreaName());			
			selectList = houseService.getHouseListByArea(selectTemp);
		}else {
			selectTemp.setAreaName(areaParam);			
			System.out.println("dd"+selectTemp.getAreaName()+":"+selectTemp.getId());
			selectList = houseService.getHouseListByArea(selectTemp);
		}
		selectTempService.update(selectTemp);
			
		if (selectList.size() < 1) {
			return "house/empty";
		}

		for (House houses : selectList) {
			System.err.println(houses.getUser().getUserName()+"电话"+houses.getArea().getArea());
		}
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("houseList", selectList);
		
		return "house/list_01";
		
		/*System.out.println("区域都比器"+areaParam);
		int totalNumber = houseList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;
		if("不限".equals(areaParam)){
			houseList = houseService.getHouseList();
		}else{
			areaList = areaService.getAreaList();
			for (Area area : areaList) {
				if (area.getArea().equals(areaParam)) {
					System.out.println("ID"+area.getAreaID());
					//aId=area.getAreaID();
					houseSelectByHouseparam.setAreaID(area.getAreaID());
					System.out.println("添加。。。。");
				}
			}
			houseList = houseService.getHouseListByHouseParam(houseSelectByHouseparam);
		}				
		//houseList = houseService.getHouseListByHouseParam(houseSelectByHouseparam);
				
		if (houseList.size() < 1) {
			return "house/empty";
		}

		for (House houses : houseList) {
			System.err.println(houses.getUser().getUserName()+"电话"+houses.getArea().getArea());
		}
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("houseList", houseList);
		
		return "house/list_01";*/
	}
	/**
	 * 根据价格查询
	 * @param priceParam
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getSelectByprice/{price}", method = RequestMethod.GET)
	public String getSelectByPrice(@PathVariable("price")String priceParam, Model model,HttpSession session) {
		/*System.out.println("价:"+priceParam);		
		//List<House> priceList = new ArrayList<>();   selectList
		selectList = houseService.getHouseListByHouseParam(houseSelectByHouseparam);
		int totalNumber = houseList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;
		if (selectList.size() < 1) {
			return "house/empty";
		}
			
		if("不限".equals(priceParam)){
			System.out.println("不限");
		}else if(priceParam.contains("元以上")){
			String [] price=priceParam.split("元以上");
			double gPrice=Double.valueOf(price[0]);	
			System.out.println("查询价格"+gPrice);
			for (int i = 0; i < selectList.size(); i++) {
				if(!(selectList.get(i).getHousePrice()>=gPrice)){
					System.err.println("价格1:"+selectList.get(i).getHousePrice());
					System.err.println("t:"+selectList.remove(i));
					i--;
				}									
			}			
		}else{
			//6000-8000
			String [] price=priceParam.split("-");
			double minPrice=Double.valueOf(price[0]);
			double maxPrice=Double.valueOf(price[1]);
			System.out.println(minPrice+":"+maxPrice);
			
			for(int i = 0; i < selectList.size(); i++) {
				System.out.println(selectList.size());
				//System.err.println("价格123:"+selectList.get(i).getHousePrice());
				if(!(selectList.get(i).getHousePrice()>=minPrice&&selectList.get(i).getHousePrice()<maxPrice)){
					System.out.println("格2:"+selectList.get(i).getHousePrice());					
					System.out.println(selectList.remove(selectList.get(i)));
					i--;
				}							
			}			
		}	
		if (selectList.size() < 1) {
			return "house/empty";
		}
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("houseList", selectList);
		
		return "house/list_01";*/
		int totalNumber = selectList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;
		if("不限".equals(priceParam)){
			System.out.println("不限");
			selectTemp.setMinPrice(null);
			selectTemp.setMaxPrice(null);
		}else if(priceParam.contains("元以上")){
			String [] price=priceParam.split("元以上");
			double gPrice=Double.valueOf(price[0]);	
			System.out.println("查询价格"+gPrice);
			selectTemp.setMinPrice(gPrice);	
			selectTemp.setMaxPrice(null);
		}else{
			//6000-8000
			String [] price=priceParam.split("-");
			double minPrice=Double.valueOf(price[0]);
			double maxPrice=Double.valueOf(price[1]);
			System.out.println(minPrice+":"+maxPrice);
			selectTemp.setMinPrice(minPrice);
			selectTemp.setMaxPrice(maxPrice);				
		}	
		selectTempService.update(selectTemp);
		selectList = houseService.getHouseListByArea(selectTemp);
		
		if (selectList.size() < 1) {
			return "house/empty";
		}
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("houseList", selectList);
		
		return "house/list_01";
	}
	/**
	 * 房屋面积查询
	 * @param houseAreaParam
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getSelectByHouseArea/{HouseArea}", method = RequestMethod.GET)
	public String getSelectByHouseArea(@PathVariable("HouseArea")String houseAreaParam, Model model,HttpSession session) {
		/*System.out.println("面积"+houseAreaParam);		
		int totalNumber = houseList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;

		selectList = houseService.getHouseListByHouseParam(houseSelectByHouseparam);
		
		if (selectList.size() < 1) {
			return "house/empty";
		}
		
		if("不限".equals(houseAreaParam)){
			System.out.println("不限");
		}else if(houseAreaParam.contains("平以上")){
			String [] area=houseAreaParam.split("平以上");
			double hArea=Double.valueOf(area[0]);	
			System.out.println("查询价格"+hArea);
			for (int i = 0; i < selectList.size(); i++) {
				String [] area1=selectList.get(i).getHouseArea().split("平");
				double hA=Double.valueOf(area1[0]);
				
				if(!(hA>=hArea)){
					System.err.println("价格"+selectList.get(i).getHouseArea());
					System.err.println("t:"+selectList.remove(i));
					i--;
				}								
			}		
		}else{
			String [] area=houseAreaParam.split("-");
			double minHouseArea=Double.valueOf(area[0]);
			double maxHouseArea=Double.valueOf(area[1]);
			System.out.println(minHouseArea+":"+maxHouseArea);
			
			for (int i = 0; i < selectList.size(); i++) {
				String [] area1=selectList.get(i).getHouseArea().split("平");
				double hArea=Double.valueOf(area1[0]);
				
				if(!(hArea>=minHouseArea&&hArea<maxHouseArea)){
					System.err.println("价格"+selectList.get(i).getHousePrice());
					System.err.println("t:"+selectList.remove(i));
					i--;
				}								
			}					
		}	
		if (selectList.size() < 1) {
			return "house/empty";
		}
		
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("houseList", selectList);
		
		return "house/list_01";*/
		int totalNumber = selectList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;
		if("不限".equals(houseAreaParam)){
			System.out.println("不限");
			selectTemp.setMinHouseArea(null);
			selectTemp.setMaxHouseArea(null);
			
		}else if(houseAreaParam.contains("平以上")){
			String [] area=houseAreaParam.split("平以上");
			double hArea=Double.valueOf(area[0]);	
			System.out.println("查询价格"+hArea);
			selectTemp.setMinHouseArea(hArea);	
			selectTemp.setMaxHouseArea(null);			
		}else{
			//50-70
			String [] area=houseAreaParam.split("-");
			double minHouseArea=Double.valueOf(area[0]);
			double maxHouseArea=Double.valueOf(area[1]);
			System.out.println(minHouseArea+":"+maxHouseArea);
			selectTemp.setMinHouseArea(minHouseArea);	
			selectTemp.setMaxHouseArea(maxHouseArea);									
		}
		selectTempService.update(selectTemp);
		session.setAttribute("selectTemp", selectTemp);
		selectList = houseService.getHouseListByArea(selectTemp);
		if (selectList.size() < 1) {
			return "house/empty";
		}
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("houseList", selectList);
		
		return "house/list_01";

	}
	/**
	 * 房屋类型查询
	 * @param typeParam
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getSelectByType/{type}", method = RequestMethod.GET)
	public String getSelectByType(@PathVariable("type") String typeParam, Model model,HttpSession session) {
		/*System.out.println("类型"+typeParam);
		int totalNumber = houseList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;
		selectList = houseService.getHouseListByHouseParam(houseSelectByHouseparam);
		if (selectList.size() < 1) {
			return "house/empty";
		}
		
		if("不限".equals(typeParam)){
			System.out.println("不限");
		}else if(typeParam.contains("以上")){
			
		}else{
			List<Integer> typeId = new ArrayList<>();
			typeList = typeService.getTypeList();
			for (Type type : typeList) {
				System.out.println("三国杀"+type.getTypeName());
				if (type.getTypeName().contains(typeParam)) {
					System.out.println("ID:"+type.getTypeId());
					typeId.add(type.getTypeId());
				}
			}
			boolean flag = false;
			for (int i = 0; i < selectList.size(); i++) {
				for (int j = 0; j < typeId.size(); j++) {
					if(selectList.get(i).getTypeId()!=typeId.get(j)){
						System.err.println("类型1:"+selectList.get(i).getTypeId());
						flag=false;
						
					}else{
						flag=true;break;
					}				
				}
				if(!flag){
					System.err.println("t1:"+selectList.remove(i));
					i--;
				}
			}			
		}
					
		if (selectList.size() < 1) {
			return "house/empty";
		}
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("houseList", selectList);
		return "house/list_01";*/
		int totalNumber = selectList.size();
		int totalPage = totalNumber%10==0 ? totalNumber/10 : totalNumber/10 +1;
		if("不限".equals(typeParam)){
			System.out.println("不限");
			selectTemp.setTypeName(null);			
		}else if(typeParam.contains("以上")){
			selectTemp.setTypeName("others");			
		}else{
			selectTemp.setTypeName(typeParam);						
		}
		selectTempService.update(selectTemp);
		selectList = houseService.getHouseListByArea(selectTemp);
		if (selectList.size() < 1) {
			return "house/empty";
		}
		session.setAttribute("pagesize", 10);
		session.setAttribute("curPage", 1);
		session.setAttribute("totalPage", totalPage);
		model.addAttribute("houseList", selectList);
		return "house/list_01";
	}

	
	/**
	 * 查看某个房子信息
	 */
	@RequestMapping(value = "/{info}", method = RequestMethod.GET)
	public String viewHouse(@PathVariable("info") String Info, Model model) {
		System.out.println(Info);
		houseList = houseService.getHouseList();
		House viewHouse = null;
		for (House house : houseList) {
			if (Info.equals(house.getInfo())) {
				viewHouse = house;
				break;
			}
		}
		//System.out.println(viewHouse.getType().getTypeName());
		model.addAttribute("house", viewHouse);

		return "house/detail";
	}

}
