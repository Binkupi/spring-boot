<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <!-- Bản css đã nén của bootstrap 4, nên đặt trong cặp thẻ head -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <title>Đồng hồ nam</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/KingdomWatch.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/giohang.css">
    <link href="${pageContext.request.contextPath}/css/Image-Polaroid.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/giohang.css">
    <link href="${pageContext.request.contextPath}/css/DH-Nam.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/Divide-Column.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/CSSElement.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/a3633fc35f.js" crossorigin="anonymous"></script>

</head>
<body >
   <header>
        <nav>
            <a id="Logo" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/Image/Header/Logo.svg" alt="Logo"></a>
            <a class="NavElement" href="${pageContext.request.contextPath}/" id="underline_none">
                <p>Trang chủ</p>
            </a>
            <div class="NavElement">
				<p id="MainNavElement">Đồng hồ</p>
				<div class="dropdown-content">
					<a id="MainNavElement" href="${pageContext.request.contextPath}/donghonam">Đồng hồ nam</a> 
					<a href="${pageContext.request.contextPath}/donghonu">Đồng hồ nữ</a>
				</div>
			</div>
            <a class="NavElement" href="${pageContext.request.contextPath}/blog">
                <p>Tin tức</p>
            </a>
            <div class="NavElement" >
                <p>Liên hệ</p>
                <div class="dropdown-content">
                  <a href="${pageContext.request.contextPath}/contactinfo">Thông tin liên hệ</a>
                  <a href="${pageContext.request.contextPath}/contact">Đơn liên hệ</a>
                </div>
            </div>
            <div class="NavElement list-item-icon" >           
                    <i href="" class="icon-link" id="cart-panel-open">
                      <i class="fas fa-cart-plus icon"></i>
                      <div>0</div>
                    </i>
            </div>
            <%@ include file="./partials/user.jsp"%>
            <div class="NavElement" id="Search"><img src="${pageContext.request.contextPath}/Image/Header/SearchRight.svg" alt="Search"></div>
        </nav>
        <div class="PseudoNav">
            <a id="Logo" href=""><img src="${pageContext.request.contextPath}/Image/Header/Logo.svg" alt="Logo"></a>
        </div>

        <div id="TransparentGlass"></div>
        <div id="cart-panel">
            <div class="cart-panel-header">
                <div>GIỎ HÀNG CỦA BẠN</div>
                <img src="${pageContext.request.contextPath}/images/icon/times-solid.svg" id="cart-panel-close">
            </div>
            <div class="cart-panel-body">
                <div id="no-item">Hiện tại chưa có sản phẩm nào trong giỏ hàng của bạn</div>
                <button id="continue-shopping">TIẾP TỤC MUA SẮM</button>
                <div id="cart-item-list">
                </div>
                <div class="payment">
                  <div class="price-to-pay">
                    <p>THÀNH TIỀN</p>
                    <p class="total-price"><span id="price">3.099.000</span> VNĐ</p>
                    <p id="total-price-hidden">0</p>
                  </div>
                 <form method="GET" id="submit-payment-form"
						action="${pageContext.request.contextPath}/thanhtoan" style="display:none">
						<input type="text" id="query" name="query" value="123" />
					</form>
					<button id="pay-btn">Thanh toán</button>
                </div>
            </div>
            <div class="cart-panel-footer">
                <div><img src="${pageContext.request.contextPath}/images/icon/iconmonstr-shield-28.svg"><span>Bảo hành 6 tháng lỗi nhà sản xuất</span></div>
                <div><img src="${pageContext.request.contextPath}/images/icon/iconmonstr-delivery-6.svg"><span>Freeship với đơn hàng > 500K</span></div>
            </div>
        </div>
        <form id="SearchContent" action="${pageContext.request.contextPath}/donghonam/search" method="GET" 	>
            <div>
                <img src="${pageContext.request.contextPath}/Image/Header/Xbutton.svg" alt="XButton">
            </div>
            <div>
                <img src="${pageContext.request.contextPath}/Image/Header/SearchLeft.svg" alt="Search">
                <input type="text" id="SearchInput" placeholder="Tìm kiếm ..." name="keyword" />
                <button class="btn btn-primary mr-3" type="submit" value="Submit">Tìm kiếm</button>
            </div> 
        </form>

        
        <div id="BannerDH_Nam">
            <div id="BannerContent">
                <h1>Đồng hồ nam</h1>
                <h2>Lịch lãm bắt nguồn từ sự tinh tế</h2>
                <a id="ShoppingButton" href="${pageContext.request.contextPath}/donghonam">Khám phá ngay</a>
            </div>
        </div>
    </header>
    <div id="Container" style="position:relative">
        <div id="Content" >
            <!-- Khu vực chứa slogan của trang web -->
            <section id="slogan" align="center" >
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 col-md-4 col-12 text-responsive">
                            <p><span><i class="fas fa-user-shield fa-2x"></i></span>
                                <span> Bảo hành 10 năm lỗi nhà sản xuất</span>
                            </p>
                        </div>
                        <div class="col-sm-12 col-md-4 col-12  text-responsive">
                            <p>
                                <span><i class="fas fa-shipping-fast fa-2x"></i></span>
                                <span> Freeship đối với đơn hàng trên 1 triệu đồng</span>
                            </p>
                        </div>
                        <div class="col-sm-12 col-md-4 col-12  text-responsive">
                            <p>
                                <span><i class="fas fa-award fa-2x"></i></span>
                                <span> Cam kết 100% hàng chính hãng</span>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end khu vực chưa slogan-->
            <!-- Khu vực tạo các điều kiện bộ chọn để hiển thị sản phẩm trên trang web -->
            <section id="Filter" class="container-fluid" >
                <div  class="row p-0">
                    <div class="col-sm-4 col-md-2 col-4 pr-0  text-responsive"  >
                        
                    </div>
                    <div class="col-sm-6 col-md-2 col-6 ml-0 pl-0 pr-0 text-responsive" >
                        
                            
                    </div>                  
                    <div  class="col-sm-2 col-md-4 col-2 p-0" align="right">
                        <p id="Bo-Chon" ><span  class="text-responsive"> <i class="fas fa-sliders-h fa-1x"></i></span><span><b> FILTERS</b> </span></p>
                    </div>
                </div> 
            </section>
            <!-- end khu vực tạo điều kiện bộ chọn-->
            <!-- Khu vực hiển thị số sản phẩm được hiện && Hiển thị các bộ chọn được chọn -->
            <section id="Number-Product">
               
            </section>
            <!-- end khu vực hiển thị số-->
            <div style="position:relative;height:auto">
                <!-- Khu vực chứa các bộ chọn của trang web -->
                <div id="Div-BoChon" >
                    <div id="BoChon-Row1">
                        <div id="BoChon-Col1" align="center">
                            <table align="center">
                                <tr >
                                    <td colspan="2" align="center" class="title-BoChon">Bộ lọc cho phái Mạnh</td>
                                 </tr>
                                <tr>
                                    <td id="td1"><a href="${pageContext.request.contextPath}/donghonam?sort=asc"><img src="${pageContext.request.contextPath}/images/DH_Nam/clock.png" class="clock-Colection"></a></td>
                                    <td id="td2"><a href="${pageContext.request.contextPath}/donghonam?sort=asc" class="btn btn-info" style="text-decoration:none">Giá tăng dần</a></td>
                                </tr>
                                <tr>
                                    <td id="td1"><a href="${pageContext.request.contextPath}/donghonam?sort=desc"><img src="${pageContext.request.contextPath}/images/DH_Nam/clock.png" class="clock-Colection"></a></td>
                                    <td id="td2"><a href="${pageContext.request.contextPath}/donghonam?sort=desc"class="btn btn-info" style="text-decoration:none">Giá giảm dần</a></td>
                                </tr>
                                <tr>
                                    <td id="td1"><a href="${pageContext.request.contextPath}/donghonam?price=highprice"><img src="${pageContext.request.contextPath}/images/DH_Nam/clock.png" class="clock-Colection"></a></td>
                                    <td id="td2"><a href="${pageContext.request.contextPath}/donghonam?price=highprice" class="btn btn-info" style="text-decoration:none">Giá trên 2 triệu</a></td>
                                </tr>
                                <tr>
                                    <td id="td1"><a href="${pageContext.request.contextPath}/donghonam?price=lowprice"><img src="${pageContext.request.contextPath}/images/DH_Nam/clock.png" class="clock-Colection"></a></td>
                                    <td id="td2"><a href="${pageContext.request.contextPath}/donghonam?price=lowprice" class="btn btn-info" style="text-decoration:none">Giá dưới 2 triệu</a></td>
                                </tr>
                                
                           

                            </table>
                        </div>
                       <div id="BoChon-Col2" align="center">
                            <table cellspacing="20px" align="center">
                                <tr>
                                    <td colspan="2" align="center">Kích thước mặt</td>
                                </tr>
                                <tr>
                                    <td align="center" id="Kichthuoc1">
                                    <a href="${pageContext.request.contextPath}/donghonam/filter/size?value=42" style="text-decoration:none">
                                        <div class="div-FaceSize" ><p align="center"><b>42</b></p></div>
                                        <div class="Description-Kichthuoc">42mm</div>
                                    </a>
                                    </td>
                                    <td align="center" id="Kichthuoc2">
                                    <a href="${pageContext.request.contextPath}/donghonam/filter/size?value=35" style="text-decoration:none">
                                        <div class="div-FaceSize" ><p align="center"><b>35</b></p></div>
                                        <div class="Description-Kichthuoc">35mm</div>
                                    </a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="BoChon-Col3" align="center" >
                            <table cellspacing="20px" >
                                <tr>
                                    <td colspan="3" align="center" >Màu</td>
                                </tr>
                                <tr>
                                    <td align="center" id="Mau1"  class="Option-color">
                                    <a href="${pageContext.request.contextPath}/donghonam/filter/color?value=Rosegold" style="text-decoration:none">
	                                    <div class="div-img-color">
	                                    	
	                                    		<img src="${pageContext.request.contextPath}/images/DH_Nam/mau1.png" class="img-color">
	                                    	
                                    	</div>
                                        <div class="Description-color">Rosegold</div>
                                    </a>
                                    </td>
                                    <td  align="center" id="Mau2"  class="Option-color">
                                    <a href="${pageContext.request.contextPath}/donghonam/filter/color?value=Silver" style="text-decoration:none">
                                    	<div class="div-img-color">
                                    		
                                    			<img src="${pageContext.request.contextPath}/images/DH_Nam/mau2.png" class="img-color">
                                    		
                                    	</div>
                                        <div class="Description-color">Silver</div>
                                    </a>
                                    </td>   
                                    <td align="center" id="Mau3"  class="Option-color">
                                     <a href="${pageContext.request.contextPath}/donghonam/filter/color?value=Black" style="text-decoration:none">
	                                    <div class="div-img-color">
		                                   
		                                    	<img src="${pageContext.request.contextPath}/images/DH_Nam/mau3.png" class="img-color">
	                                    	
	                                    </div>	
                                        <div class="Description-color">Black</div>
                                    </a>
                                    </td>                   
                                </tr>
                                <tr >
                                    <td class="Option-color" align="center" id="Mau4">
                                    <a href="${pageContext.request.contextPath}/donghonam/filter/color?value=White" style="text-decoration:none">
	                                    `<div class="div-img-color" style="background-color: rgb(233, 224, 224);">
	                                    
	                                    	<img src="${pageContext.request.contextPath}/images/DH_Nam/mau4.png" class="img-color">
	                                    
	                                    </div>
                                        <div class="Description-color">White</div>
                                    </a>
                                    </td>   
                                    <td class="Option-color" align="center" id="Mau5">
                                     <a href="${pageContext.request.contextPath}/donghonam/filter/color?value=Navy" style="text-decoration:none">
                                    <div class="div-img-color">
	                                   
	                                    	<img src="${pageContext.request.contextPath}/images/DH_Nam/mau5.png" class="img-color">
	                                   
                                    </div>
                                        <div class="Description-color">Navy</div>
                                     </a>
                                    </td>
                                    <td align="center" id="Mau6"  class="Option-color">
                                     <a href="${pageContext.request.contextPath}/donghonam/filter/color?value=Gray" style="text-decoration:none">
	                                    <div class="div-img-color">
		                                   
		                                    	<img src="${pageContext.request.contextPath}/images/DH_Nam/mau6.png" class="img-color">
		                                    
	                                    </div>
                                        <div class="Description-color">Gray</div>
                                     </a>
                                    </td>
                                </tr>
                                <tr >
                                    <td align="center" id="Mau7"  class="Option-color">
                                   		<a href="${pageContext.request.contextPath}/donghonam/filter/color?value=Brown" style="text-decoration:none">
	                                    <div class="div-img-color">
		                                    
		                                    	<img src="${pageContext.request.contextPath}/images/DH_Nam/mau7.png" class="img-color">
	                                    	
	                                    </div>
                                        <div class="Description-color">Brown</div>
                                        </a>
                                    </td>
                                    <td align="center" id="Mau8"  class="Option-color">
                                     <a href="${pageContext.request.contextPath}/donghonam/filter/color?value=Coffe" style="text-decoration:none">
                                    <div class="div-img-color">
                                    	<img src="${pageContext.request.contextPath}/images/DH_Nam/mau8.png" class="img-color">	                                    
                                    </div>
                                        <div class="Description-color">Coffe</div>
                                    </a>
                                    </td>
                                    <td align="center" id="Mau9"  class="Option-color">
                                    <a href="${pageContext.request.contextPath}/donghonam/filter/color?value=Sand" style="text-decoration:none">
	                                    <div class="div-img-color">
		                                    
		                                    	<img src="${pageContext.request.contextPath}/images/DH_Nam/mau9.png" class="img-color">
		                                    
	                                    </div>
                                        <div class="Description-color">Sand</div>
                                    </a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="BoChon-Col4" align="center">
                            <table cellspacing="10px"align="center">
                                <tr>
                                    <td colspan="2" align="center">Dây</td>
                                </tr>
                                <tr>
                                    <td align="center" id="Day1">
                                    <a href="${pageContext.request.contextPath}/donghonam/filter/chain?value=leather" style="text-decoration:none">
	                                    <div class="div-img-day">
		                                    	<img src="${pageContext.request.contextPath}/images/DH_Nam/day1.png" class="img-day">
		                                    
	                                    </div>
                                        <div class="Description-Day">
                                        	Dây da cao cấp
                                        </div>
                                    </a> 
                                    </td>
                                    <td align="center" id="Day2">
                                    <a href="${pageContext.request.contextPath}/donghonam/filter/chain?value=metal" style="text-decoration:none">
                                    	<div class="div-img-day">
                                    			<img src="${pageContext.request.contextPath}/images/DH_Nam/day2.png" class="img-day">	
                                    	</div>
                                        <div class="Description-Day">
                                        	Dây kim loại
                                       	</div>
                                     </a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div id="BoChon-Row2" align="center">
                        <p><span><i class="fas fa-chevron-up fa-1x"></i></span><b> HIDES FILTERS</b></p>
                    </div>
                </div>
                <!-- end Bộ chọn -->
                <!-- Khu vực chứa thông tin sản phẩm -->
                <div id="Div-SanPham" >
                    <div id="Product_information" align="center">
                        <div id="div1" class="container-fuild">
                             <div class="row m-5">   
                                <c:forEach var="watch" items="${menWatchs}" >
				            		<c:if test="${watch.sale==0}">
						                <div class="col-sm-3">
						                    <div class="Normal-Product" id="sanPham${watch.id}" align='center'>
						                         <a href="${pageContext.request.contextPath}/watchs/${watch.id }" >
						                            <img class="img-responsive zoom-img" src="${pageContext.request.contextPath}/${watch.img}"  alt=${watch.name} />
						                        </a>
						                        <div class="product-bottom">
						                            <h3>${watch.name }</h3>
						                            <h4 style="display: none" class="id-watch">${ watch.id}</h4>
						                            <p>Khám phá ngay</p>
						                            <h4>
						                                <span class="item_price">${watch.price} VND</span>
						                            </h4>
						                            <div class="product-price-hidden">${watch.price}</div>
						                            <!--button Mua hàng-->
						                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
						                        </div>
						                        <div class="FvIcon">
						                            <span><i class="far fa-heart fa-1x"></i></span>
						                        </div>
						                    </div>
						                </div>
					                </c:if>
					                <c:if test="${watch.sale!=0}">
					                	<div class="col-sm-3">
						                    <div class="Sale-Product" id="sanPham${watch.id}" align='center'>
						                         <a href="${pageContext.request.contextPath}/watchs/${watch.id }" >
						                            <img class="img-responsive zoom-img" src="${pageContext.request.contextPath}/${watch.img}" alt="${wath.name}" />
						                        </a>
						                        <div class="product-bottom">
						                            <h3>${watch.name }</h3>
						                            <h4 style="display: none" class="id-watch">${ watch.id}</h4>
						                            <p>Khám phá ngay</p>
						                            <h4>
						                                <span class="item_price">${watch.price} VND</span>
						                            </h4>
						                            <div class="product-price-hidden">${watch.price}</div>
						                            <!--button Mua hàng-->
						                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
						                        </div>
						                        <div class="Discount">
						                            <span>${watch.sale}%</span>
						                        </div>
						                        <div class="FvIcon">
						                            <span><i class="far fa-heart fa-1x"></i></span>
						                        </div>
						                    </div>
						                </div>
				                	</c:if>
		                		</c:forEach>   
                                
                           	</div> 
                        </div>

                        
                    </div>
                    <!-- Khu vực chứa các bộ sưu tập sản phẩm khác -->
                    <section id="Collection">
                        <div align="center">
                            <div class="f-grid" >
                                <div class="f-grid-col">
                                    <div class="Image-Polaroid">
                                        <img src="${pageContext.request.contextPath}/images/CTSP/bnr-1.jpg" alt="5Terre" style="width:100%">
                                        <div class="Description">
                                            <a href="#">Cổ điển</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-grid-col">
                                    <div class="Image-Polaroid">
                                        <img src="${pageContext.request.contextPath}/images/CTSP/bnr-3.jpg" alt="5Terre" style="width:100%">
                                        <div class="Description">
                                            <a href="#">Hiện đại</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-grid-col">
                                    <div class="Image-Polaroid">
                                        <img src="${pageContext.request.contextPath}/images/CTSP/bnr-2.jpg" alt="5Terre" style="width:100%">
                                        <div class="Description">
                                            <a href="#">Lịch lãm</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- end khu vực bộ sưu tập -->
                </div>
                <!-- end khu vực chứa thông tin sản phẩm -->
            </div>
        </div>
        
    </div>

    <!-- ĐĂNG KÍ NHẬN TIN MỚI -->
    <section id="NewInformation" class="text-responsive">
        <h2>Đăng kí nhận tin mới</h2>
        <p>Nhận các tin tức về chương trình và khuyến mãi sớm nhất</p>
        <div id="NewInfoInput">
            <input class="NewInfoInputElement" type="text" id="NameInput" placeholder="Họ tên">
            <input class="NewInfoInputElement" type="text" id="EmailInput" placeholder="Email">
            <div class="NewInfoInputElement"><p>ĐĂNG KÍ</p></div>
        </div>
    </section>

    <!-- FOOTER -->
    <div style="background-color: lightgrey;">
        <div id="Footer">
            <div class="FooterColumn">
                <div class="FooterColumnContent">
                    <h3>HỖ TRỢ KHÁCH HÀNG</h3>
                    <div>
                        <p>Các câu hỏi thường gặp</p>
                        <p>Gửi yêu cầu hỗ trợ</p>
                        <p>Hướng dẫn đặt hàng</p>
                        <p>Phương thức thanh toán</p>
                    </div>
                </div>
            </div>
            <div class="FooterColumn">
                <div class="FooterColumnContent">
                    <h3>LIÊN HỆ</h3>
                    <div>
                        <p> <img class="Icon" src="${pageContext.request.contextPath}/Image/Location.svg"> Khu phố 6, P.Linh Trung, Q.Thủ Đức, Tp.Hồ Chí Minh.
                        </p>
                        <p> <img class="Icon" src="${pageContext.request.contextPath}/Image/Phone.svg"> (028) 372 52002</p>
                        <p> <img class="Icon" src="${pageContext.request.contextPath}/Image/Fax.svg" alt=""> (028) 372 52148</p>
                        <a href="mailto:example@email.com"> <img class="Icon" src="${pageContext.request.contextPath}/Image/Mail.svg" alt="">
                            watchkingdom@gmail.com</a>
                    </div>
                </div>
            </div>
            <div class="FooterColumn">
                <div class="FooterColumnContent">
                    <h3>KẾT NỐI VỚI CHÚNG TÔI</h3>
                    <div>
                        <a href="#"><img class="SocialNetWorkIcon"
                                src="${pageContext.request.contextPath}/images/Contact With Us/social-facebook-circle-512.webp"> Facebook</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="${pageContext.request.contextPath}/images/Contact With Us/twitter_circle-512.webp">
                            Twitter</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="${pageContext.request.contextPath}/images/Contact With Us/34_google_plus-512.webp">
                            Google</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="${pageContext.request.contextPath}/images/Contact With Us/768px-Instagram_icon.png">
                            Instagram</a>
                    </div>
                </div>
            </div>
            <div class="FooterColumn">
                <div class="FooterColumnContent">
                    <h3>PHƯƠNG THỨC THANH TOÁN</h3>
                    <div class="FooterPayment">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/ViettelPay.svg">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/ACB.svg">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/AirPay.svg">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/MasterCard.svg">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/Momo.svg">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/Paypal.svg">
                    </div>
                </div>
            </div>
        </div>
        <div align="center">
            <hr style="margin-bottom: 15px;">
        </div>
        <div class="footer__last-item">
            <p class="footer__last-line" style="padding-bottom: 15px;"><span class="copyright">Copyright</span>
                "&nbsp;©&nbsp; 2010-2021 Watch Kingdom Q.P.S."
                <span class="rights-reserved">All rights reserved.</span>
            </p>
        </div>
    </div>

    <!-- <script src="${pageContext.request.contextPath}/JS/Giatien.js"></script> -->
    <script src="${pageContext.request.contextPath}/JS/KingdomWatch.js"></script>
    <script src="${pageContext.request.contextPath}/JS/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/JS/JSElement.js"></script> 
    <script src="${pageContext.request.contextPath}/JS/Show.js"></script>
    <script src="${pageContext.request.contextPath}/JS/Sapxep.js"></script>
    <script src="${pageContext.request.contextPath}/JS/Show-Filter.js"></script>
    <script src="${pageContext.request.contextPath}/JS/Filter.js"></script>
    <script src="${pageContext.request.contextPath}/JS/Run-snow.js"></script>
    <script src="${pageContext.request.contextPath}/JS/giohang.js"></script>
     <script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
    
</body>

</html>