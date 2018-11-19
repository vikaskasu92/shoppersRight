<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <!DOCTYPE HTML>
<html class='defaultFont'>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="/onlineShopping/resources/styles/bootstrap.min.css">
    <link rel="stylesheet" href="/onlineShopping/resources/styles/bootstrap-theme.min.css">
	<link rel="stylesheet" href="/onlineShopping/resources/styles/shoppersRight.css">
</head>
<body class='aliceBlue' ng-app="shoppersRight">
<div id="pageContent" class="container pageStyling" ng-controller="shoppersRightController">
		<!-- Header -->
		<div class="row headerShadow headerBottomSpace">
			<div class="col-md-10">
				<h3>Shoppers Right</h3>
			</div>
			<div class="col-md-2 marginTop10">
				<button type="button" id="logout" ng-click="logout()" class="ng-hide btn btn-default btn-sm">
		          <span class="glyphicon glyphicon-log-out"></span> Logout
		        </button>
			</div>
		</div>
		
		<!-- Login -->
		<c:if test="${displayType == 'newLogin'}">
			<div id="loginDiv" >
				<form class="bodyContentSpace" name="loginForm">
					<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">Username :</label>
							</div>
			    			<div class="col-md-3">
								<input type="text" class="form-control" id="loginusername" ng-model="username" name="username"  placeholder="Username" required/>
			    			</div>
			    		</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="password">Password :</label>
							</div>
			    			<div class="col-md-3">
								<input type="password" class="form-control"  id="loginpassword" ng-model="password" name="password" placeholder="Password" required/>
							</div>
			    		</div>
					</div>
					<div class="row">
						<div class="col-md-5">
						
						</div>
						<div class="col-md-6">
							<div class="row">
								<div class="col-md-1 buttonSpaceRight">
									<input type="button" class="brn btn-primary" id="login" ng-click="loginsubmit(username,password)" value="Login"/>
								</div>
								<div class="col-md-6 newUserHyperLink">
									<a id="newUser" href="#" data-toggle="modal" data-target="#createNewUser">New User ?</a>
								</div>
							</div>
						</div>
					</div>
					
						<h3></h3>
					
				</form>
			</div>
			
			
			<!-- Invalid Login -->
			<c:if test="${credentialError == true}">
				<div class="modal fade" id="createNewUser" role="dialog" >
					<div class="modal-dialog">
					      <!-- Modal content-->
					   <div class="modal-content modalWidth">
						    <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal">&times;</button>
						        <h4 class="modal-title">Invalid Credentials</h4>
						    </div>
						    <div class="modal-body">
						    	Please Enter Valid Credentials
						    </div>
							<div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Ok</button>
						    </div>
					   </div>
					</div>
				</div>
			</c:if>
		
			<div class="modal fade" id="createNewUser" role="dialog" >
			    <div class="modal-dialog">
			      <!-- Modal content-->
			    <div class="modal-content modalWidth">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Modal Header</h4>
			      </div>
			      <div class="modal-body">
			      <div class="row">
			      	<div class="col-md-5">
			      		<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">First Name: </label>
							</div>
			    			<div class="col-md-7">
								<input type="text" class="form-control" id="firstName" ng-model="firstName" name="firstName"  placeholder="First Name" required/>
							</div>
			    		</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">Last Name: </label>
							</div>
			    			<div class="col-md-7">
								<input type="text" class="form-control" id="lastName" ng-model="lastName" name="lastName"  placeholder="Last Name" required/>
							</div>
			    		</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">Email: <span class="glyphicon glyphicon-envelope"></span></label>
							</div>
			    			<div class="col-md-7">
								<input type="text" class="form-control" id="email" ng-model="email" name="email"  placeholder="Email" required/>
							</div>
			    		</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">Address Line 1:</label>
							</div>
			    			<div class="col-md-7">
								<input type="text" class="form-control" id="addLine1" ng-model="addLine1" name="addLine1"  placeholder="Address Line 1" required/>
							</div>
			    		</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">Address Line 2:</label>
							</div>
			    			<div class="col-md-7">
								<input type="text" class="form-control" id="addLine2" ng-model="addLine2" name="addLine2"  placeholder="Address Line 2"/>
			    			</div>
			    		</div>
					</div>
			      	</div>
			      	<div class="col-md-7">
			      		<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">Username: </label>
							</div>
			    			<div class="col-md-7">
								<input type="text" class="form-control" id="registerUsername" ng-model="username" name="username"  placeholder="Username" required/>
							</div>
			    		</div>
					</div>
			      		<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">Password: <span class="glyphicon glyphicon-asterisk"></span></label>
							</div>
			    			<div class="col-md-7">
								<input type="password" class="form-control" id="registerPassword" ng-model="password" name="password"  placeholder="Password"/>
							</div>
			    		</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">Confirm Password: <span class="glyphicon glyphicon-asterisk"></span></label>
							</div>
			    			<div class="col-md-7">
								<input type="password" class="form-control" id="confirmPassword" ng-model="confirmPassword" name="confirmPassword"  placeholder="Confirm Password" required/>
			    			</div>
			    		</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">City:</label>
							</div>
			    			<div class="col-md-7">
								<input type="text" class="form-control" id="city" ng-model="city" name="city"  placeholder="City" required/>
							</div>
			    		</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">State:</label>
							</div>
			    			<div class="col-md-7">
								<input type="text" class="form-control" id="state" ng-model="state" name="state"  placeholder="State" required/>
							</div>
			    		</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-5 labelAlign">
								<label for="username">Zip:</label>
							</div>
			    			<div class="col-md-7">
								<input type="text" class="form-control" id="zipcode" ng-model="zipcode" name="zipcode"  placeholder="Zip" required/>
							</div>
			    		</div>
					</div>
			      	</div>
			      </div>
			      <div class="row">
			      	<div class="col-md-offset-4 col-md-12">
			      		<label class="radio-inline"><input type="radio" name="buySellCategory" ng-model="userType" value="Buyer" checked="true">Buyer</label>
			      		<label class="radio-inline"><input type="radio" name="buySellCategory" ng-model="userType" value="Seller" >Seller</label>
			      	</div>
			      </div>
				
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-primary" data-dismiss="modal" ng-click="register(firstName,lastName,email,addLine1,addLine2,username,password,confirmPassword,city,state,zipcode)">Register</button>
			        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
			      </div>
			    </div>
			  </div>
			</div>
		</c:if>
		
		<!-- Buyer Div  -->
		 <c:if test="${displayType == 'buyer'}">
			<div id="buyerDiv" class="minHeight200 row">
				<div class="col-md-offset-2 col-md-3">
					<div class="form-group">
					  <select class="form-control" id="categorySelection">
					    <option>Category</option>
					    <option id="books" value="books">Books</option>
					    <option id="clothing" value="clothing">Clothing</option>
					    <option id="electronics" value="electronics">Electronics</option>
					    <option id="sports" value="sports">Sports</option>
					  </select>
					</div>
				</div>
				<div class="col-md-4">
					<input type="text" class="form-control" placeholder="Search.." />
				</div>
				<div class="col-md-3">
					<button type="button" class="btn btn-primary" id="go" ng-click="seachDB()">  Go  </button>
				</div>
			</div>
		</c:if>
		
		<!-- SellerDiv -->
		 <c:if test="${displayType == 'seller'}">
			<div id="sellerDiv" class="">
				<h3>Seller Page</h3>
					<ul class="nav nav-tabs">
					    <li id="productListTabId" class="active"><a  ng-click="navigateToProductList()">List New Product</a></li>
					    <li id="productTabId"><a ng-click="navigateToProducts()">Products</a></li>
				 	</ul>
				 	<div id="listNewProductDiv">
				 		<form class="bodyContentSpace" name="sellerForm">
						 	<div class="margin20">
							 	<div class="form-group">
									<div class="row">
										<div class="col-md-3 labelAlign">
											<label for="username">Product Name: </label>
										</div>
							   			<div class="col-md-4">
											<input type="text" class="form-control" id="productName" ng-model="productName" name="productName"  placeholder="Product Name"/>
							   			</div>
							   		</div>
								</div>
							    <div class="form-group">
						 			<div class="row">
										<div class="col-md-3 labelAlign">
											<label for="username">Image: </label>
										</div>
							   			<div class="col-md-4">
											<input type="text" class="form-control" id="productImage" ng-model="productImage" name="productImage"  placeholder="Image"/>
							   			</div>
							   			<div class="col-md-5">
							   				<button class="btn btn-default" id="uploadImage" name="uploadImage"><span class="glyphicon glyphicon-upload"></span></button>
							   			</div>
							   		</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-3 labelAlign">
											<label for="username">Member Cost: <span class="glyphicon glyphicon-usd"></span></label>
										</div>
							   			<div class="col-md-4">
											<input type="text" class="form-control" id="memberCost" ng-model="memberCost" name="memberCost"  placeholder="Member Cost"/>
							   			</div>
							   		</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-3 labelAlign">
											<label for="username">Non Member Cost: <span class="glyphicon glyphicon-usd"></span></label>
										</div>
							   			<div class="col-md-4">
											<input type="text" class="form-control" id="nonMemberCost" ng-model="nonMemberCost" name="nonMemberCost"  placeholder="Non Member Cost"/>
							   			</div>
							   		</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-3 labelAlign">
											<label for="username">Item Number:</label>
										</div>
							   			<div class="col-md-4">
											<input type="text" class="form-control" id="itemNumber" ng-model="itemNumber" name="itemNumber"  placeholder="Item Number"/>
							   			</div>
							   		</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-3 labelAlign">
											<label for="username">Stock Available:</label>
										</div>
							   			<div class="col-md-4">
											<input type="text" class="form-control" id="stockAvailable" ng-model="stockAvailable" name="stockAvailable"  placeholder="Stock Available"/>
							   			</div>
							   		</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-3 labelAlign">
											<label for="username">Ships Within:</label>
										</div>
							   			<div class="col-md-4">
											<input type="text" class="form-control" id="shipsWithin" ng-model="shipsWithin" name="shipsWithin"  placeholder="Ships Within"/>
							   			</div>
							   		</div>
								</div>
						 	</div>
						 	<div class="row">
						 		<div class="col-md-offset-4 col-md-8">
						 			<input type="button" id="addNewProductToDB" class="btn btn-primary" value="  Submit  " ngclick="addNewProductToDB(productName,productImage,memberCost,nonMemberCost,itemNumber,stockAvailable,shipsWithin)"/>
						 		</div>
						 	</div>
					 	</form>
				 	</div>
				 	<div id="productsDiv" class="ng-hide">
				 		<h3>Products will be displayed here!</h3>
				 	</div>
				</div>
			</c:if>
		
		<!-- Footer Div -->
		
		<div class="row footerMargin">
			<div>
				<span class="glyphicon glyphicon-copyright-mark"></span>
			</div>
			<div class="footerLogo">
				<span>shoppersRight</span>
			</div>
		</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="/onlineShopping/resources/scripts/angular.min.js"></script>
	<script src="/onlineShopping/resources/scripts/angular-route.min.js"></script>
	<script src="/onlineShopping/resources/scripts/shoppersRight.js"></script>
</div>
</body>
</html>
