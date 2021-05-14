$(document).ready(function()
{
 	//initially the cart section is hidden
	//$("#shoppingCart").hide();
 
});



// Insert data into cart table using ajax
$('#btnAddToCart').click(function(){
	
	
	$.ajax({
		url: "PaymentAPI",
		type: "post",
		data: {
			loggedUsername:$('#loggedUsername').val().trim(),
			productId:$('#productId').val().trim(),
			productName:$('#productName').val().trim(),
			quantity:$('#quantity').val().trim(),
			shortDescription:$('#shortDescription').val().trim(),
			productPrice:$('#productPrice').val().trim(),
		}
	});
	
	
	
	//show shopping cart div tag
	$("#shoppingCart").show();
	return;
	
	
});


//Remove item from the cart
$('#removeFromCart').click(function(){
	$.ajax(
	{
		url : "PaymentAPI",
		type : "DELETE",
		data : "cartId=" + $(this).data("cartId"),
		dataType : "text",
		
	});
	
	
	//show shopping cart div tag
	$("#shoppingCart").show();
	return;
	
	
});


