$(document).ready(
    function(){
        var AllOptions=$(".pagination").find(".page-item");
        
        $(".pagination").on("click","li:not(.active)",function()
        {
           AllOptions.removeClass("active");
           $(this).addClass("active"); 
        });
    }
);