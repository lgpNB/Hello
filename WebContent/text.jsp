<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
   <a href="productQuery?keyword=xie&currentPage=1">测试</a>
   <a href="register">新增用户</a>
   
   
   <form action="user" method="post">
       <input type="hidden" name="_method" value="DELETE">
        <div class="rt_form">
			  <h2>会员注册</h2>
			  <ul>
			   <li class="user_icon">
			    <input type="text" name="userId" class="textbox" placeholder="用戶id"/>
			   </li>

      <input type="submit" value="注销账户">
      </div>
   </form>
</body>
</html>