package com.haina.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haina.shop.bean.Product;
import com.haina.shop.bean.User;
import com.haina.shop.bean.UserExample;
import com.haina.shop.dao.ProductMapper;
import com.haina.shop.dao.UserMapper;

@Service
public class ProductService {
	  @Autowired
	  ProductMapper pm;
      public void test() {
    	 Product product=pm.selectByPrimaryKey(1);
    	  
      }
	public PageInfo<Product> getProductToShow(String keyWord, int currentPage) {
		PageHelper.startPage(currentPage, 10);
		List<Product> list = pm.selectAll(keyWord);
		//用PageInfo对结果进行包装
		PageInfo<Product> page = new PageInfo<Product>(list,10);
		return page;
	}
    
}
