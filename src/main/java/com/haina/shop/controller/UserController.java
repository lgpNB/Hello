package com.haina.shop.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.haina.shop.bean.User;
import com.haina.shop.service.UserService;

@Controller
public class UserController {
       @Autowired
       UserService us;
       @RequestMapping(value="/user",method=RequestMethod.POST)
       public String insertUser(User user) {
    	   return us.insertUser(user);
       }
       @RequestMapping(value="/user",method=RequestMethod.DELETE)
       public String deleteUser(@Param("userId")Integer userId) {
    	   return us.deleteUser(userId);
       }
       @RequestMapping(value="/user",method=RequestMethod.PUT)
       public String updateUser(@RequestParam("userName")String username,@RequestParam("userPassword")String userpassword,@RequestParam("newUserPassword")String newuserpassword) {
 
    	   return us.updateUser(username, userpassword, newuserpassword);
       }
       @RequestMapping(value="/user",method=RequestMethod.GET)
       public String selectUser(User user) {
    	 
    	   return us.selectUser(user.getUserName(), user.getUserPassword());
       }
}
