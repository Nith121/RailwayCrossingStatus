<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">

<title>User Login</title>

</head>

<body>

<divalign=center>

<h2>User Login</h2>

<formaction="Login"method="POST">

<table>

<tr><td>Name: </td><td><inputtype="text"name="uname"

placeholder="UserName"required></td></tr>

<tr><td>Password: </td><td><inputtype="password"name="password"

placeholder="password"required></td></tr><br><br>

<tr><td><inputtype="submit"value="Login"><br><br><br>Don't have an

account? <ahref="Registration.jsp">Go to Register</a></td></tr>

<tr><td><ahref="index.jsp">Back<a></td></tr>

</table>

</form>

</div>

</body>

</html>

