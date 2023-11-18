<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<%@pageimport="java.io.*,java.util.*,java.sql.*"%>

<%@pageimport="javax.servlet.http.*,javax.servlet.*"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/core"prefix="c"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/sql"prefix="sql"%>

<!DOCTYPEhtml>

<html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8"><title>Update Railway Crossing</title></head>

<body>

<h2>Update Railway Crossing</h2>

<sql:setDataSourcevar="snapshot"driver="com.mysql.jdbc.Driver"

url="jdbc:mysql://localhost:3306/railway"user="root"password="Anusha@2000 " />

<c:iftest="${not empty param.id}">

<sql:querydataSource="${snapshot}"var="result"> SELECT * FROM adminhome WHERE id = ?

<sql:paramvalue="${param.id}"/>

</sql:query>



<c:iftest="${not empty result.rows}">

<c:forEachvar="row"items="${result.rows}">

<formaction="updateProcess.jsp"method="POST">

<inputtype="hidden"name="id"value="${row.id}"/>

<table>

<tr>

<td>Name:</td>

<td><inputtype="text"name="Name"value="${row.Name}"required></td>

</tr>

<tr>

<td>Address:</td>

<td><inputtype="text"name="Address"value="${row.Address}"required></td></tr>

<tr>

<td>Landmark:</td>

<td><inputtype="text"name="Landmark"value="${row.Landmark}"

required></td>

</tr>

<tr>

<td>Time Schedule:</td>

<td><inputtype="time"name="Trainschedule"value="${row.Trainschedule}"required></td>

</tr>

<tr>

<td>Person In-Charge:</td>

<td><inputtype="text"name="pname"value="${row.pname}"required></td>

</tr>

<tr>

<td>Status:</td>

<td>

<inputtype="radio"name="status"value="open" ${row.status == 'open' ? 'checked' : ''} required> Open

<inputtype="radio"name="status"value="closed" ${row.status == 'closed' ? 'checked' : ''} required> Closed

</td>

</tr>

<tr>

<td><inputtype="submit"value="Update Crossing"></td>

</tr>

</table>

</form>

</c:forEach>

</c:if>

</c:if>

</body>

</html>

