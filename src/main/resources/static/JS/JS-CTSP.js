$(document).ready(
   
    function(){
      $('.img-zoom').elevateZoom(
        {
            zoomWindowWidth:300,
            zoomWindowHeight:400
        }
      ); 
      $('.Title-Tescription').click(function(){
          //tìm id của khối mô tả được rê chuột vào
          var id= '#'+$(this).attr('id');
          $(id).siblings("ul").slideToggle();
          
      });
      $(".thumb-image").click(function()
      {
        var id= '#'+$(this).attr('id');
        var img=$(id).find("img").attr('src');
        $(".flexslider").find("img").attr('src',img);
        $('.img-zoom').elevateZoom(
          {
              zoomWindowWidth:300,
              zoomWindowHeight:400
          }
        ); 

      })

    });
