                                        /* -----TRANG CHỦ----- */
function NavElementEffect() {
    $(".NavElement").mouseenter(function () {
        $(this).find("p").css("border-bottom", "2px solid");
        $(this).find("p").css("border-bottom-color", "inherit");
    });
    $(".NavElement").mouseleave(function () {
        $(this).find("p").css("border-bottom", "0px");
    });
    $("p.NavElement").mouseenter(function () {
        $(this).find("span").css("border-bottom", "2px solid");
        $(this).find("span").css("border-bottom-color", "inherit");
    });
    $(".NavElement").mouseleave(function () {
        $(this).find("span").css("border-bottom", "0px");
    });
}

function disableScroll() {
    document.body.classList.add("StopScrolling");
}

function enableScroll() {
    document.body.classList.remove("StopScrolling");
}

function ShowHideWatchContent()
{
    $(".NavElement:nth-child(3), #WatchContent").mouseenter(function()
    {
        $("#WatchContent").show().css("display", "flex");
    });
    $(".NavElement:nth-child(3), #WatchContent").mouseleave(function()
    {
        $("#WatchContent").hide();
    });
}

function ShowCart() {
    $("#Cart").click(function () {
        $("#CartContent").show().animate({right: "0"}, "10s");
        $("#TransparentGlass").show();
        disableScroll();
    });
}

function HideCart() {
    $("#CartTitle img").click(function () {
        $("#CartContent").fadeOut("fast");
        $("#TransparentGlass").hide();
        enableScroll();
    })
    $("#TransparentGlass").click(function () {
        $("#CartContent").fadeOut("fast");
        $("#TransparentGlass").hide();
        enableScroll();
    })
}

function ShowSearch() {
    $("#Search").click(function () {
        $("#SearchContent").fadeIn("fast");
        $("#TransparentGlass").show();
        disableScroll();
    });
}

function HideSearch() {
    $("#SearchContent > div:first-child img").click(function () {
        $("#SearchContent").fadeOut("fast");
        $("#TransparentGlass").hide();
        enableScroll();
    })
    $("#TransparentGlass").click(function () {
        $("#SearchContent").fadeOut("fast");
        $("#TransparentGlass").hide();
        enableScroll();
    })
}

function InitialProductID()
{
    $(".CartProductElement").attr("id", `ProductID${NumberOfDifferentProductInCart}`);
    $(`#ProductID0`).hide();
}

//function ConvertStringPriceToNumberPrice(init)
//{
//    // x 1.000.000 VND
//    let FirstPrice = init.slice(2, init.lastIndexOf(" ")); // 1.000.000
//    let FirstArr = FirstPrice.split("."); // 1,0,0,0,0,0,0
//    let SecondPrice = "";
//    for (let i = 0; i < FirstArr.length; i++)
//        SecondPrice += FirstArr[i]; // 1000000
//    return SecondPrice;
//}
//
//function ConvertNumberPriceToStringPrice(result)
//{
//    result = result.split(""); // 2,0,0,0,0,0,0
//    let NumberOfDots = parseInt((result.length - 1) / 3);
//    let count = 0;
//    let SecondArr = "";
//    let indexOfSecondArr = result.length + NumberOfDots - 1;
//    SecondArr = SecondArr.split("");
//    for (let i = result.length - 1; i >= 0; i--) {
//
//        SecondArr[indexOfSecondArr] = result[i];
//        count++;
//        indexOfSecondArr--;
//        if (count % 3 == 0) {
//            SecondArr[indexOfSecondArr] = ".";
//            indexOfSecondArr--;
//        }
//    }
//    let SecondPrice = "";
//    for (let j = 0; j < SecondArr.length; j++)
//        SecondPrice = SecondPrice.concat(SecondArr[j]);
//    SecondPrice = SecondPrice.concat(" VND");
//    return SecondPrice;
//}
//
//function PriceOfEachProduct(init, NumberOfElement)
//{
//    let result = ConvertStringPriceToNumberPrice(init) * NumberOfElement; // 2000000
//    result = result.toString(); // 2000000(string)
//    return ConvertNumberPriceToStringPrice(result); // 2.000.000 VND
//}
//
//function SetTotalPriceOfCart()
//{
//    let TotalPrice = 0;
//    for (let i = 0; i < NumberOfDifferentProductInCart; i++)
//    {
//        let temp = ConvertStringPriceToNumberPrice($(`#ProductID${IDArr[i]}`).find(".PriceOfEachSingleProduct").html());
//        TotalPrice += temp * Number($(`#ProductID${IDArr[i]}`).find(".NumberOfEachProduct").html());
//    }
//    TotalPrice = TotalPrice.toString();
//    TotalPrice = ConvertNumberPriceToStringPrice(TotalPrice);
//    $("#ValueOfPriceCart").html(TotalPrice);
//}
//
//function IncreaseNumberOfElement() {
//    $(".IncreaseElementButton").click(function () {
//        let index = $(this).attr("id");
//        index = index.slice(index.length - 1);
//        let NumberOfElement = Number($(`#ProductID${index} .NumberOfCartProductElement p`).html());
//        NumberOfElement++;
//        NumberOfProductInCart++;
//        $(`#ProductID${index} .NumberOfCartProductElement p`).html(NumberOfElement);
//        SetTotalPriceOfCart();
//        $(`#ProductID${index} .DecreaseElementButton`).css("opacity", "1");
//        LoadProduct();
//    });
//}
//
//function DecreaseNumberOfElement() {
//    $(".DecreaseElementButton").click(function () {
//        let index = $(this).attr("id");
//        index = index.slice(index.length - 1);
//        let NumberOfElement = Number($(`#ProductID${index} .NumberOfCartProductElement p`).html());
//        if (NumberOfElement == 2) {
//            NumberOfElement--;
//            NumberOfProductInCart--;
//            $(`#ProductID${index} .NumberOfCartProductElement p`).html(NumberOfElement);
//            SetTotalPriceOfCart();
//            $(`#ProductID${index} .DecreaseElementButton`).css("cursor", "not-allowed");
//            $(`#ProductID${index} .DecreaseElementButton`).css("opacity", "0.5");
//        }
//        else if (NumberOfElement > 2) {
//            NumberOfElement--;
//            NumberOfProductInCart--;
//            $(`#ProductID${index} .NumberOfCartProductElement p`).html(NumberOfElement);
//            SetTotalPriceOfCart();
//        }
//        LoadProduct();
//    });
//}
//
//function KeepProductInCart()
//{
//    $(".CancelCartProduct > div > p:first-child").click(function()
//    {
//        let index = $(this).parent().parent().attr("id");
//        index = index.slice(index.length - 1);
//        $(`#CancelCartProduct${index}`).hide();
//    });
//}
//
//function DecideCancelProduct()
//{
//    $(".TrashButton").click(function()
//    {
//        let index = $(this).attr("id");
//        index = index.slice(index.length - 1);
//        $(`#CancelCartProduct${index}`).show();
//    });
//}
//
//function CancelProduct()
//{
//    $(".CancelCartProductButton").click(function()
//    {
//        let DeleteID;
//        let index = $(this).parent().parent().parent().attr("id");
//        index = index.slice(index.length - 1);
//        NumberOfProductInCart -= Number($(`#ProductID${index}`).find(".NumberOfEachProduct").html());
//        for (let i = 0; i < NumberOfDifferentProductInCart; i++)
//            if (IDArr[i] == index)
//                DeleteID = i;
//        IDArr.splice(DeleteID, 1);
//        $(`#ProductID${index}`).remove();
//        NumberOfDifferentProductInCart--;
//        LoadProduct();
//        SetTotalPriceOfCart();
//    });
//}
//
//function DuplicateProduct()
//{
//    $(".Button-Buy").click(function()
//    {
//        let Duplication = false;
//        let NewProduct = $("#ProductID0").clone(true);
//        for (let i = 0; i < NumberOfDifferentProductInCart; i++)
//            if ($(this).parent().find("h3").html() == $(`#ProductID${IDArr[i]}`).find(".NameOfProduct").html())
//            {
//                NumberOfProductInCart++;
//                let NumberOfElement = Number($(`#ProductID${IDArr[i]} .NumberOfCartProductElement p`).html());
//                NumberOfElement++;
//                $(`#ProductID${IDArr[i]} .NumberOfCartProductElement p`).html(NumberOfElement);
//                SetTotalPriceOfCart();
//                LoadProduct();
//                Duplication = true;
//            }
//        if (Duplication == false)
//        {
//            NumberOfDifferentProductInCart++;
//            NumberOfProductInCart++;
//            ID++;
//            IDArr.push(ID);
//            NewProduct.attr("id", `ProductID${ID}`);
//            NewProduct.find(".IncreaseElementButton").attr("id", `IncreaseElementButton${ID}`);
//            NewProduct.find(".DecreaseElementButton").attr("id", `DecreaseElementButton${ID}`);
//            NewProduct.find(".TrashButton").attr("id", `TrashButton${ID}`);
//            NewProduct.find(".CancelCartProduct").attr("id", `CancelCartProduct${ID}`);
//            NewProduct.find(".NameOfProduct").html($(this).parent().find("h3").html());
//            NewProduct.find(".ImageOfProduct").attr("src", $(this).parent().parent().find("img").attr("src"));
//            let FormatPrice;
//            FormatPrice = $(this).parent().find(".item_price").html();
//            FormatPrice = "x ".concat(FormatPrice);
//            NewProduct.find(".PriceOfEachSingleProduct").html(FormatPrice);
//            NewProduct.show();
//            NewProduct.appendTo("#CartProduct");
//            LoadProduct();
//            SetTotalPriceOfCart();
//        }
//    });
//}
//
//function ShowHideProductInCart()
//{
//    if (NumberOfProductInCart == 0)
//    {
//        $("#Cart sup").hide();
//        $("#NoProductInCart").show();
//    }
//    else
//    {
//        $("#Cart sup").show();
//        $("#NoProductInCart").hide();
//    }
//}
//
//function LoadProduct()
//{
//    $("#Cart sup").html(NumberOfProductInCart);
//    ShowHideProductInCart();
//}
//
//function NoProductSoComeBack()
//{
//    $("#NoProductInCart p").click(function()
//    {
//        $("#CartContent, #TransparentGlass").hide();
//        enableScroll();
//    });
//}

function ChangeButtonBuy()
{
    $(".Button-Buy > span").text("Thêm vào giỏ");
}

function LinkToCTSP()
{
    $(".mask").attr("href","ChiTietSP.html");
}

function AutoChangeBackGround ()
{
    var imageFile = ["bnr-3.jpg", "bnr-2.jpg", "bnr-1.jpg"];
    var currentIndex = 0;
    setInterval(function () {
        if (currentIndex == imageFile.length) {
            currentIndex = 0;
        }
        $("#Banner").css('background-image', 'url("images/CTSP/' + imageFile[currentIndex++] + '")');
    }, 3000);
}

                                        /* -----LIÊN HỆ----- */
function ShowHideNameError()
{
    $("#ContactForm button").click(function()
    {
        if ($("#ContactFormNameInput").val() == "")
        {
            $("#ContactFormNameInput").attr("placeholder", "Nhập tên của bạn !");
        }
    });
    $("#ContactFormNameInput").mouseenter(function()
    {
        $("#ContactFormNameInput").attr("placeholder", "");
    });
}

function ShowHideMailError()
{
    $("#ContactForm button").click(function()
    {
        if ($("#ContactFormMailInput").val() == "")
        {
            $("#ContactFormMailInput").attr("placeholder", "Nhập email của bạn !");
        }
        else if ($("#ContactFormMailInput").val().indexOf("@") == -1)
        {
            $("#ContactFormMailInput").val("");
            $("#ContactFormMailInput").attr("placeholder","Email không hợp lệ !");
        }
    });
    $("#ContactFormMailInput").mouseenter(function()
    {
        $("#ContactFormMailInput").attr("placeholder", "");
    });
}

function ShowHideNoticeError()
{
    $("#ContactForm button").click(function()
    {
        if ($("#ContactFormNoticeInput").val() == "")
        {
            $("#ContactFormNoticeInput").attr("placeholder","Nhập nội dung của bạn !");
        }
    });
    $("#ContactFormNoticeInput").mouseenter(function()
    {
        $("#ContactFormNoticeInput").attr("placeholder", "");
    });
}

function CheckValidPhoneNumber(length)
{
    if (length == 10 || length == 0)
        return true;
    return false;
}

function ShowHidePhoneError()
{
    $("#ContactForm button").click(function()
    {
        if (CheckValidPhoneNumber($("#ContactFormPhoneInput").val().toString().length) == false)
        {
            $("#ContactFormPhoneInput").val("");
            $("#ContactFormPhoneInput").attr("placeholder","Số điện thoại không hợp lệ !");
        }
    });
    $("#ContactFormPhoneInput").mouseenter(function()
    {
        $("#ContactFormPhoneInput").attr("placeholder", "");
    });
}

function ShowContactNotice()
{
    $("#ContactForm button").click(function()
    {
        if ($("#ContactFormNameInput").val() != "" && $("#ContactFormMailInput").val() != "" && $("#ContactFormNoticeInput").val() != "")
            $("#ContactNotice").show();
    });
}

                                        /* -----THANH TOÁN----- */
function ShowHidePaymentNameError()
{
    $("#PaymentLeftColumn button").click(function()
    {
        if ($("#PaymentNameInput").val() == "")
        {
            $("#PaymentNameInput").attr("placeholder", "Nhập tên của bạn !");
            $("#PaymentNameInput").addClass("PaymentError");
            $("#PaymentNameInput").mouseenter(function()
            {
                $("#PaymentNameInput").removeClass("PaymentError");
                $("#PaymentNameInput").attr("placeholder", "Họ tên");
            });
        }
    });
}

function ShowHidePaymentMailError()
{
    $("#PaymentLeftColumn button").click(function()
    {
        if ($("#PaymentMailInput").val() == "")
        {
            $("#PaymentMailInput").attr("placeholder", "Nhập email của bạn !");
        }
        else if ($("#PaymentMailInput").val().indexOf("@") == -1)
        {
            $("#PaymentMailInput").val("");
            $("#PaymentMailInput").attr("placeholder","Email không hợp lệ !");
        }
        $("#PaymentMailInput").addClass("PaymentError")
        $("#PaymentMailInput").mouseenter(function()
        {
            $("#PaymentMailInput").removeClass("PaymentError");
            $("#PaymentMailInput").attr("placeholder", "Email");
        });
    });
}

function ShowHidePaymentAddressError()
{
    $("#PaymentLeftColumn button").click(function()
    {
        if ($("#PaymentAddressInput").val() == "")
        {
            $("#PaymentAddressInput").attr("placeholder","Nhập địa chỉ của bạn !");
        }
        $("#PaymentAddressInput").addClass("PaymentError");
        $("#PaymentAddressInput").mouseenter(function()
        {
            $("#PaymentAddressInput").removeClass("PaymentError");
            $("#PaymentAddressInput").attr("placeholder", "Địa chỉ nhận hàng");
        });
    });
}

function ShowHidePaymentPhoneError()
{
    $("#PaymentLeftColumn button").click(function()
    {
        if ($("#PaymentPhoneInput").val() == "")
        {
            $("#PaymentPhoneInput").attr("placeholder","Nhập số điện thoại của bạn !");
        }
        else if (CheckValidPhoneNumber($("#PaymentPhoneInput").val().toString().length) == false)
        {
            $("#PaymentPhoneInput").val("");
            $("#PaymentPhoneInput").attr("placeholder","Số điện thoại không hợp lệ !");
        }
        $("#PaymentPhoneInput").addClass("PaymentError");
        $("#PaymentPhoneInput").mouseenter(function()
        {
            $("#PaymentPhoneInput").removeClass("PaymentError");
            $("#PaymentPhoneInput").attr("placeholder", "Số điện thoại");
        });
    });
}

function ApplySaleCode()
{
    $(".SaleCode button").click(function()
    {
        if ($(".SaleCode input").val() == "WATCHKINGDOM")
        {
            $(".SaleCode button").text("Thành công").css("background-color", "#ffa500").css("width", "28%");
            $(".SaleCode input").prop("disabled", true).css("background-color", "lightgrey");
        }
        else if ($(".SaleCode input").val() != "WATCHKINGDOM")
        {
            $(".SaleCode button").text("Thất bại").css("background-color", "#ff0f0f").css("width", "25%");
        }
    });
}   

                                        /* -----CHI TIẾT SẢN PHẨM----- */
function AddProductToCart()
{
    $("button.add-cart").click(function()
    {
        let NewProduct = $("#ProductID0").clone(true);
        let Duplication = false;
        for (let i = 0; i < NumberOfDifferentProductInCart; i++)
            if ($(`#ProductID${IDArr[i]}`).find(".NameOfProduct").html() == "Casio CM007")
            {
                NumberOfProductInCart++;
                let NumberOfElement = Number($(`#ProductID${IDArr[i]} .NumberOfCartProductElement p`).html());
                NumberOfElement++;
                $(`#ProductID${IDArr[i]} .NumberOfCartProductElement p`).html(NumberOfElement);
                SetTotalPriceOfCart();
                LoadProduct();
                Duplication = true;
            }
        if (Duplication == false)
        {
            NumberOfDifferentProductInCart++;
            NumberOfProductInCart++;
            ID++;
            IDArr.push(ID);
            NewProduct.attr("id", `ProductID${ID}`);
            NewProduct.find(".IncreaseElementButton").attr("id", `IncreaseElementButton${ID}`);
            NewProduct.find(".DecreaseElementButton").attr("id", `DecreaseElementButton${ID}`);
            NewProduct.find(".TrashButton").attr("id", `TrashButton${ID}`);
            NewProduct.find(".CancelCartProduct").attr("id", `CancelCartProduct${ID}`);
            NewProduct.find(".NameOfProduct").html("Casio CM007");
            NewProduct.find(".ImageOfProduct").attr("src", "images/CTSP/s-1.jpg");
            let FormatPrice;
            FormatPrice = "2.700.000 VND";
            FormatPrice = "x ".concat(FormatPrice);
            NewProduct.find(".PriceOfEachSingleProduct").html(FormatPrice);
            NewProduct.show();
            NewProduct.appendTo("#CartProduct");
            LoadProduct();
            SetTotalPriceOfCart();
        }
    });
}

                                        /* -----NEWS----- */
function ShowBackToTopBtn(){
    let btn = $("#BackToTopBtn");
    $(window).scroll(function(){
        if ($(window).scrollTop() > 1000)
            btn.addClass("show");
        else
            btn.removeClass("show");
    });
};

function ActiveBackToTopBtn(){
    $("#BackToTopBtn").click(function(){
        $("html, body").animate({scrollTop: 0}, '100');
    });
};

var NumberOfProductInCart = 0;
var NumberOfDifferentProductInCart = 0;
var ID = 0;
var IDArr = [];

$("document").ready(function () {
    /* Trang chủ */
    InitialProductID();
    NavElementEffect();
//    ShowCart();
//    HideCart();
    ShowSearch();
    HideSearch();
//    IncreaseNumberOfElement();
//    DecreaseNumberOfElement();
//    KeepProductInCart();
//    DecideCancelProduct();
//    CancelProduct();
    ShowHideWatchContent();
//    DuplicateProduct();
//    SetTotalPriceOfCart();
//    NoProductSoComeBack();
//    LoadProduct();
    ChangeButtonBuy();
    LinkToCTSP();
    AutoChangeBackGround();
    /* Liên hệ */
    ShowHideNameError();
    ShowHideMailError();
    ShowHideNoticeError();
    ShowHidePhoneError();
    ShowContactNotice();
    /* Thanh toán */
//    ShowHidePaymentNameError();
//    ShowHidePaymentMailError();
//    ShowHidePaymentAddressError();
//    ShowHidePaymentPhoneError();
    ApplySaleCode();
    /* Chi tiết sản phẩm */
//    AddProductToCart();
    /* Tin tức */
    ShowBackToTopBtn();
    ActiveBackToTopBtn();
    $('#logout-btn').on('click',function(e){
    	e.preventDefault();
    	$('#logout-form').submit();
    })
});


