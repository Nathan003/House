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

import org.mybatis.entity.Admin;
import org.mybatis.entity.Area;
import org.mybatis.entity.City;
import org.mybatis.entity.House;
import org.mybatis.entity.Province;
import org.mybatis.entity.TraRecords;
import org.mybatis.entity.Type;
import org.mybatis.entity.User;
import org.mybatis.service.AdminService;
import org.mybatis.service.AreaService;
import org.mybatis.service.CityService;
import org.mybatis.service.HouseService;
import org.mybatis.service.ProvinceService;
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

@Controller
@RequestMapping("/admin")
public class AdminController {
	private List<Admin> adminList = new ArrayList<>();

	@Resource
	private AdminService adminService;



	@Resource
	private HouseService houseService;

	@Resource
	private TraRecordsService traRecordsService;
	@Resource
	private TypeService typeService;
	@Resource
	private AreaService areaService;
	@Resource
	private UserService userService;
	private List<House> houseList = new ArrayList<>();
	private List<TraRecords> traRecordsList = new ArrayList<>();
	private List<Type> typeList = new ArrayList<>();
	private List<Area> areaList = new ArrayList<>();
	private List<Area> areaLinkageList = new ArrayList<>();
	private List<City> cityList = new ArrayList<>();
	private List<Province> provinceList = new ArrayList<>();
	private List<User> userList = new ArrayList<>();

	@Resource
	private CityService cityService;
	@Resource
	private ProvinceService provinceService;
	
	private House houseSelectByHouseparam;

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

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String show(Model model) {

		return "back/back_login";

	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String getAdminList(Model model,TraRecords traRecord) {
		houseList = houseService.getHouseList();
		for (House house : houseList) {
			System.out.println("房屋..." + house.getHouseAddress());
		}

		model.addAttribute("houseList", houseList);
		adminList = adminService.select();
		for (Admin admins : adminList) {
			System.out.println("管理员" + admins.getAdminname());
		}
		model.addAttribute("adminList", adminList);

		userList = userService.getUserList();
		for (User user : userList) {
			System.out.println("房东" + user.getUserName());
		}
		model.addAttribute("userList", userList);
		
		traRecordsList = traRecordsService.getTraRecordList(traRecord);
		for (TraRecords traRecords : traRecordsList) {
			System.err.println("getRecordsList---------------------");
		}
		model.addAttribute("traRecordsList",traRecordsList);
		
		
		return "back/index";

	}

	@RequestMapping(value = "/houseList", method = RequestMethod.GET)
	public String getHouseList(Model model) {
		houseList = houseService.getHouseList();
		for (House house : houseList) {
			System.out.println("房屋..." + house.getHouseAddress());
		}
		model.addAttribute("houseList", houseList);
		return "back/back_house";

	}

	@RequestMapping(value = "/userList", method = RequestMethod.GET)
	public String getUserList(Model model) {
		userList = userService.getUserList();
		for (User user : userList) {
			System.out.println("房东" + user.getUserName());
		}
		model.addAttribute("userList", userList);
		return "back/back_user";

	}

	/**
	 * 登录验证
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Admin admin, Model model,HttpSession session) {
		System.out.println(admin.getAdminname());
		System.out.println(admin.getAdminpassword());
		adminList = adminService.select();
		Admin loginAdmin = null;

		for (Admin admins : adminList) {
			if (admins.getAdminname().equals(admin.getAdminname())
					&& admins.getAdminpassword().equals(
							admin.getAdminpassword())) {
				session.setAttribute("admin", admins);
				// 设置session有效时间为500秒
				session.setMaxInactiveInterval(500);
				return "redirect:/admin/index";
			}
		}
		model.addAttribute("adminList", adminList);
		return "back/back_login";
	}

	@RequestMapping(value = "/{username}", method = RequestMethod.POST)
	public String updateHouse(@PathVariable("username") String userName,
			@Validated User user, BindingResult bindingResult) {
		// 判断spring协同hibernate验证结果是否有错
		System.out.println(userName);
		if (bindingResult.hasErrors()) {
			return "back/back_user_update";
		}

		User updateUser = null;

		for (User u : userList) {
			if (u.getUserName().equals(userName)) {
				System.out.println(u.getUserId());
				user.setUserId(u.getUserId());
				break;
			}
		}
		System.out.println(user.getUserId() + user.getUserName()
				+ user.getUserAddress() + user.getUserGender());
		// System.err.println(userService.update(user));
		if (userService.update(user) == 1) {

			for (User cutUser : userList) {
//				System.err.println(cutUser.getUserGender());
				System.out.println(user.getUserId() + user.getUserName()
						+ user.getUserAddress() + user.getUserGender());
				if (user.getUserName().equals(userName)) {
					updateUser = cutUser;
					break;
				}
			}
			userList.remove(updateUser);
			userList.add(user);
		}

		System.out.println("updateUser post -------------------------");
		// 更新完毕后重定向到用户列表页面
		return "redirect:/admin/userList";
	}

	/**
	 * 更新用户跳转页面：由用户列表页面跳转到用户更新页面
	 */
	@RequestMapping(value = "/{username}", method = RequestMethod.GET)
	public String updateUser(@PathVariable("username") String userName,
			Model model) {

		User updateUser = null;
		for (User user : userList) {
			if (user.getUserName().equals(userName)) {
				updateUser = user;
				break;
			}
		}

		model.addAttribute("user", updateUser);

		System.out.println("updateUser get -------------------------");

		return "back/back_user_update";
	}

	/**
	 * 由查询用户列表页面请求：跳转到新增用户页面
	 */
	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public String addUser(Model model) {
		model.addAttribute("user", new User());
		
		System.out.println("addUser get -------------------");
		return "back/back_user_add";
	}

	/**
	 * 由新增用户页面请求：真正的提交表单保存数据 方法中的参数at validated
	 * 
	 */

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(@Validated User user, BindingResult bindResult) {

		/**
		 * 由spring验证器与hibernate验证规则同时校验user对象中的属性：
		 * bingdingResult对象负责收集校验出错信息，提供是否有错误方法
		 * 当判断hasErrors方法返回true，代表有校验出错信息：返回前端新增用户视图
		 */
		if (bindResult.hasErrors()) {
			return "back/back_user_add";
		}

		if (userService.insertUser(user) == 1) {
			userList.add(user);
		}

		System.out.println(" addUser post -------------------------");

		// 返回前端视图:使用重定向到用户列表视图
		return "redirect:/admin/userList";
	}

	/**
	 * 删除用户
	 */
	@RequestMapping(value = "/delete/{username}", method = RequestMethod.GET)
	public String delUser(@PathVariable("username") String userName, Model model) {
		// 从封装的map对象里删除用户：参数userName为map的key
		// userMap.remove(userName);
		System.out.println(userName);
		User user = new User();
		user.setUserName(userName);
		if (userService.deleteUser(user) == 1) {
			for (User users : userList) {
				if (user.getUserName().equals(userName)) {
					users = user;
					break;
				}
			}
			userList.remove(user);
		}

		// 删除完成后重定向到用户列表
		return "redirect:/admin/userList";
	}
	
	
	@RequestMapping(value="/deleteHouse/{houseId}",method = RequestMethod.GET)
	public String delHouse(@PathVariable("houseId") Integer houseId, Model model) {
		House delHouse = null;
		for (House house : houseList) {
			if (house.getHouseId()==houseId) {
				delHouse=house;
			}
		}
		
		System.err.println(delHouse.getHouseAddress());
		if (houseService.delete(delHouse)==1) {
			houseList.remove(delHouse);
		}
		
		return "redirect:../../admin/houseList";
		
		
	}
	
	/**
	 * 房屋列表页面跳转到更新页面
	 */
	@RequestMapping(value = "/update/{houseid}", method = RequestMethod.GET)
	public String updateHouse(@PathVariable("houseid") int houseId,
			Model model,Map map) {
		// 数据库查找，获得该用户的house对象
		House house = null;
		for (House house1 : houseList) {
			if (house1.getHouseId()==houseId) {
				house = house1;
			}
		}
		typeList=typeService.getTypeList();
		map.put("typeList", typeList);
		
		model.addAttribute("house", house);
		System.out.println("更新" + house.getUser().getUserName()
				+ house.getArea().getArea());
		return "back/back_house_update";
	}

	/**
	 * 更新
	 * 
	 * @return
	 */
	@RequestMapping(value = "/update/{houseid}", method = RequestMethod.POST)
	public String updateHouse(@PathVariable("houseid") int houseId,
			@Validated House house, BindingResult bindingResult,@RequestParam("attachs") MultipartFile[] multiPartFile,
			HttpServletRequest request) {
		// 判断spring协同hibernate验证结果是否有错
		if (bindingResult.hasErrors()) {
			return "back/back_house_update";
		}
		// 修改后的house对象----添加
		House realUpdateHouse = new House();
		
		System.out.println("上传前。。。。。。。。。。。。");
		// spring皮量上传文件
		for (MultipartFile attachs : multiPartFile) {
			// 判断数组对象中的对象是否为空
			if (!attachs.isEmpty()) {
				// 有session对象获得服务器真实路径
				String realPath = request.getSession().getServletContext()
						.getRealPath("/resources");
				
				// 创建一个file对象,获得上传文件的文件名称
				File file = new File(realPath + "/"
						+ attachs.getOriginalFilename());
				realUpdateHouse.setImagesLink(attachs.getOriginalFilename());
				System.out.println("文件"+attachs.getOriginalFilename());
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
		
		// 要修改的house对象----删除
		House updateHouse = null;
		
		/**
		 * 根据house中房屋类型的名称获得房屋类型的ID：typeId
		 */
		/*typeList = typeService.getTypeList();
		for (Type type : typeList) {
			System.out.println("打断"+type.getTypeId()+house.getType().getTypeId()+house.getType().getTypeName());
			if (type.getTypeName().equals(house.getType().getTypeId())) {
				System.out.println("类型"+type.getTypeId());
				realUpdateHouse.setTypeId(type.getTypeId());
			}

		}*/
		System.out.println("打断"+house.getType().getTypeName());
		int typeId=Integer.parseInt(house.getType().getTypeName());
		realUpdateHouse.setTypeId(typeId);
		
		//areaList = areaService.getAreaList();		
		/*for (Area area : areaList) {
			if (area.getArea().equals(house.getArea().getArea())) {
				System.err.println("ss:"+area.getAreaID());
				realUpdateHouse.setAreaID(area.getAreaID());
			}
		}*/
		System.err.println(house.getArea().getArea());
		realUpdateHouse.setAreaID(house.getArea().getArea());
		userList=userService.getUserList();
		for (User user : userList) {
			if (user.getUserName().equals(house.getUser().getUserName())) {
				System.err.println("ss:"+user.getUserName());
				realUpdateHouse.setUserId(user.getUserId());
			}
		}
		/*for (House subHouse : houseList) {
			if (subHouse.getUser().getUserName().equals(userName)) {
				System.out.println(subHouse.getUser().getUserId());
				realUpdateHouse.setUserId(subHouse.getUser().getUserId());
				realUpdateHouse.setHouseId(subHouse.getHouseId());
			}
		}*/
		
		realUpdateHouse.setHouseId(houseId);
		realUpdateHouse.setHouseAddress(house.getHouseAddress());
		realUpdateHouse.setHousePrice(house.getHousePrice());
		realUpdateHouse.setHouseArea(house.getHouseArea());
		realUpdateHouse.setDate(new Date());
		realUpdateHouse.setInfo(house.getInfo());
		
		System.out.println(realUpdateHouse.getHouseId()
				+ realUpdateHouse.getHouseAddress()
				+ realUpdateHouse.getTypeId() + realUpdateHouse.getUserId()
				+ realUpdateHouse.getAreaID() + realUpdateHouse.getHousePrice()
				+ realUpdateHouse.getHouseArea() + realUpdateHouse.getDate());
		
		System.out.println("更新房子前。。。。");
		if (houseService.update(realUpdateHouse) == 1) {
			System.out.println("更新房子。。。。");
			for (House subHouse : houseList) {
				if (subHouse.getHouseId()==houseId) {
					updateHouse = subHouse;
					break;
				}
			}
			// 更新给前端的人员集合
			houseList.remove(updateHouse);
			houseList.add(realUpdateHouse);
		}

		// 更新完毕后重定向到用户列表页面
		return "redirect:/admin/houseList";
	}
	
	@RequestMapping(value = "/addHouse", method = RequestMethod.GET)
	public String addHouse(Model model,Map map) {
		model.addAttribute("house", new House());
		typeList=typeService.getTypeList();
		map.put("typeList", typeList);
		System.out.println("添加房屋...........");
		return "back/back_house_add";
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
			return "back/back_house";
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
		realAddHouse.setInfo(house.getInfo());
		
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
		return "redirect:/admin/houseList";
	}
	
	/**
	 * 查询用户列表:方法参数中model对象用来传递用户map对象返回到前端
	 * 更新：springmvc课程中的人员保存mapper对象，替换为由数据库查询的人员列表
	 * 更新日期：2016-10-31 17：12
	 */
	@RequestMapping("/traRecordsList")
	public String getTraRecordsList(TraRecords traRecord,Model model){
		System.err.println("getUserList---------------------");
		traRecordsList=traRecordsService.getTraRecordList(traRecord);
		for (TraRecords traRecords : traRecordsList) {
			System.err.println("getRecordsList---------------------");
		}
		model.addAttribute("traRecordsList",traRecordsList);
		return "back/back_records";
	}
}
