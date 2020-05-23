<!DOCTYPE html>
<html lang="en">
<head>
<title>Find Your Doctor</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

</head>
<body>

	<div class="fullHeight">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="navigation.jsp"></jsp:include>
		<div class="row fullHeight">

			<div class="searchform card shadow p-3 mb-5 bg-white rounded"
				style="margin-left: 35%; margin-top: 5%; height: 20rem; width: 30rem;">
				<div class="card-header">
					<h2 align="center">Login</h2>
				</div>
				<div align="center">
					<form class="loginForm" action="login" method="post">
						<br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email:<input
							type="email" name="email" required> <br> <br>Password:<input
							type="password" name="password" required /><br> <br> <input
							type="submit" value="Login" style="margin-left: 10%"
							class="btn btn-info" /> <br> <span style="margin-left: 10%">New
							User? <a href="register.jsp">Register</a>
						</span>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>