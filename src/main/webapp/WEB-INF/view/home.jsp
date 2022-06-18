<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>MSS Company Home Page</title>
</head>

<body>
	<h2>MSS Company Home Page</h2>
	<hr>
	
	<p>
	Welcome to the MSS company home page!
	</p>
	
	<h4>Current user and role</h4>
	<hr>
		UserName : <security:authentication property="principal.username" />
		<br><br>
		User Role : <security:authentication property="principal.authorities" />
		
		<security:authorize access="hasRole('MANAGER')">
		
		
			<!-- add link for leader -->
				<p>
					<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
					(Only for Manager peeps)
				</p>
		
		</security:authorize>
		
		
		
		
		<security:authorize access="hasRole('ADMIN')">
		
		
		<!-- add link for IT System -->
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT systems Meeting</a>
			(Only for IT systems Meeting peeps)
		</p>
		
		</security:authorize>
		
		
		
		
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
	
</body>

</html>









