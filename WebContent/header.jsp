<%-- 
    Document   : header
    Created on : Oct 10, 2019, 7:07:29 PM
    Author     : shilpa
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="header">
	<span class="signInPlaceholder"> <c:choose>
			<c:when test="${user == null}">
				<a href="login.jsp"><i class="fa fa-user"> Login</i></a>
				<a href="register.jsp">Sign Up</a>
			</c:when>
			<c:otherwise>
				<a href="logout.jsp">
				<i class="fa fa-sign-out">Logout</i>
				</a>
			</c:otherwise>
		</c:choose> 
	</span>
	<h1>
		<span class="logo"><a href="index.jsp"><img id="image1"
				src="./images/logo.jpg" alt="brand image placeholder" /></a></span> Find Your
		Doctor
	</h1>
</div>