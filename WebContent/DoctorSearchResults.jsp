<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Speed Wheels - Spot the Difference</title>
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
			<div class="searchform" style="margin-left: 25%; width: 40%;">
				<h2 style="margin-left: 10%;" align="center">List of Doctors</h2>
				<form action="scheduleAvailable" method="get">
					<table border="1" class="table table-hover">
						<thead class="table-secondary">
							<tr>
								<th>#</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Contact</th>
								<th>Specialization</th>
								<th>Created At</th>
								<th>Location</th>
								<th></th>
							</tr>
						</thead>
						<c:if test="${empty list}">
							<tr>
							<td colspan="9" align="center">Oops! No result found!</td>
							</tr>
						</c:if>

						<c:forEach var="item" items="${list}">
							<tr>
								<td><c:out value="${item.getId()}" /></td>
								<td><c:out value="${item.getFirstName()}" /></td>
								<td><c:out value="${item.getLastName()}" /></td>
								<td><c:out value="${item.getEmail()}" /></td>
								<td><c:out value="${item.getContact()}" /></td>
								<td><c:out value="${item.getSpecialization()}" /></td>
								<td><c:out value="${item.getCreatedAt()}" /></td>
								<td><c:out value="${item.getLocation()}" /></td>
								<td><button class="btn btn-info" type="submit"
										value="${item.getId()}" name="availability">Schedule</button></td>
							</tr>
						</c:forEach>


					</table>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>