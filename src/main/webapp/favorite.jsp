<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<%@pageimport="java.io.*,java.util.*,java.sql.*"%>

<%@pageimport="javax.servlet.http.*,javax.servlet.*"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/core"prefix="c"%><%@tagliburi="http://java.sun.com/jsp/jstl/sql"prefix="sql"%><!DOCTYPEhtml>

<html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">

<title>Favorite Crossing</title>

</head>

<body>

<h2>Favorite Crossing</h2>

<ahref="userhome.jsp">Home</a><br>

<ahref="search.jsp">Search Crossing</a><br><br>

<sql:setDataSourcevar="snapshot"driver="com.mysql.jdbc.Driver"

url="jdbc:mysql://localhost:3306/railway"user="root"password="Anusha@2000 "/>



<sql:querydataSource="${snapshot}"var="favorites"> SELECT * FROM favorites;

</sql:query>



<c:iftest="${not empty favorites.rows}"><tableborder="1"width="100%"><tr>

<th>Sr.No</th>

<th>Name</th>

<th>Address</th>

<th>Landmark</th>

<th>Time Schedule</th>

<th>Person In-Charge</th>

<th>Status</th>

</tr>

<c:forEachvar="favorite"items="${favorites.rows}"><tr>

<td><c:outvalue="${favorite.id}"/></td>

<td><c:outvalue="${favorite.Name}"/></td>

<td><c:outvalue="${favorite.Address}"/></td>

<td><c:outvalue="${favorite.Landmark}"/></td>

<td><c:outvalue="${favorite.Trainschedule}"/></td>

<td><c:outvalue="${favorite.pname}"/></td>

<td><c:outvalue="${favorite.status}"/></td>

</tr>

</c:forEach>

</table>

</c:if>

<c:iftest="${empty favorites.rows}">

<p>No favoritecrossings.</p>

</c:if>

</body>

</html>


