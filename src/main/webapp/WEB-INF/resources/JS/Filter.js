$(document).ready(function(){
    $("#Kichthuoc1").click(function()
    {   
        var text='<span >Case-size: '+$("#Kichthuoc1").find(".Description-Kichthuoc").text()+'</span><span class="close" id="close1"><i class="fas fa-times fa-1x" ></i></span>';
        $("#Case-size").html(text);
        $("#Case-size").show();
        $("#close1").click(function()
        {      
            {
                $("#Case-size").hide();
            }      
        });

    });
    $("#Kichthuoc2").click(function()
    {   
        var text="<span>Case-size: "+$("#Kichthuoc2").find(".Description-Kichthuoc").text()+"</span><span class='close' id='close1'><i class='fas fa-times fa-1x'></i></span>";
        $("#Case-size").html(text);
        $("#Case-size").show();
        $("#close1").click(function()
        {      
            {
                $("#Case-size").hide();
            }      
        });

    });
    $("#Day1").click(function()
    {   
        var text="<span>Strap: "+$("#Day1").find(".Description-Day").text()+"</span><span  class='close' id='close2'><i class='fas fa-times fa-1x' ></i></span>";
        $("#Strap").html(text);
        $("#Strap").show();
        $("#close2").click(function()
        {      
            {
                $("#Strap").hide();
            }      
        });

    });
    $("#Day2").click(function()
    {   
        var text="<span>Strap: "+$("#Day2").find(".Description-Day").text()+"</span><span class='close' id='close2'><i class='fas fa-times fa-1x' ></i></span>";
        $("#Strap").html(text);
        $("#Strap").show();
        $("#close2").click(function()
        {      
            {
                $("#Strap").hide();
            }      
        });

    });
    
    $('.Option-color').click(function(){

       var id= '#'+$(this).attr('id');
       var text="<span>Color: "+$(id).find(".Description-color").text()+"</span><span class='close' id='close3'><i class='fas fa-times fa-1x'></i></span>";
        $("#Colors").html(text);
        $("#Colors").show();
        $("#close3").click(function()
        {      
            {
                $("#Colors").hide();
            }      
        });

    });
});