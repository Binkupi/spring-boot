//Sale-Product--- Sản phẩm được giảm giá
//Normal-Product--- Sản phẩm không được giảm giá
$(document).ready(
  function(){
    // khi load trang button-buy sẽ ẩn
    //Khi người dùng rê chuột vào đồng hồ
    $('.Normal-Product').mouseenter(function(){
		//tìm id của khối đồng hồ được rê chuột vào
		var id= '#'+$(this).attr('id');
		$(id).stop(false,true); 
		//di chuyển khối đồng hồ
		$(id).animate({bottom :'+=7px'},350);
		//Thêm bóng cho khối đồng hồ
		$(id).addClass("Product-Hover");
		//show icon
		$(id).find(".FvIcon").show();
		$(id).find(".FvIcon").unbind().click(function()
			{

        $(this).toggleClass("Show-FvIcon");

      });
        
		
		$(id).find(".Button-Buy").show();
		
		//đổi màu button mua
		$(id).find(".Button-Buy").hover(function()
		{
			$(id).find(".Button-Buy").addClass("Button-Buy-Responsive");
		},function()
		{
			$(id).find(".Button-Buy").removeClass("Button-Buy-Responsive");
		});
    });
    //Ngược lại
    $('.Normal-Product').mouseleave(function(){
      var id= '#'+$(this).attr('id'); 
      $(id).find(".FvIcon").hide();
      $(id).stop(false,true);
      $(id).animate({bottom :'-=7px'},100);
      $(id).removeClass("Product-Hover");
	  $(id).find(".Button-Buy").hide();
    
      //$('.Discount-Responsive').hide();
	});


    //Khi người dùng rê chuột vào đồng gồ
    $('.Sale-Product').mouseenter(function(){
        //tìm id của khối đồng hồ được rê chuột vào
      	var id= '#'+$(this).attr('id');
      	$(id).stop(false,true); 
      //di chuyển khối đồng hồ
        $(id).animate({bottom :'+=7px'},350);
        //Thêm bóng cho khối đồng hồ
        $(id).addClass("Product-Hover");
        //show icon
        $(id).find(".FvIcon").show();
        $(id).find(".FvIcon").unbind().click(function()
        {

          $(this).toggleClass("Show-FvIcon");

        });
        $(id).find(".Button-Buy").show();
        //đổi màu button mua
        $(id).find(".Button-Buy").hover(function()
        {
          $(id).find(".Button-Buy").addClass("Button-Buy-Responsive");
        },function()
        {
          $(id).find(".Button-Buy").removeClass("Button-Buy-Responsive");
      	});
		//show giảm giá
		
      //$('.Discount-Responsive').show();
    });
    //Ngược lại
    $('.Sale-Product').mouseleave(function(){
		var id= '#'+$(this).attr('id'); 
		$(id).find(".FvIcon").hide();
		$(id).stop(false,true);
		$(id).animate({bottom :'-=7px'},100);
		$(id).removeClass("Product-Hover");
		$(id).find(".Button-Buy").hide();
		
    
      //$('.Discount-Responsive').hide();
    });
  });
 