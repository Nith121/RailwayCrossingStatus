<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<%@pageimport="java.io.*,java.util.*,java.sql.*"%>

<%@pageimport="javax.servlet.http.*,javax.servlet.*"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/core"prefix="c"%><%@tagliburi="http://java.sun.com/jsp/jstl/sql"prefix="sql"%><!DOCTYPEhtml>

<html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">

<title>User Home</title>

<style>

.header {

text-align: center;

margin-bottom: 20px;

}

.link {

display: block;

margin-bottom: 10px;

}

</style>

</head>

<body>

<h2>User Home</h2>

<aclass="link"href="userhome.jsp">Home</a>

<aclass="link"href="search.jsp">Search Crossing</a>

<aclass="link"href="favorite.jsp">Favorite Crossing</a>

<sql:setDataSourcevar="snapshot"driver="com.mysql.jdbc.Driver"

url="jdbc:mysql://localhost:3306/railway"user="root"password="Anusha@2000 " />



<sql:querydataSource="${snapshot}"var="result"> SELECT * FROM adminhome;

</sql:query>



<c:forEachvar="row"items="${result.rows}"><div>

<h4>Name: <c:outvalue="${row.Name}"/></h4>

<p>Address: <c:outvalue="${row.Address}"/></p>

<p>Landmark: <c:outvalue="${row.Landmark}"/></p>

<p>Time Schedule: <c:outvalue="${row.Trainschedule}"/></p>

<p>Person In-Charge: <c:outvalue="${row.pname}"/></p>

<p>Status: <c:outvalue="${row.status}"/></p><formaction="AddToFavorite"method="POST">

<inputtype="hidden"name="itemId"value="${row.id}"/>

<inputtype="submit"value="Add to Favorite"/>

</form>

</div>

<hr/>

</c:forEach>

<aclass="link"href="login.jsp">Logot</a>

</body>

</html>

