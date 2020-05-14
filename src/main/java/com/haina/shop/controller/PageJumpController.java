package com.haina.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageJumpController {
	@RequestMapping("login")
   public String jumpLogin() {
	   return "login";
   }
	@RequestMapping("register")
	public String jumpRigister() {
		return "register";
	}
	@RequestMapping("users")
	public String jumpUser() {
		return "users";
	}
	@RequestMapping("find_pwd")
	public String jumpPSWFind() {
		return "find_pwd";
	}
}
