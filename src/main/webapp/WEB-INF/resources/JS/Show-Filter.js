$(document).ready(function(){
    $("#Bo-Chon").click(function()
    {  
        $("#Div-BoChon").slideToggle(300,function()
        {
            $("#Div-SanPham").toggleClass("Div-BoChon-responsive");
            $("#Bo-Chon").toggleClass("Bo-Chon-responsive");
        });

    });
    $("#Div-SanPham").click(function()
    {  
        $("#Div-BoChon").slideUp(100,function()
        {
            $("#Div-SanPham").removeClass("Div-BoChon-responsive");
            $("#Bo-Chon").removeClass("Bo-Chon-responsive");
        });

    });
    $("#BoChon-Row2").click(function()
    {  
        $("#Div-BoChon").slideUp(100,function()
        {
            $("#Div-SanPham").removeClass("Div-BoChon-responsive");
            $("#Bo-Chon").removeClass("Bo-Chon-responsive");
        });

    });
    });