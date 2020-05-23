<%-- 
    Document   : navigation
    Created on : Oct 10, 2019, 7:07:45 PM
    Author     : shilpa
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="topnav">

	<div class="center">
		<c:choose>
			<c:when test="${user != null}">
				<a href="userDashboard.jsp">Dashboard</i></a>
			</c:when>
		</c:choose>
		<a href="index.jsp"> <i class="fa fa-home"> Home</i>
		</a> <a href="DoctorSearch.jsp"> <i class="fa fa-stethoscope">
				Find a Doctor</i></a> <a href="insuranceFinder.jsp"> <i
			class="fa fa-search"> Insurance Helper</i></a> <a href="about.jsp">
			About
		</a>
		 <a href="contact.jsp"> <i class="fa fa-mobile-phone"> Contact
				Us</i></a>
	</div>


	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Navbar w/ text</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Features</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
			</ul>
			<span class="navbar-text"> Navbar text with an inline element
			</span>
		</div>
	</nav>

</div>
