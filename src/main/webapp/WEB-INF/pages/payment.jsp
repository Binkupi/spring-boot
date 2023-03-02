<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/KingdomWatch.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/giohang.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/giohang.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/a3633fc35f.js" crossorigin="anonymous"></script>

</head>

<body>
    <!-- HEADER -->
    <header>
        <nav>
            <a id="Logo" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/Image/Header/Logo.svg" alt="Logo"></a>
            <a class="NavElement" href="${pageContext.request.contextPath}/">
                <p>Trang chủ</p>
            </a>
            <div class="NavElement">
				<p>Đồng hồ</p>
				<div class="dropdown-content">
					<a href="${pageContext.request.contextPath}/donghonam">Đồng hồ nam</a> 
					<a href="${pageContext.request.contextPath}/donghonu">Đồng hồ nữ</a>
				</div>
			</div>
            <a class="NavElement" href="${pageContext.request.contextPath}/blog">
                <p>Tin tức</p>
            </a>
            <div class="NavElement" id="MainNavElement">
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
        </div>

       


    </header>
	<c:if test='${ success.equals("")}'>
    <!-- THANH TOÁN -->
    <form:form method="POST" action="${pageContext.request.contextPath}/thanhtoan" modelAttribute="client" id="client-form">
    	<div class="row">
    	<div class="col-3"></div>
	    <div id="Payment" class="col-6 ml-2 mr-2 mb-5">
	   
	        <div id="PaymentLeftColumn" >
	            <h3>Thông tin khách hàng</h3>
	            <p>Phương thức vận chuyển là <span>FREESHIP</span> với đơn hàng từ 700.000 VND</p>
	            
	            <form:input type="text" id="PaymentNameInput" path="name" placeholder="Họ tên*" required="required"/>
	            <form:input type="text" path="giohang" value="${query}" style="display:none" />
	            <form:input type="text" id="PaymentPhoneInput" placeholder="Số điện thoại*"  path="phone" required="required"/>
	            <form:input path="email" placeholder="Email" type="email" tabindex="3" required="" id="email_register" autocompleted="off"/>
	            <form:input type="text" id="PaymentAddressInput" placeholder="Địa chỉ nhận hàng*"  path="address" required="required"/>
	           

	           <label for="PaymentMethod">Phương thức thanh toán</label>
	           	<form:select  path="description" >
	                <form:option value="Trả tiền khi nhận hàng">Trả tiền khi nhận hàng</form:option>
	                <form:option value="Chuyển khoản ngân hàng">Chuyển khoản ngân hàng</form:option>
	                <form:option value="Ví điện tử momo">Ví điện tử momo</form:option>
	                <form:option value="Cổng thanh toán VNPay">Cổng thanh toán VNPay</form:option>
	            </form:select>
	            <button type="submit" id="dat_hang">Đặt hàng</button>
	            <p>*Lưu ý: WatchKingdom sẽ sliên lạc với bạn trong 24h để xác nhận đơn hàng.</p>
	            <h4>Hotline: 0901349285</h4>
	        </div>
	     </div> 
	     <div class="col-3"></div>
		</div>
	</form:form>
	</c:if>
	<c:if test='${ !success.equals("")}'>
	
	<div style=" height:200px;line-height: 200px;font-size:20px ;text-align:center">
	<c:if test='${ success.equals("Empty")}'>
		<div style="display: inline-block" ><span ><b >Hiện tại giỏ hàng của bạn đang trống!!! </b></span><a href="${pageContext.request.contextPath}/donghonam" style="text-decoration:none;color:green"><b>Tiếp tục mua sắm.</b></a></div>
	</c:if>
	<c:if test='${ success.equals("success")}'>
		<div style="display: inline-block" ><span ><b >Đơn hàng của bạn đã được đặt thành công!!! </b></span><a href="${pageContext.request.contextPath}/donghonam" style="text-decoration:none;color:green"><b>Tiếp tục mua sắm.</b></a></div>
	</c:if>
	</div>
	
	</c:if>
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
                                src="images/Contact With Us/social-facebook-circle-512.webp"> Facebook</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="images/Contact With Us/twitter_circle-512.webp">
                            Twitter</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="images/Contact With Us/34_google_plus-512.webp">
                            Google</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="images/Contact With Us/768px-Instagram_icon.png">
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

    <script src="${pageContext.request.contextPath}/JS/KingdomWatch.js"></script>
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