// JQuery_form_dang_Ky
//  JQuery_form_dang_nhap

function login()
{
  $("#btn_submit").click(function ()
  {
    if ($("#email").val() == "")
    {
      $("#email").addClass("PaymentError");
      $("#email").attr("placeholder", "Vui lòng điền tên đăng nhập !");
      $("#email").mouseenter(function ()
      {
        $("#email").removeClass("PaymentError");
        $("#email").attr("placeholder", "Tên đăng nhập");
      });
    }
    if ($("#password").val() == "")
    {
      $("#password").addClass("PaymentError");
      $("#password").attr("placeholder", "Vui lòng điền mật khẩu !");
      $("#password").mouseenter(function ()
      {
        $("#password").removeClass("PaymentError");
        $("#password").attr("placeholder", "Mật khẩu");
      });
    }
  });
}

function register()
{
  $("#btn_register").click(function (e)
  {
    if ($("#ten").val() == "")
    {
      console.log(e)
      e.preventDefault();
      $("#ten").addClass("PaymentError");
      $("#ten").attr("placeholder", "Nhập tên của bạn !");
      $("#ten").mouseenter(function ()
      {
        $("#ten").removeClass("PaymentError");
        $("#ten").attr("placeholder", "Tên");
      });
    }

    if ($("#ho").val() == "")
    {
      e.preventDefault();
      $("#ho").addClass("PaymentError");
      $("#ho").attr("placeholder", "Nhập địa chỉ của bạn !");
      $("#ho").mouseenter(function ()
      {
        $("#ho").removeClass("PaymentError");
        $("#ho").attr("placeholder", "Họ");
      });
    }

    if ($("#email_register").val() == "")
    {
      e.preventDefault();
      $("#email_register").attr("placeholder", "Nhập email của bạn !");
    }
    else if ($("#email_register").val().indexOf("@") == -1)
    {
      e.preventDefault();
      $("#email_register").val("");
      $("#email_register").attr("placeholder", "Email không hợp lệ !");
    }
    $("#email_register").addClass("PaymentError")
    $("#email_register").mouseenter(function ()
    {
      $("#email_register").removeClass("PaymentError");
      $("#email_register").attr("placeholder", "Email");
    });

    if ($("#sdt").val() == "")
    {
      e.preventDefault();
      $("#sdt").attr("placeholder", "Nhập số điện thoại của bạn !");
    }
    else if (CheckValidPhoneNumber($("#sdt").val().toString().length) == false)
    {
      e.preventDefault();
      $("#sdt").val("");
      $("#sdt").attr("placeholder", "Số điện thoại không hợp lệ !");
    }
    $("#sdt").addClass("PaymentError");
    $("#sdt").mouseenter(function ()
    {
      $("#sdt").removeClass("PaymentError");
      $("#sdt").attr("placeholder", "Số điện thoại");
    });

    if ($("#password_register").val() == "")
    {
      e.preventDefault();
      $("#password_register").addClass("PaymentError");
      $("#password_register").attr("placeholder", "Nhập mật khẩu của bạn !");
      $("#password_register").mouseenter(function ()
      {
        $("#password_register").removeClass("PaymentError");
        $("#password_register").attr("placeholder", "Mật khẩu");
      })
    };

  });
}

$("document").ready(function ()
{
    login();
    register();
});
