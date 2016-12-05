package org.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.mybatis.entity.User;
import org.mybatis.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


	
			
			
			
			/**
			 * 用户密码重置
			 *//*
			@RequestMapping(value = "/update/{username}", method = RequestMethod.GET)
			public String updateUser(@PathVariable("username") String userName,
					@Validated User user, BindingResult bindResult) {
				// 判断spring协同hibernate验证结果是否有错
				if (bindResult.hasErrors()) {
					return "fail";
				}

				// 更新map对象中的用户
				//userMap.put(userName, user);
				User updateUser = null;
				if (userService.update(user)==1){
					for (User cutUser : userList) {
						if (user.getUserName().equals(userName)){
							updateUser = cutUser;
							break;
						}
					}
					userList.remove(updateUser);
					userList.add(user);
				}
				
				
				System.out.println("updateUser post -------------------------");
				// 更新完毕后重定向到用户列表页面
				return "MyJsp";
			}
*/
			
			

