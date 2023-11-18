<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<%@pageimport="java.io.*,java.util.*,java.sql.*"%>

<%@pageimport="javax.servlet.http.*,javax.servlet.*"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/core"prefix="c"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/sql"prefix="sql"%>

<!DOCTYPEhtml>

<html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8"><title>Update Crossing Process</title></head>

<body>

<h2>Update Crossing Process</h2>

<sql:setDataSourcevar="snapshot"driver="com.mysql.jdbc.Driver"

url="jdbc:mysql://localhost:3306/railway"user="root"password="Anusha@2000 " />

<c:iftest="${not empty param.id}">

<sql:updatedataSource="${snapshot}">

UPDATE adminhome SET Name=?, Address=?, Landmark=?, Trainschedule=?,

pname=?, status=?

WHERE id=?

<sql:paramvalue="${param.Name}"/>

<sql:paramvalue="${param.Address}"/>

<sql:paramvalue="${param.Landmark}"/>

<sql:paramvalue="${param.Trainschedule}"/>

<sql:paramvalue="${param.pname}"/>

<sql:paramvalue="${param.status}"/>

<sql:paramvalue="${param.id}"/>

</sql:update>

<p>Update successful!</p>

</c:if>

<ahref="adminhome.jsp">Back to Admin Home</a>

</body>

</html>

