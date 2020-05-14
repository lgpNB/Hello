package com.haina.shop.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.haina.shop.bean.Product;
import com.haina.shop.service.ProductService;
@Controller
public class ProductController {
	@Autowired
	ProductService ps;
	@RequestMapping(value="/productQuery",method=RequestMethod.GET)
	public ModelAndView getProductsToShow(@RequestParam("keyword") String keyword,@RequestParam(value="currentPage",defaultValue="1")int currentPage) throws UnsupportedEncodingException {
		String keyWord = new String(keyword.getBytes("iso-8859-1"),"utf-8");
		PageInfo<Product> pageInfo = ps.getProductToShow(keyWord, currentPage);
		ModelAndView mv = new ModelAndView("product_list");
		long total=pageInfo.getTotal();
		List<Product> list=pageInfo.getList();
		mv.addObject("list",list);
		mv.addObject("total",total);
		return mv;
	}

}
