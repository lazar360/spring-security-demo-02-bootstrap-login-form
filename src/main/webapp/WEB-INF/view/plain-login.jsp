<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Login Page</title>

<style type="text/css">
	.failed{
		color:red;
	}

</style>

</head>
<body>
	
	<h3>My Custom Login Page</h3>

	<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
	 method="POST">

		<!-- Check for login error -->
		<c:if test="${param.error != null }">
		
			<i class="failed">Sorry ! You entered invalid username/password.</i>
		
		</c:if>

		<!-- on doit écrire username sans quoi springsecurity ne fonctionne pas -->
		<p>
			User name : <input type="text" name="username"/>
		</p>

		<!-- on doit écrire password sans quoi springsecurity ne fonctionne pas -->
		<p>
			User name : <input type="password" name="password"/>
		</p>
		
		<input type="submit" value="Login"/>

	</form:form>


</body>
</html>