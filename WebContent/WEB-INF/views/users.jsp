<%@ page import="com.haina.shop.bean.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>用户中心</title>
<meta name="keywords"  content="DeathGhost" />
<meta name="description" content="DeathGhost" />
<meta name="author" content="DeathGhost,deathghost@deathghost.cn">
<link rel="icon" href="images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/style.css" /><script src="js/html5.js"></script>
<script src="js/jquery.js"></script>
<script>
$(document).ready(function(){
  $("nav .indexAsideNav").hide();
  $("nav .category").mouseover(function(){
	  $(".asideNav").slideDown();
	  });
  $("nav .asideNav").mouseleave(function(){
	  $(".asideNav").slideUp();
	  });
});
</script>
</head>
<body>
<!--header-->
<header>
  <!--topNavBg-->
  <div class="topNavBg">
   <div class="wrap">
   <!--topLeftNav-->
    <% User user=(User)session.getAttribute("user");
      if(user==null){
   %>
    <ul class="topLtNav">
     <li><a href="login" class="obviousText">亲，请登录</a></li>
     <li><a href="register">注册</a></li>
     <li><a href="#">移动端</a></li>
    </ul>
    <%}else{ %>
    <ul class="topLtNav">
     <li><a href="#">欢迎<%=user.getUserName() %></a></li>
     <li><a href="register.html">注册</a></li>
     <li><a href="#">移动端</a></li>
    </ul>
    <%} %>
   <!--topRightNav-->
    <ul class="topRtNav">
     <li><a href="users">个人中心</a></li>
     <li><a href="cart.html" class="cartIcon">购物车<i>0</i></a></li>
     <li><a href="favorite.html" class="favorIcon">收藏夹</a></li>
     <li><a href="user.html">商家中心</a></li>
     <li><a href="article_read.html" class="srvIcon">客户服务</a></li>
     <li><a href="union_login.html">联盟管理</a></li>
    </ul>
   </div>
  </div>
  <!--logoArea-->
  <div class="wrap logoSearch">
   <!--logo-->
   <div class="logo">
    <h1><img src="images/logo.png"/></h1>
   </div>
   <!--search-->
   <div class="search">
    <ul class="switchNav">
     <li class="active" id="chanpin">产品</li>
     <li id="shangjia">商家</li>
     <li id="zixun">搭配</li>
     <li id="wenku">文库</li>
    </ul>
    <div class="searchBox">
     <form action="productQuery" method="get">
       <div class="inputWrap">
       <input type="text" name="keyword" placeholder="输入产品关键词或货号"/>
       </div>
       <div class="btnWrap">
       <input type="submit" value="搜索"/>
       </div>
      </form>
     <a href="#" class="advancedSearch">高级搜索</a>
    </div>
   </div>
  </div>
  <!--nav-->
  <nav>
<a>全部产品分类</a>
<dl class="asideNav indexAsideNav">
<dt><a href="channel.html">女装</a></dt>
<dd>
<a href="#">夏装新</a>
<a href="#">连衣裙</a>
<a href="#">T恤</a>
<a href="#">衬衫</a>
<a href="#">裤子</a>
<a href="#">牛仔裤</a>
<a href="#">背带裤</a>
<a href="#">短外套</a>
<a href="#">时尚外套</a>
<a href="#">风衣</a>
<a href="#">毛衣</a>
<a href="#">背心</a>
<a href="#">吊带</a>
<a href="#">民族服装</a>
</dd>
<dt><a href="channel.html">男装</a></dt>
<dd>
<a href="#">衬衫</a>
<a href="#">背心</a>
<a href="#">西装</a>
<a href="#">POLO衫</a>
<a href="#">马夹</a>
<a href="#">皮衣</a>
<a href="#">毛衣</a>
<a href="#">针织衫</a>
<a href="#">牛仔裤</a>
<a href="#">外套</a>
<a href="#">夹克</a>
<a href="#">卫衣</a>
<a href="#">风衣</a>
<a href="#">民族风</a>
<a href="#">原创设计</a>
<a href="#">大码</a>
<a href="#">情侣装</a>
<a href="#">开衫</a>
<a href="#">运动裤</a>
<a href="#">工装裤</a>
</dd>
</dl>
</li>
<li>
<a href="index.html" class="active">首页</a>
</li>
<li>
<a href="#">时尚搭配</a>
</li>
<li>
<a href="channel.html">原创设计</a>
</li>
<li>
<a href="channel.html">时尚代购</a>
</li>
<li>
<a href="channel.html">民族风</a>
</li>
<li>
<a href="information.html">时尚搭配</a>
</li>
<li>
<a href="library.html">搭配知识</a>
</li>
<li>
<a href="#">促销专区</a>
</li>
<li>
<a href="#">其他</a>
</li>
</ul>
</nav>

 </header>
 <script>
 $(document).ready(function(){
   //测试效果，程序对接如需变动重新编辑
   $(".switchNav li").click(function(){
     $(this).addClass("active").siblings().removeClass("active");
     });
   $("#chanpin").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入产品关键词或货号");
     });
   $("#shangjia").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入商家店铺名");
     });
   $("#zixun").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入关键词查找文章内容");
     });
   $("#wenku").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入关键词查找文库内容");
     });
   });
   
 </script>
 
<section class="wrap user_center_wrap">
 <!--左侧导航-->
  <aside class="user_aside_nav">
  <dl>
   <dt>买家中心</dt>
   <dd><a href="order_list.html">我的订单</a></dd>
   <dd><a href="price_list.html">我的询价单</a></dd>
   <dd><a href="favorite.html">我的收藏</a></dd>
   <dd><a href="address.html">我的地址库</a></dd>
  </dl>
  <dl>
   <dt>商家管理中心</dt>
   <dd><a href="authenticate.html">我要开店</a></dd>
   <dd><a href="setting.html">店铺设置</a></dd>
   <dd><a href="seller_product_list.html">商品列表</a></dd>
   <dd><a href="seller_order_list.html">订单列表</a></dd>
   <dd><a href="offer_list.html">询价单</a></dd>
  </dl>
  <dl>
   <dt>控制面板</dt>
   <dd><a href="message.html">站内短消息</a></dd>
   <dd><a href="account.html">资金管理</a></dd>
   <dd><a href="profile.html">个人资料</a></dd>
   <dd><a href="change_password.html">修改密码</a></dd>
  </dl>
 </aside>
 <!--右侧：内容区域-->
 <div class="user_rt_cont">
  <div class="top_title">
   <strong><em>DeathGhost</em>欢迎回到用户中心</strong>
  </div>
  <!--用户信息-->
  <div class="user_factbook">
   <a href="profile.html" class="user_icon">
    <img src="images/icon/DefaultAvatar.jpg"/>
    <span>修改头像</span>
   </a>
   <div class="user_infor">
    <p><strong>DeathGhost</strong>（商户会员）<span class="user_vip unaccredited">未认证！</span><a href="authenticate.html">申请入驻</a></p><!--**未认证的class值为"unaccredited"**-->
    <p>上次登录时间：<time>2013-01-14 13:55</time>，登录ip：192.168.1.1</p>
    <p>账户余额：<strong class="rmb_icon">0.00</strong><a href="account.html" class="btn">充值</a><a href="account.html" class="btn">提现</a></p>
   </div>
  </div>
  <!--买家订单提醒-->
  <dl class="user_order_tips">
   <dt>买家订单提醒</dt>
   <dd>
    <a href="order_list.html">
     <strong>20</strong>
     <em>待付款订单</em>
    </a>
   </dd>
   <dd>
    <a href="order_list.html">
     <strong>10</strong>
     <em>待发货订单</em>
    </a>
   </dd>
   <dd>
    <a href="order_list.html">
     <strong>30</strong>
     <em>待确认订单</em>
    </a>
   </dd>
   <dd>
    <a href="order_list.html">
     <strong>15</strong>
     <em>待评价订单</em>
    </a>
   </dd>
  </dl>
  <!--卖家订单提醒-->
  <dl class="user_order_tips">
   <dt>卖家订单提醒</dt>
   <dd>
    <a href="#">
     <strong>9</strong>
     <em>待付款订单</em>
    </a>
   </dd>
   <dd>
    <a href="#">
     <strong>10</strong>
     <em>待发货订单</em>
    </a>
   </dd>
   <dd>
    <a href="#">
     <strong>20</strong>
     <em>待评价订单</em>
    </a>
   </dd>
   <dd>
    <a href="#">
     <strong>2</strong>
     <em>退换货订单</em>
    </a>
   </dd>
  </dl>
 </div>
</section>
<!--footer-->
<footer>
 <!--help-->
 <ul class="wrap help">
  <li>
   <dl>
    <dt>消费者保障</dt>
    <dd><a href="article_read.html">保障范围</a></dd>
    <dd><a href="article_read.html">退换货流程</a></dd>
    <dd><a href="article_read.html">服务中心</a></dd>
    <dd><a href="article_read.html">更多服务特色</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>新手上路</dt>
    <dd><a href="article_read.html">保障范围</a></dd>
    <dd><a href="article_read.html">退换货流程</a></dd>
    <dd><a href="article_read.html">服务中心</a></dd>
    <dd><a href="article_read.html">更多服务特色</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>付款方式</dt>
    <dd><a href="article_read.html">保障范围</a></dd>
    <dd><a href="article_read.html">退换货流程</a></dd>
    <dd><a href="article_read.html">服务中心</a></dd>
    <dd><a href="article_read.html">更多服务特色</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>服务保障</dt>
    <dd><a href="article_read.html">保障范围</a></dd>
    <dd><a href="article_read.html">退换货流程</a></dd>
    <dd><a href="article_read.html">服务中心</a></dd>
    <dd><a href="article_read.html">更多服务特色</a></dd>
   </dl>
  </li>
 </ul>
 <dl class="wrap otherLink">
  <dt>友情链接</dt>
  <dd><a href="http://www.17sucai.com" target="_blank">17素材</a></dd>
  <dd><a href="http://www.17sucai.com/pins/24448.html">HTML5模块化后台管理模板</a></dd>
  <dd><a href="http://www.17sucai.com/pins/15966.html">绿色清爽后台管理系统模板</a></dd>
  <dd><a href="http://www.17sucai.com/pins/14931.html">黑色的cms商城网站后台管理模板</a></dd>
  <dd><a href="http://www.deathghost.cn" target="_blank">前端博客</a></dd>
  <dd><a href="http://www.deathghost.cn" target="_blank">博客</a></dd>
  <dd><a href="http://www.deathghost.cn" target="_blank">新码笔记</a></dd>
  <dd><a href="http://www.deathghost.cn" target="_blank">DethGhost</a></dd>
  <dd><a href="#">当当</a></dd>
  <dd><a href="#">优酷</a></dd>
  <dd><a href="#">土豆</a></dd>
  <dd><a href="#">新浪</a></dd>
  <dd><a href="#">钉钉</a></dd>
  <dd><a href="#">支付宝</a></dd>
 </dl>
 <div class="wrap btmInfor">
  <p>© 2013 DeathGhost.cn 版权所有 网络文化经营许可证：浙网文[2013]***-027号 增值电信业务经营许可证：浙B2-200***24-1 信息网络传播视听节目许可证：1109***4号</p>
  <address>联系地址：陕西省西安市雁塔区XXX号</address>
 </div>
</footer>
</body>
</html>
