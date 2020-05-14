package com.haina.shop.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.haina.shop.bean.User;
import com.haina.shop.bean.UserExample;
import com.haina.shop.dao.UserMapper;

@Service
public class UserService {
	 @Autowired
     UserMapper userm;
     public String insertUser(User user) {
   	    userm.insert(user);
   	    return "user";
   	  
     }
     public String deleteUser(Integer userId) {
    	 userm.deleteByPrimaryKey(userId);
    	 return "success";
    	 
     }
     public String updateUser(String userName,String userPassword,String newUserPassword) {
    	 User user=userm.selectByUserExample(userName, userPassword);
    	 if(user!=null) {
    		 userm.updateByPassword(newUserPassword,user.getUserId());
    		 return "user";
    	 }else {
    		 return "change_password";
    	 }
    	 
     }
     public String selectUser(String userName,String userPassword) {
    	 User user=userm.selectByUserExample(userName, userPassword);
    	 if(user!=null) {
    		 RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
    		 HttpServletRequest request = ((ServletRequestAttributes) requestAttributes).getRequest();
    		 HttpSession session = request.getSession();
    		 session.setAttribute("user", user);
    	 return "channel";
    	 }else {
			return "login";
		}
     }
}
