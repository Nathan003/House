package org.springmvc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.entity.TraRecords;
import org.mybatis.service.TraRecordsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;





/**
 * 使用注解at Controller代表该类属于springmvc的控制器类
 * @author 666666
 *2016-10-25 10:11
 */
@Controller
@RequestMapping("/traRecords")
public class TraRecordsController {
	
	
	//封装由dao实现最终返回的用户集合对象2016-10-31 16:53
	private List<TraRecords> traRecordsList = new ArrayList<TraRecords>();

	//使用spring注解方式：注入一个用户服务接口。该用户服务实现类中必须at Service
	@Resource
	private TraRecordsService traRecordsService;
	
	//通过控制器类的无参构造方法初始化userMap
	public TraRecordsController(){
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
		return "traRecords/list";
	}
	/**
	 * 有查询用户列表页面请求：跳转到新增用户页面
	 * 方法参数model对象封装了初始化对象user，返回到前端add.jsp
	 */
	@RequestMapping(value="/addTraRecords",method=RequestMethod.GET)
	public String addUser(Model model){
		model.addAttribute("traRecords", new TraRecords());
		
		System.err.println("addUser1-----------");
		return "traRecords/add";
	}
	/**
	 * 由新增用户页面请求：真正的提交表单保存数据
	 * 方法中参数at Validated
	 * 《p》
	 * 方法参数中新增spring提供的文件上传数组对象MultipartFile[]
	 * 方法参数中新增httpServletRequest对象为了获得服务器真实路径
	 */
	@RequestMapping(value="/addTraRecords",method=RequestMethod.POST)
	public String addUser(@Validated TraRecords traRecords,BindingResult bindResult,
			@RequestParam("attachs") MultipartFile[] multipartFile,HttpServletRequest request){
		/**
		 * 由spring验证器与hibernate验证规则同时校验user对象中的属性
		 * bindingResult对象负责收集出错信息，提供是否有错误方法
		 * 当判断hasErrors方法返回true，代表有出错信息;返回前端新增用户页面
		 */
		if (bindResult.hasErrors()) {
			return "traRecords/add";
		}
		
		/**
		 * 更新测试map对象替换为数据库获得的list对象
		 * 更新日期：2016-10-31 17：20
		 */
		if (traRecordsService.insertTraRecords(traRecords)==1) {
			traRecordsList.add(traRecords);
		}
		System.err.println("addTraRecords----------------");
		
		//返回前端页面,使用重定向到用户列表视图避免重复提交
		return "redirect:/traRecords/traRecordsList";
		}
	
	/**
	 * 查看某个用户信息
	 */
	@RequestMapping(value="/recordId",method=RequestMethod.GET)
	public String viewUser(int recordId,Model model){
		TraRecords viewTraRecords = null;
		System.out.println("111111");
		for (TraRecords traRecords : traRecordsList) {
			if (traRecords.getRecordId().equals(recordId)){
				viewTraRecords = traRecords;
				break;
			}
		}
		model.addAttribute("traRecords",viewTraRecords);
		return "traRecords/view";
	}
	
	/**
	 * 删除用户
	 */
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String deleteTraRecords(int recordId,Model model){
		/**
		 * 更新:由map对象替换为list对象
		 * 2016-10-31 17：34
		 */
		System.err.println("111");
		TraRecords delTraRecords= new TraRecords();
		delTraRecords.setRecordId(recordId);
		if (traRecordsService.deleteTraRecords(delTraRecords)==1) {
			for(TraRecords traRecords : traRecordsList){
				if (traRecords.getRecordId().equals(recordId)) {
					delTraRecords = traRecords;
					break;
				}
			}
			/**
			 * 直接把前端就收到的用户对象，从list集合中移除，更新前端页面显示
			 */
			traRecordsList.remove(delTraRecords);
		}
		
		//删除完成后重定向到用户列表
		return "redirect:/traRecords/traRecordsList";
	}

}
