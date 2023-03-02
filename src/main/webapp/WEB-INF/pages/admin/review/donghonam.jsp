<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <!-- Bản css đã nén của bootstrap 4, nên đặt trong cặp thẻ head -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <title>Đồng hồ nam</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/KingdomWatch.css">
    <link rel="stylesheet" href="css/footer.css">
    <link href="css/Image-Polaroid.css" rel="stylesheet" type="text/css">
    <link href="css/DH-Nam.css" rel="stylesheet" type="text/css">
    <link href="css/Divide-Column.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/CSSElement.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/a3633fc35f.js" crossorigin="anonymous"></script>

</head>
<body >
   <header>
        <nav>
            <a id="Logo" href="Index.html"><img src="Image/Header/Logo.svg" alt="Logo"></a>
            <a class="NavElement" href="Index.html" id="underline_none">
                <p>Trang chủ</p>
            </a>
            <p class="NavElement"><span id="MainNavElement">Đồng hồ</span></p>
            <a class="NavElement" href="News.html" id="underline_none">
                <p>Tin tức</p>
            </a>
            <div class="NavElement">
                <p>Liên hệ</p>
                <div class="dropdown-content">
                  <a href="ContactInfo.html">Thông tin liên hệ</a>
                  <a href="Contact.html">Đơn liên hệ</a>
                </div>
            </div>
            <a class="NavElement" href="Login.html" id="underline_none">
                <p>Tài khoản</p>
            </a>
            <div class="NavElement" id="Cart">
                <img src="Image/Header/Cart.svg" alt="Cart">
                <sup>1</sup>
            </div>
            <div class="NavElement" id="Search"><img src="Image/Header/SearchRight.svg" alt="Search"></div>
        </nav>
        <div class="PseudoNav">
            <a id="Logo" href=""><img src="Image/Header/Logo.svg" alt="Logo"></a>
        </div>

        <div id="TransparentGlass"></div>
        <div id="CartContent">
            <div id="CartTitle">
                <p>Giỏ hàng của bạn</p>
                <img src="Image/Header/Xbutton.svg" alt="Xbutton">
            </div>
            <div id="CartProduct">
                <div class="CartProductElement">
                    <img class="ImageOfProduct" src="Image/Header/Product/vd.sharp.png" alt="CurnonWatch">
                    <div class="CartProductElementPrice">
                        <p class="NameOfProduct">Sharp</p>
                        <div class="NumberOfElementPriceContainer">
                            <div class="NumberOfCartProductElement">
                                <p class="NumberOfEachProduct">1</p>
                                <div id="ArrowOfCartProductElement">
                                    <img class="IncreaseElementButton" src="Image/Header/Product/IncreaseElement.svg"
                                        alt="IncreaseButton">
                                    <img class="DecreaseElementButton" src="Image/Header/Product/DecreaseElement.svg"
                                        alt="DecreaseButton">
                                </div>
                            </div>
                            <p class="PriceOfEachSingleProduct">x 1.251.000 VND</p>
                        </div>
                    </div>
                    <img class="TrashButton" src="Image/Header/Product/Trash.svg" alt="Trash">
                    <div class="CancelCartProduct">
                        <p>Bạn có chắc chắn?</p>
                        <div>
                            <p>Quay lại</p>
                            <div>
                                <p class="CancelCartProductButton">Xóa khỏi giỏ</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="ShippingTimeCart">
                <p>Ước tính thời gian ship là 1/1/2021</p>
            </div>
            <div id="PriceCart">
                <p>Thành tiền:</p>
                <p id="ValueOfPriceCart"></p>
            </div>
            <a id="PurchaseButton" href="Payment.html">THANH TOÁN</a>
            <div id="PolicyCart">
                <div class="PolicyCartColumn">
                    <img src="Image/Header/Warranty.svg" alt="Warranty">
                    <p>Bảo hành 10 năm <br> lỗi nhà sản xuất</p>
                </div>
                <div class="PolicyCartColumn">
                    <img src="Image/Header/Shipping.svg" alt="Shipping">
                    <p>Freeship <br> với đơn hàng > 700K</p>
                </div>
            </div>
            <div id="NoProductInCart">
                <h3>Hiện tại chưa có sản phẩm nào trong giỏ hàng của bạn</h3>
                <p>Tiếp tục mua sắm</p>
            </div>
        </div>

        <div id="SearchContent">
            <div>
                <img src="Image/Header/Xbutton.svg" alt="XButton">
            </div>
            <div>
                <img src="Image/Header/SearchLeft.svg" alt="Search">
                <input type="text" id="SearchInput" placeholder="Tìm kiếm ...">
            </div>
        </div>

        <div id="WatchContent">
            <a href="DongHoNam.html"><img src="Image/Header/OrientLogo.svg" alt="Orient"></a>
            <a href="DongHoNam.html"><img src="Image/Header/HublotLogo.svg" alt="Hublot"></a>
            <a href="DongHoNam.html"><img src="Image/Header/RolexLogo.svg" alt="Rolex"></a>
            <a href="DongHoNam.html"><img src="Image/Header/SamsungLogo.svg" alt="Samsung"></a>
            <a href="DongHoNam.html"><img src="Image/Header/CasioLogo.svg" alt="Casio"></a>
            <a href="DongHoNam.html"><img src="Image/Header/AppleLogo.svg" alt="Apple"></a>
            <a href="DongHoNam.html"><img src="Image/Header/SeikoLogo.svg" alt="Seiko"></a>
            <a href="DongHoNam.html"><img src="Image/Header/CitizenLogo.svg" alt="Citizen"></a>
            <a href="DongHoNam.html"><img src="Image/Header/DWLogo.svg" alt="DW"></a>
            <a href="DongHoNam.html"><img src="Image/Header/CurnonLogo.svg" alt="Curnon"></a>
            <a href="DongHoNam.html"><img src="Image/Header/GShockLogo.svg" alt="GShock"></a>
            <a href="DongHoNam.html"><img src="Image/Header/FossilLogo.svg" alt="Fossil"></a>
            <a href="DongHoNam.html"><img src="Image/Header/EfidiceLogo.svg" alt="Efidice"></a>
            <a href="DongHoNam.html"><img src="Image/Header/SkmeiLogo.svg" alt="Skmei"></a>
            <a href="DongHoNam.html"><img src="Image/Header/MiniFocusLogo.svg" alt="MiniFocus"></a>
            <a href="DongHoNam.html"><img src="Image/Header/MVWLogo.svg" alt="MVW"></a>
            <a href="DongHoNam.html"><img src="Image/Header/TitanLogo.svg" alt="Titan"></a>
            <a href="DongHoNam.html"><img src="Image/Header/WeideLogo.svg" alt="Weide"></a>
            <a href="DongHoNam.html"><img src="Image/Header/NakzenLogo.svg" alt="Nakzen"></a>
            <a href="DongHoNam.html"><img src="Image/Header/MichaelKorsLogo.svg" alt="MichaelKors"></a>
        </div>

        <div id="BannerDH_Nam">
            <div id="BannerContent">
                <h1>Đồng hồ nam</h1>
                <h2>Lịch lãm bắt nguồn từ sự tinh tế</h2>
                <a id="ShoppingButton" href="DongHoNam.html">Khám phá ngay</a>
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
                        <div id="label-sort"><label  ><b>Sắp xếp </b></label></div>
                    </div>
                    <div class="col-sm-6 col-md-2 col-6 ml-0 pl-0 pr-0 text-responsive" >
                        <div id="sort">
                            <ul class="list-unstyled ml-0">
                                <li class="init">Phù hợp nhất</li>
                                <li value="1" id="Init-Value">Phù hợp nhất</li>
                                <li value="2">Giá tăng dần</li>
                                <li value="3">Giá giảm dần</li>
                            </ul>
                        </div>
                            
                    </div>                  
                    <div  class="col-sm-2 col-md-4 col-2 p-0" align="right">
                        <p id="Bo-Chon" ><span  class="text-responsive"> <i class="fas fa-sliders-h fa-1x"></i></span><span><b> FILTERS</b> </span></p>
                    </div>
                </div> 
            </section>
            <!-- end khu vực tạo điều kiện bộ chọn-->
            <!-- Khu vực hiển thị số sản phẩm được hiện && Hiển thị các bộ chọn được chọn -->
            <section id="Number-Product">
                <div><span><b><span id="Amount-Product"></span></b><span> of 24 products</span></span>
                    <span id="Case-size"></span>
                    <span id="Colors"></span>
                    <span id="Strap"></span>
                </div>
            </section>
            <!-- end khu vực hiển thị số-->
            <div style="position:relative;height:auto">
                <!-- Khu vực chứa các bộ chọn của trang web -->
                <div id="Div-BoChon" >
                    <div id="BoChon-Row1">
                        <div id="BoChon-Col1" align="center">
                            <table align="center">
                                <tr >
                                    <td colspan="2" align="center" class="title-BoChon">Bộ sưu tập cho phái Mạnh</td>
                                 </tr>
                                <tr>
                                    <td id="td1"><img src="images/DH_Nam/clock.png" class="clock-Colection"></td>
                                    <td id="td2">Xem thêm</td>
                                </tr>
                                <tr>
                                    <td><img src="images/DH_Nam/clock.png" class="clock-Colection"></td>
                                    <td>Xem thêm</td>
                                </tr>
                                <tr>
                                    <td><img src="images/DH_Nam/clock.png" class="clock-Colection"></td>
                                    <td>Xem thêm</td>
                                </tr>
                                <tr>
                                    <td><img src="images/DH_Nam/clock.png" class="clock-Colection"></td>
                                    <td>Xem thêm</td>
                                </tr>

                            </table>
                        </div>
                        <div id="BoChon-Col2" align="center">
                            <table cellspacing="20px" align="center">
                                <tr>
                                    <td colspan="2" align="center">Kích thước mặt</td>
                                </tr>
                                <tr >
                                    <td align="center" id="Kichthuoc1">
                                        <div class="div-FaceSize" ><p align="center"><b>42</b></p></div>
                                        <div class="Description-Kichthuoc">42mm</div>
                                    </td>
                                    <td align="center" id="Kichthuoc2">
                                        <div class="div-FaceSize" ><p align="center"><b>35</b></p></div>
                                        <div class="Description-Kichthuoc">35mm</div>
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
                                    <td align="center" id="Mau1"  class="Option-color"><div class="div-img-color"><img src="images/DH_Nam/mau1.png" class="img-color"></div>
                                        <div class="Description-color">Rosegold</div>
                                    </td>
                                    <td  align="center" id="Mau2"  class="Option-color"><div class="div-img-color"><img src="images/DH_Nam/mau2.png" class="img-color"></div>
                                        <div class="Description-color">Silver</div>
                                    </td>   
                                    <td align="center" id="Mau3"  class="Option-color"><div class="div-img-color"><img src="images/DH_Nam/mau3.png" class="img-color"></div>
                                        <div class="Description-color">Black</div>
                                    </td>                   
                                </tr>
                                <tr >
                                    <td class="Option-color" align="center" id="Mau4"><div class="div-img-color" style="background-color: rgb(233, 224, 224);"><img src="images/DH_Nam/mau4.png" class="img-color"></div>
                                        <div class="Description-color">White</div>
                                    </td>   
                                    <td class="Option-color" align="center" id="Mau5"><div class="div-img-color"><img src="images/DH_Nam/mau5.png" class="img-color"></div>
                                        <div class="Description-color">Navy</div>
                                    </td>
                                    <td align="center" id="Mau6"  class="Option-color"><div class="div-img-color"><img src="images/DH_Nam/mau6.png" class="img-color"></div>
                                        <div class="Description-color">Gray</div>
                                    </td>
                                </tr>
                                <tr >
                                    <td align="center" id="Mau7"  class="Option-color"><div class="div-img-color"><img src="images/DH_Nam/mau7.png" class="img-color"></div>
                                        <div class="Description-color">Brown</div>
                                    </td>
                                    <td align="center" id="Mau8"  class="Option-color"><div class="div-img-color"><img src="images/DH_Nam/mau8.png" class="img-color"></div>
                                        <div class="Description-color">Coffe</div>
                                    </td>
                                    <td align="center" id="Mau9"  class="Option-color"><div class="div-img-color"><img src="images/DH_Nam/mau9.png" class="img-color"></div>
                                        <div class="Description-color">Sand</div>
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
                                    <td align="center" id="Day1" style="padding:0px"><div class="div-img-day"><img src="images/DH_Nam/day1.png" class="img-day"></div>
                                        <div class="Description-Day">Dây da cao cấp</div>
                                    </td>
                                    <td align="center" id="Day2"><div class="div-img-day"><img src="images/DH_Nam/day2.png" class="img-day"></div>
                                        <div class="Description-Day">Dây kim loại</div>
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
                            <div class="row mt-4 ml-5 mr-5">
                                <div class=" col-sm-6 col-6 col-md-3 1">
                                    <div class="Sale-Product"  id="sanPham9" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/achilles.1.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Achilles</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.479.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="Discount" >
                                            <span>15%</span>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div  class="col-sm-6 col-6 col-md-3 2">
                                    <div class="Normal-Product"  id="sanPham3" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/alexei2.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Alexei</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.287.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->   
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div  class="col-sm-6 col-6 col-md-3 3">
                                    <div class="Sale-Product"  id="sanPham5" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/blizzard3.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Blizzard</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.399.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="Discount" >
                                            <span>15%</span>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div  class="col-sm-6 col-6 col-md-3 4">
                                    <div class="Sale-Product"  id="sanPham8" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/bt.calm4.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Calm</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.468.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="Discount" >
                                            <span>15%</span>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-4 ml-5 mr-5">
                                <div class="col-sm-6 col-6 col-md-3 5">
                                    <div class="Normal-Product"  id="sanPham4" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/d.fearless5.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Fearless</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.399.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 6">
                                    <div class="Normal-Product"  id="sanPham2" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/bt.gallant6.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Gallant</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.199.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 7">
                                    <div class="Normal-Product"  id="sanPham6" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/bx.grand7.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>LeeSin</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.399.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 8">
                                    <div class="Normal-Product"  id="sanPham1" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/bx.swank8.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Swank</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.199.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-4 ml-5 mr-5">
                                <div class="col-sm-6 col-6 col-md-3 9">
                                    <div class="Sale-Product"  id="sanPham7" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/cannon9.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Cannon</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.459.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="Discount" >
                                            <span>15%</span>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 10">
                                    <div class="Sale-Product"  id="sanPham11" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="Image/Header/Product/herbert.png"/>
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Herbert</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.479.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->   
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="Discount" >
                                            <span>15%</span>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 11">
                                    <div class="Normal-Product"  id="sanPham12" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/cora.11.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Cora</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.499.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 12">
                                    <div class="Sale-Product"  id="sanPham10" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/d.rebel12.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Rebel</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.479.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="Discount" >
                                            <span>15%</span>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="div2" class="container">  
                            <div class="row mt-4 ml-5 mr-5">
                                <div class="col-sm-6 col-6 col-md-3 13">
                                    <div class="Normal-Product"  id="sanPham17" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/d.robust13.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Robust</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">3.000.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 14">
                                    <div class="Normal-Product"  id="sanPham14" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/d2-14.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Hecarim</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.500.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 15">
                                    <div class="Normal-Product"  id="sanPham15" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/earthquake15.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Earthquake</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.549.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 16">
                                    <div class="Sale-Product"  id="sanPham13" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/g.rise16.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Rise</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.500.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="Discount" >
                                            <span>15%</span>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-4 ml-5 mr-5">
                                <div class="col-sm-6 col-6 col-md-3 17">
                                    <div class="Sale-Product"  id="sanPham16" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/gaia17.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Gragas</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">2.559.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="Discount" >
                                            <span>15%</span>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 18">
                                    <div class="Normal-Product"  id="sanPham18" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/guandao18.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Graves</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">3.000.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->   
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 19">
                                    <div class="Sale-Product"  id="sanPham23" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/gunter19.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Jarvan</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">5.999.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="Discount" >
                                            <span>15%</span>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 20">
                                    <div class="Normal-Product"  id="sanPham24" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/haze20.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Sejuani</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">5.999.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="div3" class="container">
                            <div class="row mt-4 ml-5 mr-5" >
                                <div class="col-sm-6 col-6 col-md-3 21">
                                    <div class="Sale-Product"  id="sanPham20" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/heinz21.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Reksai</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                <span class="item_price">3.599.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="Discount" >
                                            <span>15%</span>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 22">
                                    <div class="Normal-Product"  id="sanPham19" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/herbert22.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Herbert</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">3.739.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->   
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 23">
                                    <div class="Normal-Product"  id="sanPham21" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/klaus23.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Kindred</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">3.739.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-6 col-md-3 24">
                                    <div class="Normal-Product"  id="sanPham22" align='center' >
                                        <a href="#" class="mask">
                                            <img class="img-responsive zoom-img" src="images/DH_Nam/Img_DH_Nam/lava24.png" alt="" />
                                        </a>
                                        <div class="product-bottom">
                                            <h3>Olaf</h3>
                                            <p>Khám phá ngay</p>
                                            <h4>
                                                    <span class="item_price">5.670.000 VND</span>
                                            </h4>
                                            <!--button Mua hàng-->
                                            <button class="Button-Buy"><i class="fas fa-cart-plus"></i><span>Chọn mua</span></button>
                                        </div>
                                        <div class="FvIcon">
                                            <span><i class="far fa-heart fa-1x"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="buton-Xemthem">
                            <button id="show">Xem thêm 8 sản phẩm</button>
                        </div>
                    </div>
                    <!-- Khu vực chứa các bộ sưu tập sản phẩm khác -->
                    <section id="Collection">
                        <div align="center">
                            <div class="f-grid" >
                                <div class="f-grid-col">
                                    <div class="Image-Polaroid">
                                        <img src="images/CTSP/bnr-1.jpg" alt="5Terre" style="width:100%">
                                        <div class="Description">
                                            <a href="#">Cổ điển</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-grid-col">
                                    <div class="Image-Polaroid">
                                        <img src="images/CTSP/bnr-3.jpg" alt="5Terre" style="width:100%">
                                        <div class="Description">
                                            <a href="#">Hiện đại</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="f-grid-col">
                                    <div class="Image-Polaroid">
                                        <img src="images/CTSP/bnr-2.jpg" alt="5Terre" style="width:100%">
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
                        <p> <img class="Icon" src="Image/Location.svg"> Khu phố 6, P.Linh Trung, Q.Thủ Đức, Tp.Hồ Chí Minh.
                        </p>
                        <p> <img class="Icon" src="Image/Phone.svg"> (028) 372 52002</p>
                        <p> <img class="Icon" src="Image/Fax.svg" alt=""> (028) 372 52148</p>
                        <a href="mailto:example@email.com"> <img class="Icon" src="Image/Mail.svg" alt="">
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
                        <img class="PaymentIcon" src="Image/ViettelPay.svg">
                        <img class="PaymentIcon" src="Image/ACB.svg">
                        <img class="PaymentIcon" src="Image/AirPay.svg">
                        <img class="PaymentIcon" src="Image/MasterCard.svg">
                        <img class="PaymentIcon" src="Image/Momo.svg">
                        <img class="PaymentIcon" src="Image/Paypal.svg">
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

    <!-- <script src="JS/Giatien.js"></script> -->
    <script src="JS/KingdomWatch.js"></script>
    <script src="JS/jquery-3.5.1.min.js"></script>
    <script src="JS/JSElement.js"></script> 
    <script src="JS/Show.js"></script>
    <script src="JS/Sapxep.js"></script>
    <script src="JS/Show-Filter.js"></script>
    <script src="JS/Filter.js"></script>
    <script src="JS/Run-snow.js"></script>
    
</body>

</html>