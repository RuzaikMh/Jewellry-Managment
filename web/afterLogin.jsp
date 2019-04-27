<%-- 
    Document   : afterLogin
    Created on : Apr 8, 2019, 8:07:02 PM
    Author     : PATHMANATHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html lang="en"> 
<head>
	<meta charset="utf-8">
	<title>Ramani jewelry</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<link rel="stylesheet" media="all" href="css/style1.css">
	<!--[if lt IE 9]>
		
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	
<![endif]-->
</head>

<body>

     <%
		
		String uname=(String)session.getAttribute("username");
	%>
	<header id="header">
	<div class="container">
	<a href="index.html" id="logo" title="Ramani jewelry">Ramani jewelry</a>
	<div class="right-links">
	
<ul>
 <!--<li><a href="cart.html"><span class="ico-products"></span>3 products, $4 500.00</a></li> -->
					
<li><a href="viewUser.jsp"><span class="ico-account"></span><%=uname%></a</li>

<li><a href="logout"><span class="ico-signout"></span>Sign out</a></li>
</ul>
</div>
</div>
		
<!-- / container -->
	
</header>
	<!-- / header -->

	
<nav id="menu">
		<div class="container">
			<div class="trigger"></div>
	<ul>
	<li><a href="products.html">New collection</a></li>
				
     <li><a href="products.html">necklaces</a></li>
	
     <li><a href="products.html">earrings</a></li>
	
     <li><a href="products.html">Rings</a></li>
				
     <li><a href="products.html">Gift cards</a></li>
				
     <li><a href="products.html">Promotions</a></li>
			
     </ul>
	</div>
		<!-- / container -->
	</nav>
	<!-- / navigation -->

	

</br> 

<div id="slider">

<ul>

<li style="background-image: url(images/pic4.png)">
		<h3>You deserve to be beauty</h3>
		<h2>Golden pendants</h2>
		<a href="#" class="btn-more">Read more</a>
</li>

<li style="background-image: url(images/pic3.png)">
		<h3>Make your life better</h3>
		<h2>Genuine bangles</h2>
		<a href="#" class="btn-more">Read more</a>
                
</li>

	

<!--	<li class="yellow" style="background-image: url(images/pic3.png)">
				
<h3>You deserve to be beauty</h3>
<h2>golden bracelets</h2>
<a href="#" class="btn-more">Read more</a>
			
</li> -->
</ul>
</div>
	<!-- / body -->



<div id="body">
      <div class="container">
	 <div class="last-products">
	 <h2>Top Trending Products</h2>
	 <section class="products">
					
    <article>
	<img src="images/p1.jpg"  style="width:250px;" alt="">
					
      <h3>Royal Touch</h3>
	<a href="#" class="btn-add">Read More</a>
	</article>

	 
					
       <article>
<img src="images/p2.jpg" style="width:250px;" alt="">
<h3>Dreamy Droop</h3>
<a href="#" class="btn-add">Read More</a>
</article>
					
       <article>
<img src="images/p3.jpg" style="width:250px;" alt="">
<h3>Golden glamour</h3>

 <a href='viewItem?uid=id-08' class='btn-add'>Read more</a>
</article>

					
        <article>
<img src="images/p4.jpg" style="width:250px;" alt="">
<h3>Pearl Harmony</h3>
<a href="#" class="btn-add">Read More</a>
</article>

<article>
<img src="images/p6.jpg"  style="width:250px;" alt="">
<h3>Royal Touch</h3>
<a href="#" class="btn-add">Read More</a>
</article>
					
<article>
<img src="images/p9.jpg" style="width:250px;" alt="">
<h3>Dreamy Droop</h3>
<a href="#" class="btn-add">Read More</a>
</article>
			
<article>
<img src="images/p8.jpg" style="width:250px;" alt="">
<h3>Golden glamour</h3>
<a href="#" class="btn-add">Read More</a>
</article>

<article>
<img src="images/p5.jpg" style="width:250px;" alt="">
<h3>Pearl Harmony</h3>
<a href="#" class="btn-add">Read More</a>
</article>

			

</section>
</div>

<!--<section class="quick-links">
				
<article style="background-image: url(images/2.jpg)">
<a href="#" class="table">
<div class="cell">
<div class="text">
		<h4>Lorem ipsum</h4>
		<hr>
		<h3>Dolor sit amet</h3>
		</div>
		</div>
		</a>
	      </article>
				

<article class="red" style="background-image: url(images/3.jpg)">
	<a href="#" class="table">
	<div class="cell">
	<div class="text">
	<h4>consequatur</h4>
	<hr>
	<h3>voluptatem</h3>
	<hr>
	<p>Accusantium</p>
	</div>
	</div>
	</a>
</article>
				

article style="background-image: url(images/4.jpg)">
	<a href="#" class="table">
	<div class="cell">
	<div class="text">
	<h4>culpa qui officia</h4>
	<hr>
	<h3>magnam aliquam</h3>
	</div>
	</div>
      </a>
	</article>
	</section>-->
      </div>
		<!-- / container -->
	</div>
	<!-- / body -->

	

<footer id="footer">
		
<div class="container">
	
				

<div class="col media">
		<h3>Social media</h3>
		<ul class="social">
<li><a href="#"><span class="ico ico-fb"></span>Facebook</a></li>

<li><a href="#"><span class="ico ico-tw"></span>Twitter</a></li>

<li><a href="#"><span class="ico ico-gp"></span>Google+</a></li>

<li><a href="#"><span class="ico ico-pi"></span>Pinterest</a></li>
</ul>
</div>
				
<div class="col contact">
	<h3>Contact us</h3>
	<p>Ramani Jewelry .<br>1108,Maradana Road<br>col-08</p>
	
<p><span class="ico ico-em"></span><a href="#">contact@RJjewelry.com</a></p>
					
<p><span class="ico ico-ph"></span>0112667171</p>
</div>
				
<div class="col newsletter">
		<h3>Join our newsletter</h3>
		<p>Sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium.</p>
	<form action="#">
	<input type="text" placeholder="Your email address...">
	<button type="submit"></button>
	</form>
	</div>
	</div>
			
<p class="copy">Copyright 2013 Jewelry. All rights reserved.</p>
	</div>
		<!-- / container -->
	</footer>
	<!-- / footer -->


	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script>window.jQuery || document.write("<script src='js/jquery-1.11.1.min.js'>\x3C/script>")</script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
