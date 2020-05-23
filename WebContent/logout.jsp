<%-- 
    Document   : about
    Created on : Oct 10, 2019, 8:37:18 PM
    Author     : shilpa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles.css">
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="footer.jsp"></jsp:include>
	<%
		session.invalidate();
		response.sendRedirect("index.jsp");
	%>
</body>
</html>
