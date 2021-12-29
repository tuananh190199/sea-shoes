<%-- 
    Document   : index
    Created on : Nov 23, 2020, 12:37:41 AM
    Author     : admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.shoes"%>
<%@page import="model.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <title> Sea Shoes</title>
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,900;1,100;1,300;1,700;1,900&display=swap" rel="stylesheet">
	<meta charset="utf-8" content="width=device-width,initial-scale=1" >
    </head>
    <body >
        
        <header class="header">
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="row row__col-7">
						<ul>
							<li class="hidden-a">
								<a class="hidden-a--link" href="tel:tieudat1999@gmail.com">tieudat1999@gmail.com</a>
							</li>
							<li class="line_a hidden-a">/</li>
							<li class="hidden-a">
								<a class="hidden-a--link" href="tel:0355799278">0355799278</a>
							</li>
						</ul>
					</div>
                                        <%
                                            if(session.getAttribute("user")==null){
                                        %>
					<div class="row row__col-5">
						<ul>
							<li class="hidden-b">
                                                            <a class="hidden-b--link" href="#"><form action="show_SignUp" method="post">Đăng ký</form></a>
                                                                
							</li>
							<li class="line_b hidden-b">/</li>
							<li class="hidden-b">
                                                            <a class="hidden-b--link" href="#"><form action="show_Login" method="post">Đăng nhập</form></a>
							</li>
						</ul>
					</div>
                                        <%}
                                          else{
                                                user u = new user();
                                                u = (user) session.getAttribute("user");
                                          %>
                                          <div class="row row__col-5">
						<ul>
							<li class="hidden-b">
                                                            <a class="hidden-b--link" href="#"><form action="#" method="post"><%=u.getFullname()%></form></a>
                                                                
							</li>
							<li class="line_b hidden-b">/</li>
							<li class="hidden-b">
                                                            <a class="hidden-b--link" href="#"><form action="LogOut" method="post">Đăng xuất</form></a>
							</li>
						</ul>
					</div>
                                          <% } %>
				</div>
			</div>
		</div>
		<div class="botbar">
			<div class="container">
				<div class="row">
					<div class="content_header">
					<div class="row row__col-3-logo">
						<a class="logo-header" href="#">
                                                    <form action="show_Index" method="get">
							<img src="img-about/logo.png" alt="Sea Shoes">
                                                    </form>
						</a>
					</div>
					<div class="row row__col-6-menu">
						<nav class="nav-menu">
							<ul class="nav-menu nav-menu__full">
								<li class="nav-menu-item active">
									<a href="#" class="a-img"><form action="show_Index" method="get">Trang chủ </form></a>
								</li>
								<li class="nav-menu-item">
									<a href="#" class="a-img"><form action="show_About" method="get">Giới thiệu </form></a>
								</li>
								<li class="nav-menu-item nav-menu-item--after nav-menu-item-hover">
                                                                    <a href="#" class="a-img"><form action="show_All_Item" method="get">Sản phẩm </form></a>			
								</li>
								
								<li class="nav-menu-item">
									<a href="#" class="a-img"><form action="show_Contact" method="get">Liên hệ </form></a>
								</li>
                                                                
							</ul>
						</nav>
					</div>
					<div class="row row__col-3-search">
						<div class="cartgroup ">
							<div class="searchion inline-b">
								<span class="visible_index visible_index--hover nn"><i class="fas fa-search"></i></span>
								<div class="searchmini">
                                                                    <form action="search" method="get" class="input-group search-bar">
										<input type="text" name="nameShoes" autocomplete="off" placeholder="Tìm kiếm..." class="input-group-field auto-search visible_index">
										<button type="submit" class="visible_index btn icon-fallback-text">
											<span class="fa fa-search"></span>      
										</button>
                                                                    </form>
								</div>
							</div>
							<div class="header-right inline-block">
								<div class="top-cart-contain f-right">
									<div class="mini-cart text-xs-center">
										<div class="heading-cart cart_header">
											<a class="img_hover_cart" href="#" title="Giỏ hàng">
                                                                                            <form action="show_Cart" method="get">
												<div class="icon_hotline visible_index">
													<img src="img-about/shopping-bag-1.png" alt="Sea Shoes">
												</div>
                                                                                            </form>
											</a>
										</div>	
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<section class="body-section1-1">
		<div class="slide-big">
			<div class="slide">
				<div class="slide-bar">
					<div class="slides"><img src="img\slider_1.jpg" alt=""></div>
					<!-- <div class="slides"><img src="img\slider_1.jpg" alt=""></div> -->
				</div>
			</div>
		</div>
	</section>
	<section class="body-section1-2">
		<div class="banner__hot-item">
			<div class="container">
				<div class="row">
					<div class="banner__hot-img">
						<div class="banner__hot-img--abc">
							<a href="#" class="img-even"><img src="img\banner_1.jpg" alt=""></a>
						</div>
					</div>
					<div class="banner__hot-img">
						<div class="banner__hot-img--abc">
							<a href="#" class="img-even"><img src="img\banner_2.jpg" alt=""></a>
						</div>
					</div>
					<div class="banner__hot-img">
						<div class="banner__hot-img--abc">
							<a href="#" class="img-even"><img src="img\banner_3.jpg" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="body-section1-3">
		<div class="product__item">
			<div class="container">
				<div class="row">
					<div class="row row__product-title">
						<div class="title-heading heading-product">
							<h2><a href="#">Hàng mới về</a></h2>
						</div>
					</div>
				</div>
			</div>
			<div class="product__box product__item-box">
				<div class="product__item-item">
					<div class="product__item-item--box">
                                            <% 
                                                ArrayList<shoes> s = new ArrayList<shoes>();
                                                if(session.getAttribute("listItem")!=null)
                                                s = (ArrayList<shoes>) session.getAttribute("listItem");
                                                for(shoes i : s)
                                                {
                                            %>
						<div class="product__item-main" style="width: 16.66%; margin-right:30px;">
							<div class="item_product_main">
								<div class="item_product_img">
									<div class="item_product_img-hot">
										<a href="#" class="item_product_img-link">
											<img src="<%=i.getLinkImg()%>" alt="" class="lazyload loader">
										</a>
									</div>
									<div class="item_product-action">
										<form action="/cart/add" method="post" class="variants form-nut-grid" data-id="product-actions-16134895" enctype="multipart/form-data">
											<div class="group_action">
												<input type="hidden" name="variantId" value="28493134">
												<button class="btn-buy btn-cart btn btn-circle left-to add_to_cart " title="Đặt hàng ngay">
													Mua ngay
												</button>
											</div>
										</form>
									</div>
								</div>
								<div class="item_product_info a-center">
									<h3 class="product-name">
										<a href="#"><%=i.getGiaTien()%></a>
									</h3>
									<div class="product-brand">
										<a href="#"><%=i.getThuongHieu()%></a>
									</div>
									<div class="product-price">
                                                                            <span class="product-price normal"><%=i.getGiaTien()%></span>
									</div>
								</div>
							</div>
						</div>
                                                <% } %>
						
						
						
			</div>
		</div>
	</section>
	<section class="body-section1-4">
		<div class="banner__hot-deal">
			<div class="container">
				<div class="row">
					<div class="banner__hot-deal-img">
						<div class="banner__hot-img--abcd">
							<a href="#" class="img-event"><img src="img\banner_1_a.jpg" alt=""></a>
						</div>
					</div>
					<div class="banner__hot-deal-img">
						<div class="banner__hot-img--abcd">
							<a href="#" class="img-event"><img src="img\banner_2_a.jpg" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="body-section1-5"></section>
	<section class="body-section1-6"></section>
	<section class="body-section1-7"></section>
	<section class="body-section1-8">
		<div class="container_hotline lazyload">
			<div class="parallax">
				<div class="wrapper">
					<div class="custom-center text-center">
						<div class="custom-center-body">
							<h2>Hotline</h2>
							<a href="tel:0355799278" class="hai001">0355799278</a>
							<p>Chúng tôi cam kết 100% các sản phẩm giày dép của chúng tôi nguồn gốc xuất xứ nhập khẩu chính hãng 100%</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="body-section1-9"></section>
    </body>
    <script type="text/javascript">
                const taga = document.getElementsByTagName("a");
		for(var i=0;i<taga.length;i++)
		{
			taga.item(i).addEventListener("click", function()
			{
				submitt(this);
					
			});
		}
                
                function submitt(z)
                {
                    z.children[0].submit();                    
                }
</script>
</html>
