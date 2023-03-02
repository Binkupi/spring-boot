<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/Divide-Column.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/CTSP.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/giohang.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/CSSElement.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/KingdomWatch.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/a3633fc35f.js" crossorigin="anonymous"></script>
    <title>Chi tiết sản phẩm</title>    

</head>
<body >
    <!-- HEADER -->
    <header>
        <nav>
            <a id="Logo" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/Image/Header/Logo.svg" alt="Logo"></a>
            <a id="underline_none" class="NavElement" href="${pageContext.request.contextPath}/">
                <p>Trang chủ</p>
            </a>
            <div class="NavElement" id="MainNavElement">
				<p>Đồng hồ</p>
				<div class="dropdown-content">
					<a href="${pageContext.request.contextPath}/donghonam">Đồng hồ nam</a> 
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
        </nav>
        
        <div class="PseudoNav">
            <a id="Logo" href=""><img src="Image/Header/Logo.svg" alt="Logo"></a>
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
        
        <div id="Banner_CTSP">
            <div id="BannerContent">
                <h1>Đồng hồ chất, chuẩn lịch lãm</h1>
                <h2>Bắt đầu trải nghiệm đẳng cấp mua sắm</h2>
                <a id="ShoppingButton" href="DongHoNam.html">Khám phá ngay</a>
            </div>
        </div>
    </header>
    <div id="Container" align="center">
            <div class="single-main">
                <div class="col-left">
                    <div class="Product-top">
                        <div class="Image-Product">	
                            <div class="flexslider" style="margin-bottom:10px"><img src="${pageContext.request.contextPath}/${watch.img}" data-imagezoom="true" class="image-selected img-zoom" alt=""/></div>
                            <div class="f-grid" >
                                <div class="f-grid-col">
                                    <div class="thumb-image" id="Img-1"> <img src="${pageContext.request.contextPath}/${watch.img}" data-imagezoom="true" class="Init-img" alt=""/> </div>
                                </div>
                                <div class="f-grid-col">
                                    <div class="thumb-image" id="Img-2"> <img src="${pageContext.request.contextPath}/images/CTSP/s-2.jpg" data-imagezoom="true" class="Init-img" alt=""/> </div>
                                </div>
                                <div class="f-grid-col">
                                    <div class="thumb-image" id="Img-3"> <img src="${pageContext.request.contextPath}/images/CTSP/s-3.jpg" data-imagezoom="true" class="Init-img" alt=""/> </div>
                                </div>
                            </div>
                        </div>
                        <div class="Information-Product" align="left">
                            <div class="single-para simpleCart_shelfItem">
                                <h2 class="Name-Product" >${watch.name }</h2>
                                <div class="star-rate">
                                    <div class="star">
                                            <span><i class="fas fa-star star-color"></i></span>
                                            <span><i class="fas fa-star star-color"></i></span>
                                            <span><i class="fas fa-star star-color"></i></span>
                                            <span><i class="fas fa-star star-color"></i></span>
                                            <span><i class="fas fa-star star-color"></i></span>
                                    </div>
                                    <div class="review">
                                        <p>1 khách hàng</p>   
                                    </div>
                                </div>
                                <h5 class="item_price">${watch.price} VND</h5>
                                <hr class="gach-ngang" align="center" >
                                <p class="Description-Product">${watch.description} 
                                </p>
                                <div class="available" >
                                    <ul>
                                        <li class="color-in"><span>Màu sắc:</span>
                                            <span><b>${watch.color}</b></span>
                                        </li>
                                    </ul>
                                </div>
                                <hr class="gach-ngang" align="center" >
                                <ul class="tag-men">
                                    <li><span>Giới tính:</span>
                                    <span class="women1">
                                     <c:if test="${watch.gender==0}">Phụ nữ</c:if>
                                     <c:if test="${watch.gender==1}">Nam giới</c:if></span></li>
                                    <li><span>Mã sản phẩm</span>
                                    <span class="women1">: CM00${watch.id}</span></li>
                                </ul>
                                <hr class="gach-ngang" align="center" >
                                <div >
                                	<a href="${pageContext.request.contextPath}/watchs/${watch.id }" style="display:none">
			                            <img class="img-responsive zoom-img" src="${pageContext.request.contextPath}/${watch.img}"  alt=${watch.name} />
			                        </a>
			                        <div>
			                            <h3 style="display:none">${watch.name }</h3>
			                            <h4 style="display: none" class="id-watch">${ watch.id}</h4>

			                            <h4 style="display:none">
			                                <span class="item_price">${watch.price} VND</span>
			                            </h4>
			                            <div class="product-price-hidden">${watch.price}</div>
			                            <!--button Mua hàng-->
			                            <button class="Button-Buy" style="display:block"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
			                        </div>                                
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tabs">
                        <ul  align="left">
                            <li class="menu_drop" ><div class="Title-Tescription" id="item1"><i class="fas fa-caret-down"></i> Mô tả</div>
                                <ul>
                                    <li class="subitem1">Về phân khúc đồng hồ thời trang, phải thừa nhận rằng thương hiệu Casio chính là thương hiệu được săn đón bậc nhất. Thậm chí, chỉ vừa mới thành lập khoảng 10 năm mà thôi nhưng thị phần của Casio hiện nay lại vươn lên đứng ở vị trí thứ 2 trong phân khúc đồng hồ thời trang. Điều gì đã làm nên sự khác biệt đến cho thương hiệu Casio? Sự khác biệt của sản phẩm bắt nguồn từ vẻ ngoài đơn giản, từng đường nét thon mảnh, từ chất liệu dây đẳng cấp và khi kết hợp với nhau, Casio đã thành công khi tạo nên một chiếc đồng hồ có vẻ ngoài chuyển động đẹp mắt, không khác gì những sản phẩm đồng hồ cao cấp.</li>
                                    <li class="subitem2"> ${watch.description}</li>
                                </ul>
                            </li>
                            <li  class="menu_drop" ><div class="Title-Tescription" id="item2"><i class="fas fa-caret-down"></i> Bảo hành</div>
                               
                                <ul>
                                    <li class="subitem2">Bảo hành chỉ có giá trị khi đồng hồ có Phiếu bảo hành của hãng & Phiếu bảo hành của Watch Kingdom đi kèm, điền chính xác, đầy đủ các thông tin.</li>
                                    <li class="subitem3">Phiếu bảo hành phải còn nguyên vẹn, không rách, chấp vá, hoen ố, mờ nhạt.</li>
                                    <li class="subitem3">Còn trong thời gian bảo hành. Thời gian bảo hành được tính từ ngày mua có ghi trên Phiếu Bảo Hành.</li>
                                    <li class="subitem3">Chỉ bảo hành thay thế mới cho những linh kiện, phụ tùng bị hỏng – không thay thế bằng một chiếc đồng hồ khác.</li>
                                </ul>
                            </li>
                            <li class="menu_drop" ><div class="Title-Tescription" id="item3"><i class="fas fa-caret-down"></i> Đánh giá (1)</div>
                                
                                <ul>
                                    <li class="subitem1">Đồng hồ đẹp, giá cả tốt, ship hàng nhanh, mình rất thích đồng hồ và dịch vụ tại đây.</li>
                                    <li class="subitem1">Giá thành đồng hồ ở đây rất hợp lí khi so với các shop đồng hồ khác.</li>
                                </ul>
                            </li>
                            <li class="menu_drop" ><div class="Title-Tescription" id="item4"><i class="fas fa-caret-down"></i> Chính sách đổi hàng</div>
                               
                                <ul>
                                    <li class="subitem2">Yêu cầu đổi hàng cần được thực hiện trong vòng 7 ngày kể từ ngày Quý khách nhận được hàng.</li>
                                    <li class="subitem3">Các bộ phận, linh kiện, phụ kiện, tài liệu hướng dẫn sử dụng, tài liệu kỹ thuật, quà tặng kèm theo (nếu có), … phải còn đầy đủ và không có dấu hiệu đã qua sử dụng.</li>
                                    <li class="subitem2">Sản phẩm không có dấu hiệu đã qua sử dụng.</li>
                                    <li class="subitem2">Sản phẩm không bị dây bẩn, trầy xước, hư hỏng, dính hoá chất hoặc có dấu hiệu cạy mở.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="latestproducts container" >
                        <h3 id="Suggest-product" align="left">Các sản phẩm liên quan</h3>
                        <div class="row m-4" >
                            <c:forEach var="watch" items="${sameTypeWatchs}" >
				            <c:if test="${watch.sale==0}">
	                            <div class="col-4">
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
	                            <div class="col-4">
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
                <div class="col-right" align="left">
                    <div class="w_sidebar">
                        <section  class="sky-form" >
                            <div class="title"><h4>Bộ sản phẩm gồm</h4></div>
                            <div class="row1 scroll-pane">
                                <p>Bộ sản phẩm gồm: Hộp, sách hướng dẫn, giấy bảo hành </p>
                                <div class="gach-ngang-ctsp"></div>
                                <p>Bảo hành chính hãng 12 tháng</p>
                                <div class="gach-ngang-ctsp"></div>
                                <p>1 đổi 1 trong 30 ngày đối với sản phẩm lỗi</p>
                            </div>
                        </section>
                        <section  class="sky-form" >
                            <div class="title"><h4>Ưu đãi thêm</h4></div>
                            <div class="row1">
                                <p>
                                    Tặng cho khách lần đầu mua hàng online tại watchkingdom.com
                                </p>
                                <div>
                                    <ul type="dist">
                                        <li>Mã giảm 20% tối đa 100.000đ</li>
                                        <li> 5 lần FREEship<li>
                                    </ul>
                                </div>
                                
                                <p>Áp dụng tại Tp.HCM và 1 số khu vực, 1 SĐT nhận 1 lần (Xem chi tiết)</p>
                            </div>
                        </section>
                        <section class="sky-form">
                            <div class="title"><h4>Màu sắc</h4></div>    
                                <ul class="w_nav2">
                                    <li><div class="color3" href="#"></div></li>
                                    <li><div class="color7" href="#"></div></li>
                                    <li><div class="color4" href="#"></div></li>
                                </ul>
                        </section>
                        
                    </div>
                </div>
            </div>
        <!--end-single-->
    </div>

    <!-- ĐĂNG KÍ NHẬN TIN MỚI -->
    <section id="NewInformation">
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
                        <a href="mailto:example@email.com"> <img class="Icon" src="${pageContext.request.contextPath}/Image/Mail.svg">
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
<script src="${pageContext.request.contextPath}/JS/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/JS/KingdomWatch.js"></script>
<script src="${pageContext.request.contextPath}/JS/JS-CTSP.js"></script>
<script src="${pageContext.request.contextPath}/JS/JSElement.js"></script>
<script src="${pageContext.request.contextPath}/JS/elevatezoom-master/jquery.elevatezoom.js"></script>
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