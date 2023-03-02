$(document).ready(function(){
	$('.btn-delele-product').on('click',function(){
		var name=$(this).siblings(".name-product").text();
		if(confirm("Bạn có muốn xóa "+name+" khỏi danh sách sản phẩm không? Thao tác này sẽ không thể khôi phục lại được!!!") == true){
			$(this).siblings(".form-delete-product").submit();
            }
	})
})

$(document).ready(function(){
	$('.btn-delele-bill').on('click',function(){
		var name=$(this).siblings(".id-bill").text();
		if(confirm("Bạn có muốn xóa "+name+" khỏi danh sách bill không? Điều này sẽ xóa tất cả các chi tiết bill thuộc bill này!!!") == true){
			
			$(this).siblings(".form-delete-bill").submit();
            }
	})
})
$(document).ready(function(){
	$('.btn-delele-category').on('click',function(){
		console.log(123);
		var name=$(this).siblings(".name-category").text();
		if(confirm("Bạn có muốn xóa "+name+" khỏi danh sách loại đồng hồ không?" +
				" Việc này sẽ làm xóa hết các sản phẩm thuộc thương hiệu này." +
				" Bạn có chắc chắn muốn xóa không?? Thao tác này sẽ không thể khôi phục lại được!!!") == true){
			
			$(this).siblings(".form-delete-category").submit();
            }
	})
})
$(document).ready(function(){
	$('.btn-delele-detailBill').on('click',function(){
		console.log(123);
		var name=$(this).siblings(".id-detailBill").text();
		if(confirm("Bạn có muốn xóa "+name+" khỏi danh sách chi tiết bill không. Thao tác này sẽ không thể khôi phục lại được!!!") == true){
			
			$(this).siblings(".form-delete-detailBill").submit();
            }
	})
})