<%@page import="model.PaymentModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home | GadgetBadget</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <nav class="navbar navbar-light navbar-expand-md navigation-clean">
        <div class="container"><a class="navbar-brand" href="index.jsp"><strong>Gadget Badget</strong></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <h1 class="text-center" style="padding-top: 20px;">Find the best one!</h1>
    <div class="container" style="padding-top: 20px;">
        <div class="row">
            
            
            <%
            	//fetch all products from the cart 
            	PaymentModel paymentModel =  new PaymentModel();
            	out.print(paymentModel.fetchAllProducts());
            
            %>
            
        </div>
    </div>
    <br><br>
    
    <!-- start cart -->
    <div id="shoppingCart"> 
    <h1 class="text-center" style="padding-top: 20px;">Shopping Cart</h1>
    <div class="container" style="padding-top: 20px;">
        <div class="row">
            <div class="col-md-4 col-lg-1"></div>
            <div class="col-md-4 col-lg-10">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Item Name</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                            
							<%
								//load cart items to the page
								out.print(paymentModel.loadCartItems("U001"));
							%>
							
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-4 col-lg-1"></div>
        </div>
        <div></div>
    </div>
    <div class="container" style="width: 100%;">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 text-center">
                
				<% 
					//count total cost for cart item
					out.print(paymentModel.countTotalCart("U001")); 
				
				%>

            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
    </div>
    <!-- end cart -->
    
    
    
    <br><br><br><br><br><br>
    <div class="footer-2" style="width: 100%;">
        <div class="container">
            <div class="row">
                <div class="col-8 col-sm-6 col-md-6">
                    <p class="text-left" style="margin-top:5%;margin-bottom:3%;">© 2021 Gadget Badget</p>
                </div>
                <div class="col-12 col-sm-6 col-md-6">
                    <p class="text-right" style="margin-top:5%;margin-bottom:8%%;font-size:1em;">Designed by IT19208718 |&nbsp;S.M.H.M. Suraweera</p>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>