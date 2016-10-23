<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Login</title>
</head>
<body>
	${LoginMsg}<br><br>
		<form:form action="login" commandName="userDetails" method="post">
		<table>

			<tr>
                    <td>Id *</td>
                    <td><input name="id" /></td>
                </tr>
			
			<tr>
                    <td>Password *</td>
                    <td><input name="password" /></td>
                </tr>
	
	 <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" value="Login" /> <input type="reset"
                        value="Reset" /></td>
                </tr>
                </table>
</form:form>
</body>
</html>