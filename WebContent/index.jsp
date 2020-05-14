<%@ page import="com.haina.shop.bean.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>


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
  //冒泡
  $(".favorite_list li a").click(function(){
	alert("链接");
	window.location.href='product.html';
	});
	$(".favorite_list li .shop_collect_goods").click(function(){
	alert("收藏产品");
	event.stopPropagation();
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
     <li><a href="register">注册</a></li>
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
<ul class="wrap navList">
<li class="category">
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
 
<!--advertisment area-->
<section class="wrap">
 <!--ctCont-->
 <div class="IdxmainArea">
    <!--slide-->
    <div id="slide">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
         <a href="#">
          <img src="upload/slide01.jpg"/>
         </a>
        </div>
        <div class="swiper-slide">
         <a href="#">
          <img src="upload/slide02.jpg"/>
         </a>
        </div>
        <div class="swiper-slide">
         <a href="#">
          <img src="upload/slide03.jpg"/>
         </a>
        </div>
      </div>
      <div class="pagination"></div>  
    </div>
    <!--singleAd-->
    <div class="singleAd">
     <a href="#">
      <img src="upload/sigleAd.jpg"/>
     </a>
    </div>
     <!--bestShop-->
    <dl class="bestShop">
     <dt>
      <strong>优秀商家推荐</strong>
      <a href="shop_list.html" class="fr">更多</a>
     </dt>
     <dd>
      <a href="shop.html">
       <img src="upload/001.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="shop.html">
       <img src="upload/002.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="shop.html">
       <img src="upload/003.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="shop.html">
       <img src="upload/004.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="shop.html">
       <img src="upload/005.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="shop.html">
       <img src="upload/006.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="shop.html">
       <img src="upload/007.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
     <dd>
      <a href="shop.html">
       <img src="upload/008.jpg"/>
       <h2>DM精品女装</h2>
      </a>
     </dd>
    </dl>
 </div>
 <!--asdCont-->
 <div class="IdxAsideRt">
  <!--login-->
  <div class="idxRtLogin">
   <div class="fstArea">
     <a href="#" class="userIcon">
      <img src="images/icon/DefaultAvatar.jpg">
     </a>
     <div class="rtInfor">
      <p>Hi!你好</p>
      <p class="obviousText">免费入驻，提升品牌效应！</p>
     </div>
    </div>
    <div class="secArea">
     <a href="login" >登录</a>
     <a href="register">免费注册</a>
     <a href="register.html">商户入驻</a>
    </div>
   </div>
   <dl class="idxRtAtc">
    <dt>
     <em class="obviousText">最新公告</em>
     <a href="article_list.html">more</a>
    </dt>
    <dd><a href="article_read.html">2015年12月20日系统升级通告统升级通告</a></dd>
    <dd><a href="article_read.html">2015年12月20日系统升级通告</a></dd>
    <dd><a href="article_read.html">2015年12月20日系统升级通告</a></dd>
    <dd><a href="article_read.html">2015年12月20日系统升级通告</a></dd>
    <dd><a href="article_read.html">2015年12月20日系统升级通告</a></dd>
   </dl>
   <dl class="idxRtAtc">
    <dt>
     <em>质量标准技术参数</em>
     <a href="article_list.html">more</a>
    </dt>
    <dd><a href="article_read.html">2015年12月20日系统升级通告统升级通告</a></dd>
    <dd><a href="article_read.html">2015年12月20日系统升级通告</a></dd>
   </dl>
  </div>
</section>
<!--productList-->
<section class="wrap idxproLi">
 <h2>
  <strong>
   <a href="channel.html">产品展示区</a>
  </strong>
  <span class="classLi">
   <a href="product_list.html">夏装</a>
   <a href="product_list.html">连衣裙</a>
   <a href="product_list.html">开衫</a>
   <a href="product_list.html">牛仔裤</a>
   <a href="product_list.html">背带裤</a>
   <a href="product_list.html">T恤</a>
  </span>
 </h2>
 <div class="ltArea">
  <!--ad:category pic-->
   <a href="product_list.html"><img src="upload/bestCategoryPic01.jpg"/></a>
 </div>
 <div class="ctLi">
  <ul>
   <li>
    <a href="product.html">
     <img src="upload/goods001.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods003.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>545.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods004.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods003.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods001.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>980.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods002.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>642.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods004.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>793.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods001.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>755.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods002.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>360.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods003.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1255.00</span></p>
    </a>
   </li>
  </ul>
  <!--bestBrand-->
  <div class="idxBrandLi">
   <a href="shop.html"><img src="upload/brandLogo01.jpg"/></a>
   <a href="shop.html"><img src="upload/brandLogo02.jpg"/></a>
   <a href="shop.html"><img src="upload/brandLogo03.jpg"/></a>
   <a href="shop.html"><img src="upload/brandLogo04.jpg"/></a>
  </div>
 </div>
</section>

<section class="wrap idxproLi">
 <h2>
  <strong>
   <a href="channel.html">设备展示区</a>
  </strong>
  <span class="classLi">
   <a href="product_list.html">夏装</a>
   <a href="product_list.html">连衣裙</a>
   <a href="product_list.html">开衫</a>
   <a href="product_list.html">牛仔裤</a>
   <a href="product_list.html">背带裤</a>
   <a href="product_list.html">T恤</a>
  </span>
 </h2>
 <div class="ltArea">
  <!--ad:category pic-->
   <a href="product_list.html"><img src="upload/bestCategoryPic02.jpg"/></a>
 </div>
 <div class="ctLi">
  <ul>
   <li>
    <a href="product.html">
     <img src="upload/goods005.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods006.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>545.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods007.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods008.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1000.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods009.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>980.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods010.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>642.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods005.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>793.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods006.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>755.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods007.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>360.00</span></p>
    </a>
   </li>
   <li>
    <a href="product.html">
     <img src="upload/goods008.jpg"/>
     <h3>2019时尚新款</h3>
     <p><span>1255.00</span></p>
    </a>
   </li>
  </ul>
  <!--bestBrand-->
  <div class="idxBrandLi">
   <a href="shop.html"><img src="upload/brandLogo01.jpg"/></a>
   <a href="shop.html"><img src="upload/brandLogo02.jpg"/></a>
   <a href="shop.html"><img src="upload/brandLogo03.jpg"/></a>
   <a href="shop.html"><img src="upload/brandLogo04.jpg"/></a>
  </div>
 </div>
</section>
<!--case-->
<section class="wrap idexCase">
 <h2>
  <strong>工程案例</strong>
  <a href="#">more</a>
 </h2>
 <ul>
  <li>
   <a href="#">
    <img src="upload/case001.jpg"/>
    <h3>时尚搭配案例</h3>
   </a>
  </li>
  <li>
   <a href="#">
    <img src="upload/case002.jpg"/>
    <h3>时尚搭配案例</h3>
   </a>
  </li>
  <li>
   <a href="#">
    <img src="upload/case003.jpg"/>
    <h3>时尚搭配案例</h3>
   </a>
  </li>
  <li>
   <a href="#">
    <img src="upload/case004.jpg"/>
    <h3>时尚搭配案例</h3>
   </a>
  </li>
  <li>
   <a href="#">
    <img src="upload/case005.jpg"/>
    <h3>时尚搭配案例</h3>
   </a>
  </li>
 </ul>
</section>
<!--section:two->articleList-->
<section class="wrap idxArticle">
  <dl>
   <dt>
    <strong>招标资讯</strong>
    <a href="article_list.html">more</a>
   </dt>
   <dd><a href="article_read.html">内蒙古君联生物发展有限公司阿巴嘎旗流化床锅炉除尘及链条炉排炉内脱硫设施采购项目公开招标招标公告</a></dd>
   <dd><a href="article_read.html">四川省老年大学教学用具及设备采购二标段公开招标采购公告</a></dd>
   <dd><a href="article_read.html">慢道峰山桥至仙境源风机路、曲径通幽至老虎洞至孙家至王沟服务区亮化工程公开招标公告</a></dd>
   <dd><a href="article_read.html">四川省资阳市安岳县民政局第二次全国地名普查外包服务采购项目公开招标采购公告</a></dd>
   <dd><a href="article_read.html">内蒙古君联生物发展有限公司阿巴嘎旗流化床锅炉除尘及链条炉排炉内脱硫设施采购项目公开招标招标公告</a></dd>
  </dl>
  <dl style="margin:0 2.5%">
   <dt>
    <strong>最新询价信息</strong>
    <a href="article_list.html">more</a>
   </dt>
   <dd><a href="article_read.html">内蒙古君联生物发展有限公司阿巴嘎旗流化床锅炉除尘及链条炉排炉内脱硫设施采购项目公开招标招标公告</a></dd>
   <dd><a href="article_read.html">四川省老年大学教学用具及设备采购二标段公开招标采购公告</a></dd>
   <dd><a href="article_read.html">慢道峰山桥至仙境源风机路、曲径通幽至老虎洞至孙家至王沟服务区亮化工程公开招标公告</a></dd>
   <dd><a href="article_read.html">四川省资阳市安岳县民政局第二次全国地名普查外包服务采购项目公开招标采购公告</a></dd>
   <dd><a href="article_read.html">内蒙古君联生物发展有限公司阿巴嘎旗流化床锅炉除尘及链条炉排炉内脱硫设施采购项目公开招标招标公告</a></dd>
  </dl>
  <dl>
   <dt>
    <strong>行业资讯</strong>
    <a href="article_list.html">more</a>
   </dt>
   <dd><a href="article_read.html">内蒙古君联生物发展有限公司阿巴嘎旗流化床锅炉除尘及链条炉排炉内脱硫设施采购项目公开招标招标公告</a></dd>
   <dd><a href="article_read.html">四川省老年大学教学用具及设备采购二标段公开招标采购公告</a></dd>
   <dd><a href="article_read.html">慢道峰山桥至仙境源风机路、曲径通幽至老虎洞至孙家至王沟服务区亮化工程公开招标公告</a></dd>
   <dd><a href="article_read.html">四川省资阳市安岳县民政局第二次全国地名普查外包服务采购项目公开招标采购公告</a></dd>
   <dd><a href="article_read.html">内蒙古君联生物发展有限公司阿巴嘎旗流化床锅炉除尘及链条炉排炉内脱硫设施采购项目公开招标招标公告</a></dd>
  </dl>
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
