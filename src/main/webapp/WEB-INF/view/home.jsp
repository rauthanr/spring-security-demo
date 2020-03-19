<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
	<title>Ravio Company Home Page</title>
</head>

<body>
	<h2>Ravio Company Home Page</h2>
	<hr>
	<p>
		Welcome to the Ravio company home page!
	</p>
	<hr>
		User:<security:authentication property="principal.username" />
		<br><br>
		Roles:<security:authentication property="principal.authorities" />
	<hr>
	
	<security:authorize access="hasRole('MANAGER')">
		<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
	
	</security:authorize>
	<hr>
	
	<hr>
	<security:authorize access="hasRole('ADMIN')">
		<a href="${pageContext.request.contextPath}/systems">For Admin Purpose</a>
	</security:authorize>
	
	<hr>
	<form:form action="${pageContext.request.contextPath}/logout" 
							   method="POST">
							   
		<input type="submit" value="logout" />
	</form:form>
</body>

</html>