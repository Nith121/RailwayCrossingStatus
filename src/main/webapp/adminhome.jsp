<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<%@pageimport = "java.io.*,java.util.*,java.sql.*"%>

<%@pageimport = "javax.servlet.http.*,javax.servlet.*"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/core"prefix = "c"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/sql"prefix = "sql"%>

<!DOCTYPEhtml>

<html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">

<title>Admin Home</title>

</head>

<body>

<h2>Admin Home</h2>

<ahref="adminhome.jsp">Home</a><br>

<ahref="addrail.jsp">Add Railway Crossing</a><br>

<ahref="search.jsp">Search Crossing</a><br><br>

<sql:setDataSourcevar = "snapshot"driver = "com.mysql.jdbc.Driver"

url = "jdbc:mysql://localhost:3306/railway"

user = "root"password = "Anusha@2000"/>

<sql:querydataSource="${snapshot}"var="result"> SELECT * from adminhome;

</sql:query>

<tableborder="1"width="100%">

<tr>

<th>Sr.No</th>

<th>Name</th>

<th>Address</th>

<th>Landmark</th>

<th>Time Schedule</th>

<th>Person In-Charge</th>

<th>Status</th>

<th>Action</th>

</tr>

<c:forEachvar="row"items="${result.rows}"><tr>

<td><c:outvalue="${row.id}"/></td>

<td><c:outvalue="${row.Name}"/></td>

<td><c:outvalue="${row.Address}"/></td>

<td><c:outvalue="${row.Landmark}"/></td>

<td><c:outvalue="${row.Trainschedule}"/></td>

<td><c:outvalue="${row.pname}"/></td>

<td><c:outvalue="${row.status}"/></td>

<td>

<!-- Action buttons for each row -->

<formaction="update.jsp"method="GET">

<inputtype="hidden"name="id"value="${row.id}"/><inputtype="submit"value="Update"/></form>

<formaction="delete.jsp"method="POST">

<inputtype="hidden"name="id"value="${row.id}"/><inputtype="submit"value="Delete"/>

</form>

</td>

</tr>

</c:forEach>

</table>

</body>

</html>


