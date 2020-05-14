<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8"/>
<title>æ¾åå¯ç </title>
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
    <ul class="topLtNav">
     <li><a href="login.html" class="obviousText">äº²ï¼è¯·ç»å½</a></li>
     <li><a href="register.html">æ³¨å</a></li>
     <li><a href="#">ç§»å¨ç«¯</a></li>
    </ul>
   <!--topRightNav-->
    <ul class="topRtNav">
     <li><a href="user.html">ä¸ªäººä¸­å¿</a></li>
     <li><a href="cart.html" class="cartIcon">è´­ç©è½¦<i>0</i></a></li>
     <li><a href="favorite.html" class="favorIcon">æ¶èå¤¹</a></li>
     <li><a href="user.html">åå®¶ä¸­å¿</a></li>
     <li><a href="article_read.html" class="srvIcon">å®¢æ·æå¡</a></li>
     <li><a href="union_login.html">èçç®¡ç</a></li>
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
     <li class="active" id="chanpin">äº§å</li>
     <li id="shangjia">åå®¶</li>
     <li id="zixun">æ­é</li>
     <li id="wenku">æåº</li>
    </ul>
    <div class="searchBox">
     <form>
      <div class="inputWrap">
      <input type="text" placeholder="è¾å¥äº§åå³é®è¯æè´§å·"/>
      </div>
      <div class="btnWrap">
      <input type="submit" value="æç´¢"/>
      </div>
     </form>
     <a href="#" class="advancedSearch">é«çº§æç´¢</a>
    </div>
   </div>
  </div>
  <!--nav-->
  <nav>
<ul class="wrap navList">
<li class="category">
<a>å¨é¨äº§ååç±»</a>
<dl class="asideNav indexAsideNav">
<dt><a href="channel.html">å¥³è£</a></dt>
<dd>
<a href="#">å¤è£æ°</a>
<a href="#">è¿è¡£è£</a>
<a href="#">Tæ¤</a>
<a href="#">è¡¬è¡«</a>
<a href="#">è£¤å­</a>
<a href="#">çä»è£¤</a>
<a href="#">èå¸¦è£¤</a>
<a href="#">ç­å¤å¥</a>
<a href="#">æ¶å°å¤å¥</a>
<a href="#">é£è¡£</a>
<a href="#">æ¯è¡£</a>
<a href="#">èå¿</a>
<a href="#">åå¸¦</a>
<a href="#">æ°ææè£</a>
</dd>
<dt><a href="channel.html">ç·è£</a></dt>
<dd>
<a href="#">è¡¬è¡«</a>
<a href="#">èå¿</a>
<a href="#">è¥¿è£</a>
<a href="#">POLOè¡«</a>
<a href="#">é©¬å¤¹</a>
<a href="#">ç®è¡£</a>
<a href="#">æ¯è¡£</a>
<a href="#">éç»è¡«</a>
<a href="#">çä»è£¤</a>
<a href="#">å¤å¥</a>
<a href="#">å¤¹å</a>
<a href="#">å«è¡£</a>
<a href="#">é£è¡£</a>
<a href="#">æ°æé£</a>
<a href="#">ååè®¾è®¡</a>
<a href="#">å¤§ç </a>
<a href="#">æä¾£è£</a>
<a href="#">å¼è¡«</a>
<a href="#">è¿å¨è£¤</a>
<a href="#">å·¥è£è£¤</a>
</dd>
</dl>
</li>
<li>
<a href="index.html" class="active">é¦é¡µ</a>
</li>
<li>
<a href="#">æ¶å°æ­é</a>
</li>
<li>
<a href="channel.html">ååè®¾è®¡</a>
</li>
<li>
<a href="channel.html">æ¶å°ä»£è´­</a>
</li>
<li>
<a href="channel.html">æ°æé£</a>
</li>
<li>
<a href="information.html">æ¶å°æ­é</a>
</li>
<li>
<a href="library.html">æ­éç¥è¯</a>
</li>
<li>
<a href="#">ä¿éä¸åº</a>
</li>
<li>
<a href="#">å¶ä»</a>
</li>
</ul>
</nav>

 </header>
 <script>
 $(document).ready(function(){
   //æµè¯ææï¼ç¨åºå¯¹æ¥å¦éåå¨éæ°ç¼è¾
   $(".switchNav li").click(function(){
     $(this).addClass("active").siblings().removeClass("active");
     });
   $("#chanpin").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","è¾å¥äº§åå³é®è¯æè´§å·");
     });
   $("#shangjia").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","è¾å¥åå®¶åºéºå");
     });
   $("#zixun").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","è¾å¥å³é®è¯æ¥æ¾æç« åå®¹");
     });
   $("#wenku").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","è¾å¥å³é®è¯æ¥æ¾æåºåå®¹");
     });
   });
   
 </script>
 
<section class="wrap user_form">
 <div class="lt_img">
  <img src="images/form_bg.jpg"/>
 </div>
 <div class="rt_form">
  <h2>æ¾åå¯ç </h2>
  <ul>
   <li class="user_icon">
    <input type="text" class="textbox" placeholder="ææºå·ç "/>
   </li>
   <li class="link_li">
    <input type="button" value="è·åææºæ ¡éªç " class="get_num_btn"/>
   </li>
   <li class="user_cc">
    <input type="text" class="textbox" placeholder="ææºæ ¡éªç "/>
   </li>
   <li class="user_pwd">
    <input type="password" class="textbox" placeholder="è®¾ç½®æ°å¯ç "/>
   </li>
   <li class="user_pwd">
    <input type="password" class="textbox" placeholder="ç¡®è®¤æ°å¯ç "/>
   </li>
   <li class="link_li">
    <input type="button" value="æ¾åå¯ç " class="sbmt_btn"/>
   </li>
  </ul>
 </div>
</section>
<!--footer-->
<footer>
 <!--help-->
 <ul class="wrap help">
  <li>
   <dl>
    <dt>æ¶è´¹èä¿é</dt>
    <dd><a href="article_read.html">ä¿éèå´</a></dd>
    <dd><a href="article_read.html">éæ¢è´§æµç¨</a></dd>
    <dd><a href="article_read.html">æå¡ä¸­å¿</a></dd>
    <dd><a href="article_read.html">æ´å¤æå¡ç¹è²</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>æ°æä¸è·¯</dt>
    <dd><a href="article_read.html">ä¿éèå´</a></dd>
    <dd><a href="article_read.html">éæ¢è´§æµç¨</a></dd>
    <dd><a href="article_read.html">æå¡ä¸­å¿</a></dd>
    <dd><a href="article_read.html">æ´å¤æå¡ç¹è²</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>ä»æ¬¾æ¹å¼</dt>
    <dd><a href="article_read.html">ä¿éèå´</a></dd>
    <dd><a href="article_read.html">éæ¢è´§æµç¨</a></dd>
    <dd><a href="article_read.html">æå¡ä¸­å¿</a></dd>
    <dd><a href="article_read.html">æ´å¤æå¡ç¹è²</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>æå¡ä¿é</dt>
    <dd><a href="article_read.html">ä¿éèå´</a></dd>
    <dd><a href="article_read.html">éæ¢è´§æµç¨</a></dd>
    <dd><a href="article_read.html">æå¡ä¸­å¿</a></dd>
    <dd><a href="article_read.html">æ´å¤æå¡ç¹è²</a></dd>
   </dl>
  </li>
 </ul>
 <dl class="wrap otherLink">
  <dt>åæé¾æ¥</dt>
  <dd><a href="http://www.17sucai.com" target="_blank">17ç´ æ</a></dd>
  <dd><a href="http://www.17sucai.com/pins/24448.html">HTML5æ¨¡åååå°ç®¡çæ¨¡æ¿</a></dd>
  <dd><a href="http://www.17sucai.com/pins/15966.html">ç»¿è²æ¸ç½åå°ç®¡çç³»ç»æ¨¡æ¿</a></dd>
  <dd><a href="http://www.17sucai.com/pins/14931.html">é»è²çcmsååç½ç«åå°ç®¡çæ¨¡æ¿</a></dd>
  <dd><a href="http://www.deathghost.cn" target="_blank">åç«¯åå®¢</a></dd>
  <dd><a href="http://www.deathghost.cn" target="_blank">åå®¢</a></dd>
  <dd><a href="http://www.deathghost.cn" target="_blank">æ°ç ç¬è®°</a></dd>
  <dd><a href="http://www.deathghost.cn" target="_blank">DethGhost</a></dd>
  <dd><a href="#">å½å½</a></dd>
  <dd><a href="#">ä¼é·</a></dd>
  <dd><a href="#">åè±</a></dd>
  <dd><a href="#">æ°æµª</a></dd>
  <dd><a href="#">éé</a></dd>
  <dd><a href="#">æ¯ä»å®</a></dd>
 </dl>
 <div class="wrap btmInfor">
  <p>Â© 2013 DeathGhost.cn çæææ ç½ç»æåç»è¥è®¸å¯è¯ï¼æµç½æ[2013]***-027å· å¢å¼çµä¿¡ä¸å¡ç»è¥è®¸å¯è¯ï¼æµB2-200***24-1 ä¿¡æ¯ç½ç»ä¼ æ­è§å¬èç®è®¸å¯è¯ï¼1109***4å·</p>
  <address>èç³»å°åï¼éè¥¿çè¥¿å®å¸éå¡åºXXXå·</address>
 </div>
</footer>
</body>
</html>
