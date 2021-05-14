$(document).ready(function()
{
 	//initially the cart section is hidden
	$("#shoppingCart").hide();
 
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
$(document).on("click", "#removeFromCart", function(event)
{
	 $.ajax(
	 {
		url : "PaymentAPI",
		type : "DELETE",
		data : "cartID=" + $(this).data("cartId"),
		dataType : "text",
		 complete : function(response, status)
		 {
		 	
		 }
	 });

	//show shopping cart div tag
	$("#shoppingCart").show();
	return;

	
});


//Update cart quantity
$(document).on("click", ".updateCartQuantity", function(event) 
		{     
	$("#updateCartQuantity").val($(this).closest("tr").find('#updateCartQuantity').val());     
	$("#productNameInCart").val($(this).closest("tr").find('td:eq(0)').text());    
	$("#quantityInCart").val($(this).closest("tr").find('td:eq(1)').text());     
	$("#productPriceInCart").val($(this).closest("tr").find('td:eq(2)').text());     
	$("#cartId").val($(this).closest("tr").find('td:eq(3)').text()); 
	

});

