$(document).ready(function(){
    $("#div2").hide();
    $("#div3").hide();
    $("#Amount-Product").text("12");
    //cờ để có tín hiệu hiện div3---khi cờ bằng 1 sẽ cho hiện div3
    var flag=0;
    $("#show").click(function()
    {  
        if(flag==0)
        {
            $("#div2").show();
            $("#show").text("Xem thêm 4 sản phẩm");
            $("#Amount-Product").text("20");
            
        }
        if (flag==1)
        {
            $("#div3").show();
            $("#show").hide();
            $("#Amount-Product").text("24");
        }
        flag=1;

    });
    });