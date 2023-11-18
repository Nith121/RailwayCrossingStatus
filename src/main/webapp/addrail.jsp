<%@pagelanguage="java"contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">

<title>Add Railway Crossing</title>

</head>

<body>

<h2>Add Railway Crossing</h2>



<formaction="RailCrossing"method="POST"><table>

<tr>

<td>Name:</td>

<td><inputtype="text"name="Name"required></td>

</tr>

<tr>

<td>Address:</td>

<td><inputtype="text"name="Address"required></td>

</tr>

<tr>

<td>Landmark:</td>

<td><inputtype="text"name="Landmark"required></td>

</tr>

<tr>

<td>Time Schedule:</td>

<td><inputtype="time"name="Trainschedule"required></td>

</tr>

<tr>

<td>Person In-Charge:</td>

<td><inputtype="text"name="pname"required></td></tr>

<tr>

<td>Status:</td>

<td>

<inputtype="radio"name="status"value="open"required> open

<inputtype="radio"name="status"value="closed"required> closed

</td>

</tr>

<tr>

<td><inputtype="submit"value="Add Crossing"></td></tr>

</table>

</form>

</body>

</html>
