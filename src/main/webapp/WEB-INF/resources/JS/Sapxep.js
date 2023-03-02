
$(document).ready(
    function(){
        var name_array = [];
        var index;
        var value=1;
        $("#Init-Value").addClass('selected');
        $(".list-unstyled").on("click", ".init", function() {
            $(this).closest(".list-unstyled").children('li:not(.init)').toggle();
        });
        var allOptions = $(".list-unstyled").children('li:not(.init)');
        $(".list-unstyled").on("click", "li:not(.init)", function() {
            allOptions.removeClass('selected');
            $(this).addClass('selected');
            $(".list-unstyled").children('.init').html($(this).html());  
            allOptions.toggle();   
            value=$(this) .val();
            if(value==2)
            {  
                for(index=0;index<=23;index++)
                {   var number=index+1;
                    var id="#sanPham"+number;
                    var text=$(id).detach();
                    name_array.push(text); 
                }
                var text1='',text2='',text3='';
                for(index=0;index<24;index++)
                {
                    var index_class=index+1;
                    var Phantu="."+index_class;
                    if(0<=index<=11)
                    {
                        $(Phantu).html(name_array[index]);

                    }
                    else if(12<=index<20)
                    {
                        $(Phantu).html(name_array[index]);

                    }
                    else
                    {
                        $(Phantu).html(name_array[index]);

                    }
                    
                }
            }
            else if(value==3)
            {
                for(index=0;index<=23;index++)
                {   var number=index+1;
                    var id="#sanPham"+number;
                    var text=$(id).detach();
                    name_array.push(text); 
                }
                var text1='',text2='',text3='';
                var index_class=1;
                for(index=23;index>=0;index--)
                {
                    var Phantu="."+index_class;
                    if(23>=index>11)
                    {
                        $(Phantu).html(name_array[index]);
                    }
                    else if(11>=index>3)
                    {
                        $(Phantu).html(name_array[index]);
                    }
                    else
                    {
                        $(Phantu).html(name_array[index]);
                    }
                    index_class++;
                    
                }
            }
            else
            {   for(index=0;index<=23;index++)
                {   var number=index+1;
                    var id="#sanPham"+number;
                    var text=$(id).detach();
                    name_array.push(text); 
                }
                var index_Array = [9,3,5,8,4,2,6,1,7,11,12,10,17,14,15,13,16,18,23,24,20,19,21,22];
                var text1='',text2='',text3='';
                var index_class=1;
                for(index=0;index<24;index++)
                {
                    var Phantu="."+index_class;
                    if(1<=index_class<=12)
                    {
                        $(Phantu).html(name_array[index_Array[index]-1]);

                    }
                    else if(13<=index_class<19)
                    {
                        $(Phantu).html(name_array[index_Array[index]-1]);
                    }
                    else
                    {
                        $(Phantu).html(name_array[index_Array[index]-1]);
                    }
                    index_class++;
                    
                }
            }
             
        });
    });