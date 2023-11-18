<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<%@pageimport="java.io.*,java.util.*,java.sql.*"%>

<%@pageimport="javax.servlet.http.*,javax.servlet.*"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/core"prefix="c"%><%@tagliburi="http://java.sun.com/jsp/jstl/sql"prefix="sql"%><!DOCTYPEhtml>

<html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">

<title>Delete Record</title>

</head>

<body>

<h2>Delete Record</h2>

<sql:setDataSourcevar="snapshot"driver="com.mysql.jdbc.Driver"

url="jdbc:mysql://localhost:3306/railway"user="root"password="Anusha@2000 " />



<c:iftest="${not empty param.id}">

<sql:querydataSource="${snapshot}"var="result"> SELECT * FROM adminhome WHERE id = ?

<sql:paramvalue="${param.id}"/>

</sql:query>


<c:iftest="${not empty result.rows}">

<c:forEachvar="row"items="${result.rows}">

<formaction="deleteProcess.jsp"method="POST">

<inputtype="hidden"name="id"value="${row.id}"/><labelfor="id">Record Sr.No:</label>

<inputtype="text"id="id"name="id"value="${row.id}"required><br><br><inputtype="submit"value="Confirm Delete"></form>

</c:forEach>

</c:if>

</c:if>

</body>

</html>

