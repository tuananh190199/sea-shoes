<%-- 
    Document   : contact
    Created on : Dec 25, 2020, 3:02:53 PM
    Author     : admin
--%>

<%@page import="model.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE lang="vi">
<html>
<head>
	<title> Sea Shoes</title>
	<link rel="stylesheet" type="text/css" href="css/contact.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,900;1,100;1,300;1,700;1,900&display=swap" rel="stylesheet">
	<meta charset="utf-8" content="width=device-width,initial-scale=1" >
</head>
<body>
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
								<li class="nav-menu-item ">
									<a href="#" class="a-img"><form action="show_Index" method="get">Trang chủ </form></a>
								</li>
								<li class="nav-menu-item">
									<a href="#" class="a-img"><form action="show_About" method="get">Giới thiệu </form></a>
								</li>
								<li class="nav-menu-item nav-menu-item--after nav-menu-item-hover">
                                                                    <a href="#" class="a-img"><form action="show_All_Item" method="get">Sản phẩm </form></a>			
								</li>
								
								<li class="nav-menu-item active">
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
	<div class="title-about">
		<div class="content-title">
			<h2>Liên hệ</h2>
			<div class="desition-title">
				<ul>
					<li><a href="index.html" class="content-link">Trang chủ</a></li>
					<li>/</li>
					<li><a href="contact.html" class="content-link">Liên hệ</a></li>
				</ul>
			</div>

		</div>
	</div>
	<div class="content-contact">
		<div class="container">
			<div class="row">
				<div class="contact-col-6">
					<div class="right-contact">
						<div class="right-contact-login">
							<div class="row group_contact">
								<fieldset class="form-group">
									<label for="">Họ và tên <em>*</em></label>
									<input placeholder="" type="text" class="form-control  form-control-lg" required="" value="" name="contact[Name]">
								</fieldset>
								<fieldset class="form-group">
									<label for="">Email <em>*</em></label>
									<input placeholder="" type="text" class="form-control  form-control-lg" required="" value="" name="contact[Name]">
								</fieldset>
								<fieldset class="form-group">
									<label for="">Nội dung<em>*</em></label>
									<textarea placeholder="" name="contact[body]" id="comment" class="form-control content-area form-control-lg" rows="5" required=""></textarea>
								</fieldset>
								<div class="group_contact-btn">
									<button type="submit" class="btn btn-primary btn-lienhe">Gửi ngay</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="contact-col-6">
					<div class="left-contact">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.9068963489512!2d105.79683921520119!3d20.996368894258463!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acbba3d415d5%3A0x9605ef106d8737f9!2zMjcgS2h14bqldCBEdXkgVGnhur9uLCBUaGFuaCBYdcOibiBC4bqvYywgVGhhbmggWHXDom4sIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1605947075542!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
		<footer class="footer">
			<div class="footer_top">
				<div class="footer_top-contact">
					<div class="container">
						<div class="row">
							<div class="content_footer-contact">
								<div class="letter-left">
									<h3>Nhập email</h3>
									<span>Để nhận tin tức khuyến mãi từ cửa hàng của chúng tôi
									</span>
								</div>
								<form action="">
									<div class="input-group">
										<input type="email" autocomplete="off" class="form-control" value placeholder="Nhập email của bạn" name="EMAIL" id="mail">
										<span class="input-group-btn">
											<button class="btn btn-primary button_gradient" name="subscribe" id="subscribe" type="submit" title="Gửi ngay">Gửi ngay</button>
										</span>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="site-footer">
				<div class="section top-footer mid-footer">
					<div class="container">
						<div class="row">
							<div class="footer-col-1">
								<div class="widget-ft">
									<h4 class="title-menu">
										<a href="#">Hệ thống cửa hàng</a>
									</h4>
									<div class="list-menu">
										<div class="widget-ft wg-logo">
											<div class="item">
												<h4 class="title-menu4 icon_none_first">
													<a>Sea Shoes Đội Cấn</a>
												</h4>
												<ul class="contact contact_x">
													<li>
														<span class="txt_content_child">
															<span>Địa chỉ:</span>
															366 Đội Cấn Ba Đình Hà Nội
														</span>
													</li>
													<li class="sdt">
														<span> Hotline:</span>
														<a href="tel:0989879000">0989879000</a>
													</li>
												</ul>
											</div>
											<div class="item">
												<h4 class="title-menu4 icon_none_first">
													<a>Sea Shoes Thái Hà</a>
												</h4>
												<ul class="contact contact_x">
													<li>
														<span class="txt_content_child">
															<span>Địa chỉ:</span>
															42 Thái Hà Đống Đa Hà Nội
														</span>
													</li>			
													<li class="sdt">
														<span> Hotline:</span>
														<a href="tel:0976968789">0976968789</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="footer-col-2">
								<div class="row">
									<div class="col-2-6">
										<div class="widget-ft first">
											<h4 class="title-menu">
												<a role="button" class="collapsed" data-toggle="collapse" aria-expanded="false" data-target="#collapseListMenu01" aria-controls="collapseListMenu01">
													Về chúng tôi
												</a>
											</h4>
											<div class="collapse" id="collapseListMenu01">
												<ul class="list-menu">
													<li class="li_menu"><a href="index.html">Trang chủ</a></li>
													<li class="li_menu"><a href="about.html">Giới thiệu</a></li>
													<li class="li_menu"><a href="/collections/all">Sản phẩm</a></li>
													<li class="li_menu"><a href="/tin-tuc">Tin tức</a></li>
													<li class="li_menu"><a href="/lien-he">Liên hệ</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-2-6">
										<div class="widget-ft first">
											<h4 class="title-menu">
												<a role="button" class="collapsed" data-toggle="collapse" aria-expanded="false" data-target="#collapseListMenu02" aria-controls="collapseListMenu02">
													Chính sách 
												</a>
											</h4>
											<div class="collapse" id="collapseListMenu02">
												<ul class="list-menu">
													<li class="li_menu"><a href="index.html">Trang chủ</a></li>
													<li class="li_menu"><a href="about.html">Giới thiệu</a></li>
													<li class="li_menu"><a href="/collections/all">Sản phẩm</a></li>
													<li class="li_menu"><a href="/tin-tuc">Tin tức</a></li>
													<li class="li_menu"><a href="/lien-he">Liên hệ</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="footer-col-3">
								<div class="widget-ft">
									<h4 class="title-menu">
										<a role="button">
											Đăng ký
										</a>
									</h4>
									<div class="footer-widget">
										<a href="/" class="bocongthuong">					
											<img src="bocongthuong.png" alt="Sea Shoes">					
										</a>
									</div>
									<h4 class="title-menu tittle_time">
										<a role="button">
											Thanh toán
										</a>
									</h4>
									<div class="time_work">
										<ul class="list-menu">
											<li class="li_menu li_menu_xxx">
												<a href="/" class="bocongthuong">					
													<img src="payment.png" alt="Sea Shoes">					
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="section clearfix"></div>
		</footer>
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