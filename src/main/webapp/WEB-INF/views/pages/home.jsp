<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>E-Bangla Home</title>
<meta charset="utf-8" />
<%@ page isELIgnored="false"%>
<link rel="shortcut icon"
	href="<spring:url value="/resources/icon/title.png"/>" />
<link rel="stylesheet"
	href="<spring:url value="/resources/assets/css/main.css" />">
<!-- Scripts -->
<script src="<spring:url value="/resources/assets/js/jquery.min.js" />"></script>
<script src="<spring:url value="/resources/assets/js/browser.min.js" />"></script>
<script
	src="<spring:url value="/resources/assets/js/breakpoints.min.js" />"></script>
<script src="<spring:url value="/resources/assets/js/util.js" />"></script>
<script src="<spring:url value="/resources/assets/js/main.js" />"></script>
<script
	src="<spring:url value="/resources/js/ajaxLoginRegistration.js" />"></script>

<link rel="stylesheet"
	href="<spring:url value="/resources/css/bootstrap.css"/> " />
<link rel="stylesheet"
	href="<spring:url value="/resources/css/style.css"/> " />
<script src="<spring:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<spring:url value="/resources/js/move-top.js" />"></script>
<script src="<spring:url value="/resources/js/easing.js" />"></script>
<link rel="stylesheet"
	href="<spring:url value="/resources/css/font-awesome.css"/> " />
<script src="<spring:url value="/resources/js/jstarbox.js" />"></script>
<link rel="stylesheet"
	href="<spring:url value="/resources/css/jstarbox.css"/> " />

<link href='//fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700'
	rel='stylesheet' type='text/css'>

</head>
<body>
	<div class="header">
		<div class="container">
			<div class="logo">
				<h1>
					<a href="index.html"><b>T<br>H<br>E
					</b>E-Bangla<span>The Best Supermarket</span></a>
				</h1>
			</div>
			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="icon facebook"><i
							class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i
							class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i
							class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon dribbble"><i
							class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>
			</div>


			<div class="nav-top">
				<nav class="navbar navbar-default">

					<div class="navbar-header nav_2">
						<button type="button"
							class="navbar-toggle collapsed navbar-toggle1"
							data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
				</nav>
			</div>

		</div>
	</div>
	<script>
		window.jQuery
				|| document
						.write(
								'<script src="js/vendor/jquery-1.11.1.min.js"><\/script>')
	</script>
	<script src="js/jquery.vide.min.js"></script>
	<div class="content-top ">
		<div class="container ">
			<div class="tab-head ">
				<nav class="nav-sidebar">
					</span><span id="emty" style="color: red">${emptyBookField}</span>
					<ul class="nav tabs ">
						<input type="text" id="book_name" required="required"
							name="book_name" class="string optional" placeholder="Book Name">
						<input type="text" id="book_description" required="required"
							name="book_description" class="string optional"
							placeholder="Book Description">
						<input type="text" id="book_category" required="required"
							name="book_category" class="string optional"
							placeholder="Book Category">
						<input type="text" required="required" name="book_pdfname"
							placeholder="Book pdf name" class="form-control input-lg"
							id="book_pdfname">
						<input type="file" required="required" name="book_coverimage"
							placeholder="Book Cover image" class="form-control input-lg"
							id="book_coverimage">
						<br></br>
						<button onclick="saveBook();" class="sumbit" name="sumbit">Insert
							Book</button>
						<li class="">
							<form id="fetchBook" role="form" ModelAttribute="Book"
								action="listOfBooks" method="get">
								<button class="sumbit" name="sumbit">Show Book Detail</button>
							</form>
						</li>
					</ul>
					<table border="1">
						<th>Sr No</th>
						<th>Title</th>
						<th>Description</th>
						<th>Pdf Name</th>
						<th>Category</th>
						<th>Cart</th>
						<c:forEach var="emp" items="${books}" varStatus="status">
							<tr>
								<td>${status.index + 1}</td>
								<td>${emp.title}</td>
								<td>${emp.description}</td>
								<td>${emp.pdfname}</td>
								<td>${emp.category}</td>
								<td><button onclick="addToCart();" class="sumbit"
										name="sumbit">Add To Cart</button></td>
							</tr>
						</c:forEach>
					</table>
					<br></br> <br></br>
					<ul class="nav tabs ">
						<form id="searchBook" role="form" ModelAttribute="Book"
							action="searchBook" method="get">
							<input type="text" id="book_search" required="required"
								name="book_search" class="string optional"
								placeholder="Search book by title"> <br></br>
							<button class="sumbit" name="sumbit">Search
								Book</button>
						</form>
					</ul>
					<table border="1">
						<th>Sr No</th>
						<th>Title</th>
						<th>Description</th>
						<th>Pdf Name</th>
						<th>Category</th>
						<c:forEach var="emp" items="${bookSearch}" varStatus="status">
							<tr>
								<td>${status.index + 1}</td>
								<td>${emp.title}</td>
								<td>${emp.description}</td>
								<td>${emp.pdfname}</td>
								<td>${emp.category}</td>
							</tr>
						</c:forEach>
					</table>
				</nav>
				<%-- <div class=" tab-content tab-content-t ">
					<div class="tab-pane active text-style" id="tab1">
						<div class=" con-w3l">
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal1"
										class="offer-img"> <img
										src="<spring:url value="/resources/images/of.png"/>"
										class="img-responsive" alt="" />
										<div class="offer">
											<p>
												<span>Offer</span>
											</p>
										</div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>
												<a href="single.html">Moong</a>(1 kg)
											</h6>
										</div>
										<div class="mid-2">
											<p>
												<label>$2.00</label><em class="item_price">$1.50</em>
											</p>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="add">
											<button class="btn btn-danger my-cart-btn my-cart-b "
												data-id="1" data-name="Moong" data-summary="summary 1"
												data-price="1.50" data-quantity="1"
												data-image="images/of.png">Add to Cart</button>
										</div>

									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal2"
										class="offer-img"> <img
										src="<spring:url value="/resources/images/of1.png"/>"
										class="img-responsive" alt="" />
										<div class="offer">
											<p>
												<span>Offer</span>
											</p>
										</div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>
												<a href="single.html">Sunflower Oil</a>(5 kg)
											</h6>
										</div>
										<div class="mid-2">
											<p>
												<label>$10.00</label><em class="item_price">$9.00</em>
											</p>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="add">
											<button class="btn btn-danger my-cart-btn my-cart-b"
												data-id="2" data-name="Sunflower Oil"
												data-summary="summary 2" data-price="9.00" data-quantity="1"
												data-image="images/of1.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal3"
										class="offer-img"> <img
										src="<spring:url value="/resources/images/of2.png"/>"
										class="img-responsive" alt="" />
										<div class="offer">
											<p>
												<span>Offer</span>
											</p>
										</div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>
												<a href="single.html">Kabuli Chana</a>(1 kg)
											</h6>
										</div>
										<div class="mid-2">
											<p>
												<label>$3.00</label><em class="item_price">$2.00</em>
											</p>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="add">
											<button class="btn btn-danger my-cart-btn my-cart-b"
												data-id="3" data-name="Kabuli Chana"
												data-summary="summary 3" data-price="2.00" data-quantity="1"
												data-image="images/of2.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal4"
										class="offer-img"> <img
										src="<spring:url value="/resources/images/of3.png"/>"
										class="img-responsive" alt="" />
										<div class="offer">
											<p>
												<span>Offer</span>
											</p>
										</div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6>
												<a href="single.html">Soya Chunks</a>(1 kg)
											</h6>
										</div>
										<div class="mid-2">
											<p>
												<label>$4.00</label><em class="item_price">$3.50</em>
											</p>
											<div class="block">
												<div class="starbox small ghosting"></div>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="add">
											<button class="btn btn-danger my-cart-btn my-cart-b"
												data-id="4" data-name="Soya Chunks" data-summary="summary 4"
												data-price="3.50" data-quantity="1"
												data-image="images/of3.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div> --%>
			</div>

		</div>
	</div>
	<br></br>
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="clearfix"></div>
			<div class="copy-right">
				<p>
					&copy; 2019 E-Bangla. All Rights Reserved | Designed by <a
						href="https://github.com/javaspecial/ebangla"> Md.Shadath</a>
				</p>
			</div>
		</div>
	</div>
	<!-- //footer-->
</body>
</html>