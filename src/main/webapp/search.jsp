<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<%@pageimport="java.io.*, java.util.*, java.sql.*"%><%@pageimport="javax.servlet.http.*, javax.servlet.*"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/core"prefix="c"%>

<%@tagliburi="http://java.sun.com/jsp/jstl/sql"prefix="sql"%>

<!DOCTYPEhtml>

<html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">

<title>Search Crossing</title>

</head>

<body>

<h2>Search Crossing</h2>

<formaction="searchResult.jsp"method="GET">

<inputtype="text"name="keyword"placeholder="Enter keyword"/>

<inputtype="submit"value="Search"/>

</form>

</body>

</html>
