<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">

<title>Register form</title>

</head>

<body>

<formaction="Register"method="post"><divalign=center>

<h3>User Registration</h3>

<table>

<tr><td>Name: </td><td><inputtype="text"name="uname"

placeholder="UserName"required></td></tr>

<tr><td>Email: </td><td><inputtype="text"name="email"placeholder="Email"required></td></tr>

<tr><td>Password: </td><td><inputtype="password"name="password"

placeholder="password"required></td></tr><br><br>

<tr><td></td><td><inputtype="submit"value="register"><br><br>Already

Registered?<ahref="login.jsp">Go to login</a></td></tr>

</table>

</div>

</form>

</body>

</html>
