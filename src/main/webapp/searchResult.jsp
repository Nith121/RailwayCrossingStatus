<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<%@pageimport="java.io.*, java.util.*, java.sql.*"%><%@pageimport="javax.servlet.http.*, javax.servlet.*"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/core"prefix="c"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/sql"prefix="sql"%>

<!DOCTYPEhtml>

<html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">

<title>Search Results</title>

</head>

<body>

<h2>Search Results</h2>

<sql:setDataSourcevar="snapshot"driver="com.mysql.cj.jdbc.Driver"

url="jdbc:mysql://localhost:3306/railway"user="root"password="Anusha@2000" />

<c:setvar="keyword"value="${param.keyword}"/><sql:querydataSource="${snapshot}"var="result"> SELECT * FROM adminhome

WHERE Name LIKE CONCAT('%', ?, '%') OR Address LIKE CONCAT('%', ?, '%')

<sql:paramvalue="${keyword}"/>

<sql:paramvalue="${keyword}"/>

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

</tr>

<c:forEachvar="row"items="${result.rows}"><tr>

<td><c:outvalue="${row.id}"/></td>

<td><c:outvalue="${row.Name}"/></td>

<td><c:outvalue="${row.Address}"/></td>

<td><c:outvalue="${row.Landmark}"/></td>

<td><c:outvalue="${row.Trainschedule}"/></td>

<td><c:outvalue="${row.pname}"/></td>

<td><c:outvalue="${row.status}"/></td>

</tr>

</c:forEach>

</table>

</body>

</html>

