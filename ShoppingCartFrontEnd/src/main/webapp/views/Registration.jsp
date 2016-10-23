<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Registration</title>
</head>
<body >



${RegisterMsg}
	<form:form action="register"  method="post" commandName="userDetails" >
					
					<table>
						<tr>
                <td>Id *</td>
                <td><form:input path="id" /></td>
                <td><form:errors path="id" class="error-message" /></td>
            </tr>
								<tr>
                <td>Name *</td>
                <td><form:input path="name" /></td>
                <td><form:errors path="name" class="error-message" /></td>
            </tr>
					<tr>
                <td>Password *</td>
                <td><form:input path="password" /></td>
                <td><form:errors path="password" class="error-message" /></td>
            </tr>
						
								<tr>
                <td>Mail *</td>
                <td><form:input path="mail" /></td>
                <td><form:errors path="mail" class="error-message" /></td>
            </tr>
							
							<tr>
                <td>Contact*</td>
                <td><form:input path="contact" /></td>
                <td><form:errors path="contact" class="error-message" /></td>
            </tr>
						<tr>
                <td>Address *</td>
                <td><form:input path="address" /></td>
                <td><form:errors path="address" class="error-message" /></td>
            </tr>
							
                <td>&nbsp;</td>
                <td><input type="submit" value="Submit" /> <input type="reset"
                    value="Reset" /></td>
            </tr>
					
	</table>					
</form:form>

	
</body>
</html>